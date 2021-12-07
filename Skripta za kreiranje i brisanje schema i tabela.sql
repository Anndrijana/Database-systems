-- kreiranje scheme
CREATE SCHEMA SSJ AUTHORIZATION dbo
go

-- brisanje tabela
IF OBJECT_ID('SSJ.Ugovor', 'U') IS NOT NULL DROP TABLE SSJ.Ugovor
IF OBJECT_ID('SSJ.Kurs', 'U') IS NOT NULL DROP TABLE SSJ.Kurs
IF OBJECT_ID('SSJ.Vrsta_kursa', 'U') IS NOT NULL DROP TABLE SSJ.Vrsta_kursa
IF OBJECT_ID('SSJ.Jezik', 'U') IS NOT NULL DROP TABLE SSJ.Jezik
IF OBJECT_ID('SSJ.Nivo', 'U') IS NOT NULL DROP TABLE SSJ.Nivo
IF OBJECT_ID('SSJ.Intenzitet', 'U') IS NOT NULL DROP TABLE SSJ.Intenzitet
IF OBJECT_ID('SSJ.Sekretar', 'U') IS NOT NULL DROP TABLE SSJ.Sekretar
IF OBJECT_ID('SSJ.Zaposlen', 'U') IS NOT NULL DROP TABLE SSJ.Zaposlen
IF OBJECT_ID('SSJ.Registrovan_korisnik', 'U') IS NOT NULL DROP TABLE SSJ.Registrovan_korisnik
IF OBJECT_ID('SSJ.Polaznik', 'U') IS NOT NULL DROP TABLE SSJ.Polaznik
IF OBJECT_ID('SSJ.Potpisnik', 'U') IS NOT NULL DROP TABLE SSJ.Potpisnik
IF OBJECT_ID('SSJ.Stranka', 'U') IS NOT NULL DROP TABLE SSJ.Stranka

-- kreiranje tabela
-- JEZIK

CREATE TABLE SSJ.Jezik
(
	id_jezik INT NOT NULL PRIMARY KEY,
	naziv_jezik NVARCHAR(20) NOT NULL
);

-- NIVO

CREATE TABLE SSJ.Nivo
(
	id_nivo INT NOT NULL PRIMARY KEY,
	oznaka_nivo NVARCHAR(2) NOT NULL,
	opis_nivo NVARCHAR(30) NOT NULL
);

-- INTENZITET

CREATE TABLE SSJ.Intenzitet
(
	id_intenzitet INT NOT NULL PRIMARY KEY,
	naziv_intenzitet NVARCHAR(30) NOT NULL
);

-- VRSTA KURSA

CREATE TABLE SSJ.Vrsta_kursa
(
	id_vk INT NOT NULL PRIMARY KEY,
	naziv_vk NVARCHAR(50) NOT NULL,
	cena_vk FLOAT(10) NOT NULL,
	id_jezik INT NOT NULL,
	id_nivo INT NOT NULL,
	id_intenzitet INT NOT NULL,
	CONSTRAINT FK_Vrsta_Kursa_Jezik FOREIGN KEY(id_jezik)
	REFERENCES SSJ.Jezik (id_jezik),
	CONSTRAINT FK_Vrsta_Kursa_Nivo FOREIGN KEY(id_nivo)
	REFERENCES SSJ.Nivo (id_nivo),
	CONSTRAINT FK_Vrsta_Kursa_Intenzitet FOREIGN KEY(id_intenzitet)
	REFERENCES SSJ.Intenzitet (id_intenzitet)
);

-- KURS

CREATE TABLE SSJ.Kurs
(
	no_kurs INT NOT NULL,
	id_vk INT NOT NULL,
	datum_pocetka_kurs DATE NOT NULL,
	kapacitet_kurs INT NOT NULL,
	minimalni_broj_polaznika_kurs INT NOT NULL,
	cena_kurs FLOAT(10) NOT NULL,
	CONSTRAINT PK_Kurs PRIMARY KEY (no_kurs, id_vk),
	CONSTRAINT FK_Kurs_Vrsta_Kursa FOREIGN KEY (id_vk)
	REFERENCES SSJ.Vrsta_Kursa (id_vk) 
);

-- ZAPOSLEN

CREATE TABLE SSJ.Zaposlen
(
	id_zap INT NOT NULL PRIMARY KEY,
	jmbg_zap NUMERIC CONSTRAINT DFT_Zaposlen_jmbg DEFAULT(13) NOT NULL,
	ime_zap NVARCHAR(30) NOT NULL,
	prz_zap NVARCHAR(30) NOT NULL,
	pol_zap VARCHAR(1) CHECK (UPPER(pol_zap) IN ('M','Z')) NULL,
	datrodj_zap DATE NOT NULL,
	adresa_zap VARCHAR(50) NOT NULL,
	brtel_zap VARCHAR(15) NOT NULL,
	email_zap VARCHAR(50) NULL,
	datum_zap DATE NOT NULL,
	aktivnost_zap BIT NOT NULL
);

