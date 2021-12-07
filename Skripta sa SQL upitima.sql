-- 1. UPIT

select jmbg_zap as "JMBG", ime_zap as "Ime", prz_zap as "Prezime", pol_zap as "Pol", datrodj_zap as "Datum rodjenja"
from SSJ.Zaposlen z inner join SSJ.Sekretar s on (z.id_zap=s.id_zap)
where aktivnost_zap in (select aktivnost_zap from SSJ.Zaposlen where aktivnost_zap !=0);

-- 2. UPIT

select ime_str as "Ime polaznika", prz_str as "Prezime polaznika", year(datrodj_str) as "Godina rodjenja"
from SSJ.Stranka s inner join SSJ.Polaznik p on (s.id_str=p.id_str)
where datepart(yyyy,getdate()) - year(datrodj_str) < 18;

-- 3. UPIT

select kurs.no_kurs as "ID kursa", vk.naziv_vk as "Naziv kursa", count(p.id_str) as "Broj polaznika"
from SSJ.Kurs kurs inner join SSJ.Ugovor ugovor  on (ugovor.no_kurs=kurs.no_kurs)
inner join SSJ.Vrsta_kursa vk on (vk.id_vk=kurs.id_vk)
inner join SSJ.Polaznik p on (ugovor.id_str=p.id_str)
where kurs.cena_kurs >= (select avg(kurs1.cena_kurs) from SSJ.Kurs kurs1)
group by kurs.no_kurs, vk.naziv_vk
order by count(p.id_str) asc;

-- 4. UPIT
	
select str.*, p.naziv_ustanove as "Naziv ustanove", upper(i.naziv_intenzitet) as "Naziv intenziteta"
from SSJ.Stranka str inner join SSJ.Polaznik p on (str.id_str = p.id_str) inner join SSJ.Ugovor ugovor on (ugovor.id_str=p.id_str)
inner join SSJ.Vrsta_kursa vk on (ugovor.id_vk = vk.id_vk ) 
inner join SSJ.Intenzitet i on (vk.id_intenzitet = i.id_intenzitet ) 
where i.naziv_intenzitet like 'Standardni';

-- 5. UPIT

select distinct zaposlen.email_zap as "Email" from SSJ.Zaposlen zaposlen,SSJ.Sekretar sekretar
where zaposlen.id_zap=(select sekretar.id_zap from SSJ.Ugovor ugovor inner join SSJ.Kurs kurs on (ugovor.no_kurs=kurs.no_kurs) 
inner join SSJ.Polaznik polaznik on (ugovor.id_str=polaznik.id_str)
inner join SSJ.Sekretar sekretar on (ugovor.id_zap=sekretar.id_zap)
where (kurs.datum_pocetka_kurs between CAST('01-01-2020' AS date) and CAST('01-31-2020' AS 	date)) and
(polaznik.id_str = (select id_str from SSJ.Stranka where ime_str = 'Ana' and prz_str = 'Peric')));































