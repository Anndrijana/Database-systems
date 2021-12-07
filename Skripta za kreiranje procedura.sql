-- 1. procedura

IF OBJECT_ID('SSJ.EmailRK','P') IS NOT NULL
DROP PROC SSJ.EmailRK
GO
CREATE PROC SSJ.EmailRK
AS
BEGIN

SET NOCOUNT ON;
DECLARE @email_rk AS NVARCHAR(50);

DECLARE email_cursor CURSOR FOR
	SELECT email_rk
	FROM SSJ.Registrovan_korisnik
	FOR UPDATE;

OPEN email_cursor;
FETCH NEXT FROM email_cursor INTO @email_rk
WHILE @@FETCH_STATUS=0
	BEGIN

		IF (CHARINDEX('@',@email_rk)=0 AND @email_rk != 'Email je neispravan!')
		BEGIN
			UPDATE SSJ.Registrovan_korisnik
			SET email_rk = 'Email je neispravan!'
			where email_rk = @email_rk
		END

		FETCH NEXT FROM email_cursor INTO @email_rk
	END;
CLOSE email_cursor;
DEALLOCATE email_cursor;
END;
GO

--Provera procedure
EXEC SSJ.EmailRK
GO

select *
from SSJ.Registrovan_korisnik

-- 2. procedura

	CREATE PROC SSJ.neinteraktivniKorisnici
	AS
	BEGIN
	declare dobaviNeinteraktivne CURSOR  FOR
					SELECT ime_rk
					FROM SSJ.Registrovan_korisnik
					where id_str=null
					FOR UPDATE OF ime_rk;
	declare @ime as varchar(20);
	set nocount on;
	OPEN dobaviNeinteraktivne;
	FETCH NEXT FROM dobaviNeinteraktivne INTO @ime;
	WHILE @@FETCH_STATUS = 0 
		BEGIN
			UPDATE SSJ.Registrovan_korisnik SET ime_rk = @ime + ' X' WHERE CURRENT OF dobaviNeinteraktivne;
			FETCH NEXT FROM dobaviNeinteraktivne INTO @ime;
		END;
	CLOSE dobaviNeinteraktivne
	DEALLOCATE dobaviNeinteraktivne
	SET NOCOUNT OFF
	return; 
	END

-- Provera procedure	
execute SSJ.neinteraktivniKorisnici

select *
from SSJ.Registrovan_korisnik