-- SEKRETAR

CREATE TABLE SSJ.Sekretar
(
	id_zap INT NOT NULL PRIMARY KEY,
	CONSTRAINT FK_Sekretar_Zaposlen FOREIGN KEY(id_zap)
	REFERENCES SSJ.Zaposlen (id_zap)
);

-- STRANKA

CREATE TABLE SSJ.Stranka
(
	id_str INT NOT NULL PRIMARY KEY,
	jmbg_str NUMERIC CONSTRAINT DFT_Stranka_jmbg DEFAULT(13) NOT NULL,
	ime_str NVARCHAR(30) NOT NULL,
	prz_str NVARCHAR(30) NOT NULL,
	pol_str VARCHAR(1) CHECK (UPPER(pol_str) IN ('M','Z')) NULL,
	datrodj_str DATE NOT NULL,
	adresa_str VARCHAR(50) NOT NULL,
	brtel_str VARCHAR(15) NOT NULL,
	email_str VARCHAR(50) NOT NULL
);

-- REGISTROVAN KORISNIK

CREATE TABLE SSJ.Registrovan_korisnik
(
	id_rk INT NOT NULL PRIMARY KEY,
	id_str INT NULL,
	ime_rk NVARCHAR(30) NOT NULL,
	prz_rk NVARCHAR(30) NOT NULL,
	pol_rk VARCHAR(1) CHECK (UPPER(pol_rk) IN ('M','Z')) NULL,
	datrodj_rk DATE NULL,
	email_rk VARCHAR(50) NOT NULL,
	CONSTRAINT FK_Registrovan_korisnik_Stranka FOREIGN KEY (id_str)
	REFERENCES SSJ.Stranka (id_str) 
);

-- POTPISNIK

CREATE TABLE SSJ.Potpisnik
(
	id_str INT NOT NULL PRIMARY KEY,
	broj_licne_karte INT NOT NULL,
	CONSTRAINT FK_Potpisnik_Stranka FOREIGN KEY (id_str)
	REFERENCES SSJ.Stranka (id_str) 
);

-- POLAZNIK

CREATE TABLE SSJ.Polaznik
(
	id_str INT NOT NULL PRIMARY KEY,
	id_str_pot INT NOT NULL,
	naziv_ustanove NVARCHAR(20) NULL,
	CONSTRAINT FK_Polaznik_Stranka FOREIGN KEY (id_str)
	REFERENCES SSJ.Stranka (id_str),
	CONSTRAINT FK_Polaznik_Potpisnik FOREIGN KEY (id_str_pot)
	REFERENCES SSJ.Potpisnik (id_str) 
);

-- UGOVOR

CREATE TABLE SSJ.Ugovor
(	
	id_ugovor INT NOT NULL PRIMARY KEY,
	cena_za_polaznika_ugovor FLOAT(10) NOT NULL,
	broj_rata_ugovor INT CHECK (broj_rata_ugovor in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)) NOT NULL,
	no_kurs INT NOT NULL,
	id_vk INT NOT NULL,
	id_zap INT NOT NULL,
	id_str INT NOT NULL,
	id_str_potpisnik INT NOT NULL,
	CONSTRAINT FK_Ugovor_Kurs FOREIGN KEY(no_kurs, id_vk)
	REFERENCES SSJ.Kurs (no_kurs, id_vk),
	CONSTRAINT FK_Ugovor_Sekretar FOREIGN KEY(id_zap)
	REFERENCES SSJ.Sekretar (id_zap),
	CONSTRAINT FK_Ugovor_Polaznik FOREIGN KEY(id_str)
	REFERENCES SSJ.Stranka (id_str),
	CONSTRAINT FK_Ugovor_Potpisnik FOREIGN KEY(id_str_potpisnik)
	REFERENCES SSJ.Stranka (id_str) 
);

-- kreiranje sekvenci
CREATE SEQUENCE Jezik_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Nivo_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Intenzitet_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Vrsta_kursa_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Kurs_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Zaposlen_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Stranka_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Registrovan_korisnik_SEQ as int
start with 1
increment by 1;

CREATE SEQUENCE Ugovor_SEQ as int
start with 1
increment by 1;

-- brisanje sekvenci
DROP SEQUENCE Jezik_SEQ;
DROP SEQUENCE Nivo_SEQ;
DROP SEQUENCE Intenzitet_SEQ;
DROP SEQUENCE Vrsta_kursa_SEQ;
DROP SEQUENCE Kurs_SEQ;
DROP SEQUENCE Zaposlen_SEQ;
DROP SEQUENCE Stranka_SEQ;
DROP SEQUENCE Registrovan_korisnik_SEQ;
DROP SEQUENCE Ugovor_SEQ;

-- brisanje scheme
DROP SCHEMA SSJ;