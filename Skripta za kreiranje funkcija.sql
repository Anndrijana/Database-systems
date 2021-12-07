-- 1. funkcija

IF OBJECT_ID('SSJ.VratiNaziv', 'FN') IS NOT NULL
	DROP FUNCTION SSJ.VratiNaziv;
GO
CREATE FUNCTION SSJ.VratiNaziv
(
	@no_kurs as int
)
RETURNS varchar(50)
AS
BEGIN
	declare @naziv as varchar(50);
	set @naziv = (SELECT naziv_vk 
					FROM SSJ.Vrsta_kursa vk inner join SSJ.Kurs k on (vk.id_vk=k.id_vk)
					WHERE no_kurs=@no_kurs);
	RETURN (@naziv);
END;
go

-- poziv funkcije:
print 'Naziv kursa je: ' + dbo.VratiNaziv(3);
go

-- 2. funkcija

CREATE FUNCTION SSJ.mesecnaRata (@id_ugovor int,@no_kurs int) returns numeric(10,2)
as
begin
	
	declare @cena as  real;
	declare @broj_rata as int;
	declare @broj_ugovora as int;
	declare @cena_meseca as real;


	declare cur_ugovor cursor for
	select u.broj_rata_ugovor,u.cena_za_polaznika_ugovor
	from SSJ.Ugovor u
	where u.no_kurs = @no_kurs and u.id_ugovor = @id_ugovor;
	
	set @broj_ugovora = (select count(*) 
					from [SSJ].Ugovor u 
					where u.no_kurs = @no_kurs and u.id_ugovor = @id_ugovor);
	--return @broj_ugovora;
	if @broj_ugovora > 0
	begin
		open cur_ugovor;
		fetch next from cur_ugovor
		into @broj_rata,@cena;

		while @@FETCH_STATUS = 0
		begin
			set @cena_meseca = @cena/@broj_rata;
			
			return @cena_meseca;
		end;
		close cur_kurs;
		deallocate cur_kurs;
		
	end;

	
	return 0;
	
end;

-- poziv funkcije:
print SSJ.mesecnaRata(29, 3);

select *
from SSJ.Ugovor


