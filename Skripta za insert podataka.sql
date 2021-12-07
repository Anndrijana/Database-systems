-- JEZIK

INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Engleski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Nemacki');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Francuski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Holandski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Italijanski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Spanski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Ruski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Japanski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Kineski');
INSERT INTO SSJ.Jezik ("id_jezik", "naziv_jezik")
VALUES (next value for Jezik_SEQ, 'Norveski');

-- NIVO

INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'A1', 'Nizi pocetni nivo');
INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'A2', 'Visi pocetni nivo');
INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'B1', 'Nizi srednji nivo');
INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'B2', 'Visi srednji nivo');
INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'C1', 'Nizi napredni nivo');
INSERT INTO SSJ.Nivo ("id_nivo", "oznaka_nivo", "opis_nivo")
VALUES (next value for Nivo_SEQ, 'C2', 'Visi napredni nivo');

-- INTENZITET

INSERT INTO SSJ.Intenzitet ("id_intenzitet", "naziv_intenzitet")
VALUES (next value for Intenzitet_SEQ, 'Standardni');
INSERT INTO SSJ.Intenzitet ("id_intenzitet", "naziv_intenzitet")
VALUES (next value for Intenzitet_SEQ, 'Poluintenzivni');
INSERT INTO SSJ.Intenzitet ("id_intenzitet", "naziv_intenzitet")
VALUES (next value for Intenzitet_SEQ, 'Intenzivni');

-- VRSTA KURSA

INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Engleski Standardni A1', 3000, 1, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Engleski Poluintenzivni B1', 3500, 1, 3, 2);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Engleski Intenzivni C1', 4000, 1, 5, 3);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Nemacki Standardni A2', 3000, 2, 2, 2);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Nemacki Poluintenzivni B2', 3500, 2, 4, 2);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Nemacki Intenzivni C2', 4000, 2, 6, 3);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Francuski Standardni A1', 3000, 3, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Francuski Standardni A2', 3000, 3, 2, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Holandski Standardni A1', 3000, 4, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Holandski Poluintenzivni B1', 3500, 4, 3, 2);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Italijasnki Standardni A1', 3000, 5, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Italijasnki Intenzivni C1', 4000, 5, 5, 3);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Spanski Standardni A1', 3000, 6, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Spanski Standardni A2', 3000, 6, 2, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Ruski Standardni A1', 3000, 7, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Japanski Standardni A1', 3000, 8, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Kineski Standardni A1', 3000, 9, 1, 1);
INSERT INTO SSJ.Vrsta_kursa ("id_vk", "naziv_vk", "cena_vk", "id_jezik", "id_nivo", "id_intenzitet")
VALUES (next value for Vrsta_kursa_SEQ, 'Norveski Standardni A1', 3000, 10, 1, 1);

-- KURS

INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 1, cast('01.06.2020' as date), 20, 5, 3000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 2, cast('01.06.2020' as date), 15, 5, 3500);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 3, cast('02.06.2020' as date), 10, 5, 4000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 4, cast('02.06.2020' as date), 20, 5, 3000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 5, cast('03.06.2020' as date), 15, 5, 3500);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 6, cast('03.06.2020' as date), 10, 5, 4000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 7, cast('04.06.2020' as date), 20, 5, 3000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 8, cast('04.06.2020' as date), 20, 5, 3000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 9, cast('05.06.2020' as date), 20, 5, 3000);
INSERT INTO SSJ.Kurs ("no_kurs", "id_vk", "datum_pocetka_kurs", "kapacitet_kurs", "minimalni_broj_polaznika_kurs", "cena_kurs")
VALUES (next value for Kurs_SEQ, 10, cast('05.06.2020' as date), 15, 5, 3500);


-- ZAPOSLEN

INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '0101987710236', 'Jelena', 'Petrovic', 'Z', cast ('01.01.1987' as date), 'Mirocka 25 Bor', '0645052123','jelena.petrovic@gmail.com', cast ('06.06.2018' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '2012957810008', 'Marija', 'Nikolic', 'Z', cast('12.20.1957' as date), 'Negotinska 12 Bor', '0612858745','marija.nikolica@gmail.com', cast ('12.05.2020' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '0810955710144', 'Mirjana', 'Panic', 'Z', cast('08.10.1955' as date), 'Cerska 105 Beograd', '0667458145','mirjana.panic@gmail.com', cast ('11.14.2017' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '2509999710866', 'Dragana', 'Mitic', 'Z', cast('09.25.1999' as date), 'Petrogradska 67 Beograd', '0653258987','dragana.mitic@gmail.com', cast ('06.17.2013' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '0902986710743', 'Milovan', 'Marasevic', 'M', cast('09.02.1986' as date), 'Loznicka 89 Beograd', '0693558536','milovan.marasevic@gmail.com', cast ('05.07.2017' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '1501994710329', 'Lazar', 'Djordjevic', 'M', cast('01.15.1994' as date), 'Misarska 52 Beograd', '0647158475','lazar.djordjevic@gmail.com', cast ('11.10.2013' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '1705999710214', 'Ana', 'Pavic', 'Z', cast('05.17.1999' as date), 'Josipa Pancica 12 Smederevo', '0621558147','ana.pavic@gmail.com', cast ('01.12.2013' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '0311987710003', 'Filip', 'Nikolic', 'M', cast('03.11.1987' as date), 'Kralja Petra 1 Novi Sad', '0665258118','filip.nikolic@gmail.com', cast ('08.10.2018' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '2206998710015', 'Jelena', 'Lazarevic', 'Z', cast('06.22.1998' as date), 'Alekse Santica 53 Novi Sad', '0651258222','jelena.lazarevic@gmail.com', cast ('09.12.2019' as date), 1)
INSERT INTO SSJ.Zaposlen ("id_zap", "jmbg_zap", "ime_zap", "prz_zap", "pol_zap", "datrodj_zap", "adresa_zap", "brtel_zap", "email_zap", "datum_zap", "aktivnost_zap")
VALUES (next value for Zaposlen_SEQ, '1401967710017', 'Nebojsa', 'Nikolic', 'M', cast('01.14.1967' as date), 'Brace Jerkovic 75 Beograd', '0636958841','nebojsa.nikolic@gmail.com', cast ('05.17.2019' as date), 1)

-- SEKRETAR

INSERT INTO SSJ.Sekretar ("id_zap")
VALUES (1);
INSERT INTO SSJ.Sekretar ("id_zap")
VALUES (3);
INSERT INTO SSJ.Sekretar ("id_zap")
VALUES (5);
INSERT INTO SSJ.Sekretar ("id_zap")
VALUES (7);
INSERT INTO SSJ.Sekretar ("id_zap")
VALUES (9);

-- STRANKA

INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '2005999710147', 'Ana', 'Peric', 'Z', cast ('05.20.1999' as date), 'Narodnog Fronta 33 Kragujevac', '0652872854','ana.peric@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1408998810129', 'Milovan', 'Peric', 'M', cast('08.14.1998' as date), 'Brace Jerkovic 18 Beograd', '0642858825','milovan.peric@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1712977710144', 'Marko', 'Markovic', 'M', cast('12.17.1977' as date), 'Kraljevica Marka 109 Novi Sad', '0635958244','marko.markovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1212006710148', 'Katarina', 'Krstic', 'Z', cast('12.12.2006' as date), 'Rade Koncara 57 Beograd', '0618858131','katarina.krstic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1011986710743', 'Goran', 'Lazarevic', 'M', cast('10.11.1986' as date), 'Vojvode Stepe 17 Nis', '0645258325','goran.lazarevic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1501994710329', 'Dejan', 'Djordjevic', 'M', cast('01.15.1994' as date), 'Humska 149 Beograd', '0647158475','dejan.djordjevic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1705999710214', 'Zoran', 'Markovic', 'M', cast('05.17.1999' as date), 'Gandijeva 25 Novi Beograd', '0638958555','zoran.markovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '0206007710003', 'Anastasija', 'Mikaric', 'Z', cast('06.02.2007' as date), 'Pavla Papa 36 Novi Sad', '0645258289','anastasija.mikaric@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1109968710016', 'Ana', 'Lazarevic', 'Z', cast('09.11.1966' as date), 'Zitni Trg 48 Novi Sad', '0651258583','ana.lazarevic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1501967710268', 'Marko', 'Nikolic', 'M', cast('01.15.1967' as date), 'Bulevar Nikole Tesle 189 Novi Beograd', '0636958453','marko.nikolic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1406008710003', 'Olivera', 'Moskic', 'Z', cast('06.14.2008' as date), 'Blok 15 Novi Beograd', '0645258111','olivera.moskic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '2505010710267', 'Kristijan', 'Djordjevic', 'M', cast('05.25.2010' as date), 'Blok 10 Kikinda', '0651258481','kristijan.djordjevic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1208967710194', 'Petar', 'Panic', 'M', cast('08.12.1967' as date), 'Kralja Petra 26 Smederevo', '0636958679','petar.panic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1401997710003', 'Snezana', 'Przic', 'Z', cast('01.14.1997' as date), 'Strumicka 63 Novi Sad', '0655258364','snezana.przic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1109998710016', 'Milos', 'Nikolic', 'M', cast('09.11.1998' as date), 'Julija Gagarina 14 Novi Beograd', '0651258142','milos.nikolic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1501993710268', 'Zoran', 'Cvetkovic', 'M', cast('01.15.1993' as date), 'Tosin Bunar 2 Novi Beograd', '0636958176','zoran.cvetkovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1110990710016', 'Gordana', 'Jovanovic', 'Z', cast('10.11.1990' as date), 'Sekspirova 173 Novi Sad', '0651258794','gordana.jovanovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1409992710111', 'Srdjan', 'Tesla', 'M', cast('09.14.1992' as date), 'Ive Andrica 89 Zrenjanin', '0646958781','srdjan.tesla@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1211991710016', 'Tamara', 'Vudragovic', 'Z', cast('11.12.1991' as date), 'Cirpanova 38 Novi Sad', '0651258247','tamara.vudragovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str") 
VALUES (next value for Stranka_SEQ, '1507991710267', 'Pavle', 'Mandic', 'M', cast('07.15.1991' as date), '16. oktobra 19 Sabac', '0646958369','pavle.mandic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1109000710016', 'Vladimir', 'Cvetkovic', 'M', cast('09.11.2000' as date), 'Blok 22 Kikinda', '0651258253','vladimir.cvetkovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '2401995710268', 'Natasa', 'Nikolic', 'Z', cast('01.24.1995' as date), '12. oktobra 148 Nis', '0616958114','natasa.nikolic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1109988710039', 'Ivana', 'Peric', 'Z', cast('09.11.1988' as date), 'Prvomajska 120 Novi Sad', '0651258312','ivana.peric@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1510993710268', 'Milica', 'Popov', 'Z', cast('10.15.1993' as date), 'Milosa Crnjanskog 5 Novi Beograd', '0646658472','milica.popov@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1403998710016', 'Goran', 'Nedic', 'M', cast('03.14.1998' as date), 'Strumicka 36 Novi Sad', '0651258369','goran.nedic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '0808996710222', 'Nenad', 'Cosic', 'M', cast('08.08.1996' as date), 'Bulevar Nikole Tesle 189 Novi Beograd', '0636958201','nenad.cosic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1103968710015', 'Milica', 'Pavic', 'Z', cast('03.11.1966' as date), 'Sekspirova 10 Nis', '0651258006','milica.pavic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '2010997710268', 'Zoran', 'Maric', 'M', cast('10.20.1997' as date), 'Bulevar Nikole Pasica 122 Sabac', '0651058210','zoran.maric@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '0505993710016', 'Milos', 'Isakovic', 'M', cast('05.05.1993' as date), 'Karadjordjev Trg 55 Kragujevac', '0651258893','milos.isakovic@gmail.com')
INSERT INTO SSJ.Stranka ("id_str", "jmbg_str", "ime_str", "prz_str", "pol_str", "datrodj_str", "adresa_str", "brtel_str", "email_str")
VALUES (next value for Stranka_SEQ, '1406999710268', 'Ivana', 'Jovanovic', 'Z', cast('06.14.1999' as date), 'Drinska 20 Zrenjanin', '0655258448','ivana.jovanovic@gmail.com')

-- REGISTROVAN KORISNIK

INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk") 
VALUES (next value for Registrovan_korisnik_SEQ, 'Anastasija', 'Hristovski', 'Z', cast('12.25.1998' as date), 'anastasija.hristovski@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 2, 'Milovan', 'Peric', 'M', cast('08.14.1998' as date), 'milovan.peric@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 3, 'Marko', 'Markovic', 'M', cast('12.17.1977' as date), 'marko.markovic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Danilo', 'Popovic', 'M', cast('06.12.1978' as date), 'danilo.popovic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 4, 'Katarina', 'Krstic', 'Z', cast('12.12.2006' as date), 'katarina.krstic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 5, 'Goran', 'Lazarevic', 'M', cast('11.10.1986' as date), 'goran.lazarevic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 20, 'Pavle', 'Mandic', 'M', cast('07.15.1991' as date), 'pavle.mandic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 21, 'Vladimir', 'Cvetkovic', 'M', cast('09.11.2000' as date), 'vladimir.cvetkovic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 23, 'Ivana', 'Peric', 'Z', cast('09.11.1988' as date), 'ivana.peric@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 24, 'Milica', 'Popov', 'Z', cast('10.15.1993' as date), 'milica.popov@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "id_str", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 25, 'Goran', 'Nedic', 'M', cast('03.14.1998' as date), 'goran.nedic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Petra', 'Radonjic', 'Z', cast('08.22.2001' as date), 'petra.radonjic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Bosko', 'Milentijevic', 'M', cast('08.03.1983' as date), 'bosko.milentijevic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Ivan', 'Antanasijevic', 'M', cast('10.16.1998' as date), 'ivan.antanasijevic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Dragan', 'Kojic', 'M', cast('12.08.2002' as date), 'dragan.kojic@gmail.com')
INSERT INTO SSJ.Registrovan_korisnik ("id_rk", "ime_rk", "prz_rk", "pol_rk", "datrodj_rk", "email_rk")
VALUES (next value for Registrovan_korisnik_SEQ, 'Marta', 'Minic', 'Z', cast('02.01.1998' as date), 'ivan.antanasijevicgmail.com')


-- POTPISNIK
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (1, 112167589)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (2, 1476221238)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (3, 238167429)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (5, 381631786)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte") 
VALUES (6, 0037941694)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (7, 28009451)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (9, 28709333)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (10, 15609482)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (13, 17309451)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (14, 28709418)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (15, 15609112)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (16, 112167583)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (17, 852622123)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (18, 448167421)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (19, 380631780)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte") 
VALUES (20, 369941697)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (21, 27109452)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (22, 06909333)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (23, 23309482)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (24, 000167589)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (25, 0896221238)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (26, 108167429)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (27, 236631771)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte") 
VALUES (28, 0038941655)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (29, 15209398)
INSERT INTO SSJ.Potpisnik ("id_str", "broj_licne_karte")
VALUES (30, 45809334)

-- POLAZNIK

INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (1, 1, 'Hemijski fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (2, 2, 'Vojna akademija')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (4, 3, 'OS Branko Radicevic') 
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (7, 7, 'Medicinski fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (8, 5, 'OS Dr Jovan Cvijic') 
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (10, 10, 'Banca Intesa')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (11, 6, 'OS Ivo Andric') 
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (12, 9, 'OS Dr Jovan Cvijic') 
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (13, 13, '3D Republika')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (14, 14, 'Medicinski fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (15, 15, 'Optimizacija sajta')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (16, 16, 'Alpha bank')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (17, 17, 'KGB Nabavke')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (18, 18, 'Serbian shop')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (19, 19, 'Telenor d.o.o')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (20, 20, 'Imlek a.d')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (21, 21, 'Pravni fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (22, 22, 'Beohemija d.o.o')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (23, 23, 'Holcim')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (24, 24, 'Serbian shop')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (25, 25, 'Gradjevinski fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (26, 26, 'NIS a.d')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (27, 27, 'Deveta gimnazija')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (28, 28, 'Hemijski fakultet')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (29, 29, '3D Republika')
INSERT INTO SSJ.Polaznik ("id_str", "id_str_pot", "naziv_ustanove")
VALUES (30, 30, 'Peta gimnazija')

-- UGOVOR

INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 4, 1, 1, 3, 1, 1)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 2, 3, 3, 5, 2, 2)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 3, 3, 3, 1, 4, 3) 
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 1, 5, 5, 1, 7, 7)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 5, 6, 6, 9, 8, 5) 
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 7, 3, 3, 7, 10, 10)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 6, 3, 3, 3, 11, 6) 
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 1, 3, 3, 9, 13, 13)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 1, 2, 2, 9, 14, 14)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 2, 9, 9, 9, 15, 15)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 5, 3, 3, 9, 16, 16)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 4, 10, 10, 3, 17, 17)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 3, 10, 10, 7, 18, 18)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 1, 10, 10, 1, 19, 19)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 2, 1, 1, 1, 20, 20)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 2, 1, 1, 9, 22, 22)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 2, 2, 1, 3, 23, 23)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 5, 2, 2, 3, 24, 24)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 4, 2, 2, 3, 25, 25)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 3, 2, 2, 7, 26, 26)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3500, 3, 2, 2, 9, 27, 27)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 3, 1, 1, 9, 28, 28)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 1, 1, 1, 7, 29, 29)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 3000, 2, 1, 1, 3, 30, 30)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 4000, 1, 3, 3, 1, 30, 30)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 4000, 3, 3, 3, 3, 29, 29)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 4000, 2, 3, 3, 5, 28, 28)
INSERT INTO SSJ.Ugovor ("id_ugovor", "cena_za_polaznika_ugovor", "broj_rata_ugovor", "no_kurs", "id_vk", "id_zap", "id_str", "id_str_potpisnik")
VALUES (next value for Ugovor_SEQ, 4000, 4, 3, 3, 3, 27, 27)