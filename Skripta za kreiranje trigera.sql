-- 1. triger

	create trigger Trg_Ugovor_Kurs_INS on SSJ.Ugovor for insert
	as
	begin
	declare @no_kurs int;
	declare @kapacitet int;
	declare @br_popunjenih_mesta int;
	select @no_kurs = no_kurs from inserted;

	select @kapacitet = kapacitet_kurs
	from SSJ.Kurs
	where no_kurs = @no_kurs;

	select @br_popunjenih_mesta = count(*)
	from SSJ.Ugovor
	where no_kurs = @no_kurs;

	if (@kapacitet < @br_popunjenih_mesta)
	begin
		print 'Ne mozete formirati ugovor za trazeni kurs jer su sva mesta popunjena!';
		Rollback;
	end;
	end;

-- Provera trigera:
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 4000, 5, 3, 3, 1, 26, 26)


	
-- 2. triger

	CREATE TRIGGER SSJ.dizanjeCene
	ON SSJ.Kurs
	AFTER UPDATE  
	AS
	BEGIN
	

	IF @@ROWCOUNT = 0 RETURN; 
	SET NOCOUNT ON

	declare @datumPocetka as date;
	declare @no_kurs as int;

	IF UPDATE(cena_kurs)
		BEGIN
			set @datumPocetka = (Select i.datum_pocetka_kurs from inserted i )
			if @datumPocetka between CAST('03-15-2020' as date) and cast ('05-15-2020' as date)
				set @no_kurs = (select i.no_kurs from inserted i);
				update SSJ.Kurs
				set cena_kurs= (select d.cena_kurs from deleted d)
				where no_kurs = @no_kurs;
				
				--return;
				
		END

	SELECT * FROM inserted;

	SELECT * FROM deleted;

	PRINT 'After trigger';
	END

-- Provera trigera:
	UPDATE SSJ.Kurs
	SET cena_kurs = 400
	where datum_pocetka_kurs ='06-04-2020'
