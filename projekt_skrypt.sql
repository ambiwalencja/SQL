-- 1. Stwórz Bazę „Sklep odzieżowy”
create database sklep_odziezowy;
use sklep_odziezowy;

-- 2. Utwórz tabelę „Producenci” z kolumnami:
create table producenci (
id_producenta int primary key,
nazwa_producenta text not null,
adres text,
nip bigint unique,
data_umowy date
);

-- 3. Utwórz tabelę „Produkty” z kolumnami:
create table produkty (
id_produktu int primary key,
id_producenta int not null,
nazwa_produktu text not null,
opis_produktu text,
cena_netto_zakup decimal(10,2), -- liczba 10-cyfrowa, z 2 miejscami po przecinku
cena_brutto_zakup decimal(10,2),
cena_netto_sprzedaz decimal(10,2),
cena_brutto_sprzedaz decimal(10,2),
vat int,
CONSTRAINT producent_fk FOREIGN KEY (id_producenta) REFERENCES producenci(id_producenta)
);

-- 5. Utwórz tabelę „Klienci” z kolumnami:
create table klienci (
id_klienta int primary key,
id_zamowienia int,
imie text not null,
nazwisko text not null,
adres text
);

-- 4. Utwórz tabelę „Zamówienia” z kolumnami:
create table zamowienia (
id_zamowienia int primary key,
id_klienta int not null,
id_produktu int not null,
data_zamowienia date default "2022-07-01",
CONSTRAINT produkt_fk foreign key (id_produktu) references produkty(id_produktu),
CONSTRAINT klient_fk foreign key (id_klienta) references klienci(id_klienta)
);


-- 6. Połącz tabele ze sobą za pomocą kluczy obcych:
-- Produkty – Producenci; Zamówienia – Produkty; Zamówienia - Klienci:
-- wykonane podczas tworzenia

-- 7. Każdą tabelę uzupełnij danymi wg:
-- Tabela „Producenci” – 4 pozycje
INSERT INTO producenci 
VALUES 
(1, 'Abibas', 'Szwecja', '84763894583','2020-01-02'),
(2, 'Vesrace', 'Poznań', '32985793848347','2011-10-20'),
(3, 'Kobuta', 'Cały świat', '98347093498','1939-09-17'),
(4, 'Calvim Klain', 'Warszawa', '238490459304','2021-06-13');
select * from producenci;
-- Tabela „Produkty” – 20 pozycji
INSERT INTO produkty
VALUES
(1, 2, "torebka", "ze skóry wężowej", 50, 61.5, 92.25, 113.46, 23), 
(2, 4, "bluza", "ciepła. wygodna", 47, 57.81, 86.75, 106.65, 23),
(3, 3, "klapki zwykłe", "kultowe", 13, 15.99, 23.95, 29.50, 23),
(4, 4, "spódnica", "długa. przewiewna. elegancka", 57, 70.11, 105.16, 129.35, 23),
(5, 3, "klapki brokatowe", "na imprezę idealne", 39, 42.12, 63.18, 68.23, 8),
(6, 1, "koszulka", NULL, 20, 24.6, 36.9, 45.38, 23),
(7, 2, "marynarka", "w panterkę", 70, 86.1, 129.15, 158.85, 23),
(8, 1, "spodenki", "sportowe", 21, 25.83, 38.75, 47.65, 23),
(9, 1, "skarpety", "super pachnące", 16, 19.68, 29.52, 36.30, 23),
(10, 2, "spodnie", "do garnituru w sam raz", 63, 68.04, 102.06, 110.22, 8),
(11, 3, "klapko-sandały", "na wycieczkę", 45, 55.35, 83.05, 102.15, NULL),
(12, 3, "klapki turbo", "w kosmos", 46, 56.58, 84.87, 104.39, 23),
(13, 2, "koszula", "elegancka koszula", 60, 73.8, 110.7, 136.16, 23),
(14, 4, "płaszcz zimowy", "na zimę", 100, 123, 184.5, 226.95, 23),
(15, 3, "klapki na koturnie", "do przyszpanowania", 23, 24.84, 37.26, 40.24, 8),
(16, 2, "sukienka", "bardzo sexy", 35, 43.05, 64.57, 79.42, 23),
(17, 1, "adidasy", "pierwszej klasy", 140, 172.2, 258.3, 317.70, 23),
(18, 2, "majtki", "warte swojej ceny", 37, 45.51, 68.26, 83.96, 23),
(19, 4, "kapelusz", "dla prawdziwej damy", 90, 110.7, 166.05, 204.24, 23),
(20, 4, "rękawiczki", "dla prawdziwego dżentelmena", 50, 61.5, 92.25, 113.46, 23);
select * from produkty;

-- najpierw klienci, bo tabela zamówienia odwołuje się do klientów
-- Tabela „Klienci” – 10 pozycji
INSERT INTO klienci
VALUES
(1,2,"zdzisiek","marynowski","toruń"),
(2,6,"mirka","kowalewska","ostrów mazowiecka"),
(3,8,"lucyna","pieniążek","poznań"),
(4,1,"roman","stajenny","warszawa"),
(5,7,"barbara","trymś","bydgoszcz"),
(6,10,"wiesiek","poniatowski","radom"),
(7,9,"tadzio","krzesłowski","wrocław"),
(8,5,"anka","włóczykij","kraków"),
(9,11,"pippi","langstrumpf","warszawa"),
(10,3,"jadzia","mackiewicz","konstancin");
select * from klienci;

-- Tabela „Zamówienia” – 10 pozycji
INSERT INTO zamowienia
VALUES
(1,4,6,"2022-07-25"),
(2,1,12,"2022-07-07"),
(3,10,18,"2022-08-26"),
(4,6,12,"2022-07-16"),
(5,8,8,"2022-08-21"),
(6,2,11,NULL),
(7,5,13,"2022-08-06"),
(8,3,19,"2022-07-06"),
(9,7,5,"2022-08-21"),
(10,6,1,"2022-07-11");
select * from zamowienia;

-- 8. Wyświetl wszystkie produkty z wszystkimi danymi od producenta który znajduje się na pozycji 1 w tabeli „Producenci”
select * from produkty
where id_producenta = 1;

-- 9. Posortuj te produkty alfabetycznie po nazwie
select * from produkty
where id_producenta = 1
order by nazwa_produktu;
-- Odpowiedz: mamy w kolejności adidasy, koszulkę, skarpety, spodenki.

-- 10. Wylicz średnią cenę za produktu od producenta z pozycji 1
select avg(cena_brutto_sprzedaz) from produkty
where id_producenta = 1;
-- Odp: 111.7575

-- 11. Wyświetl dwie grupy produktów tego producenta:
-- Połowa najtańszych to grupa: „Tanie”
-- Pozostałe to grupa: „Drogie”

SET @row_num = (select COUNT(*) from produkty where id_producenta = 1) div 2;
PREPARE STMT FROM
'with temp1 AS
	(SELECT max(cena_brutto_sprzedaz) as mediana FROM
		(SELECT cena_brutto_sprzedaz FROM produkty
		where id_producenta = 1
		ORDER BY cena_brutto_sprzedaz
		limit ?) as temp2
	)
select id_produktu, nazwa_produktu, cena_brutto_sprzedaz,
case 
	when cena_brutto_sprzedaz <= mediana then "Tanie"
	when cena_brutto_sprzedaz > mediana then "Drogie"
	end as taniosc
from (select * from produkty
	CROSS join temp1) as temp3
where id_producenta = 1';
EXECUTE STMT USING @row_num;


-- 12. Wyświetl produkty zamówione wyświetlając tylko ich nazwę
select distinct nazwa_produktu from produkty
right join zamowienia
on produkty.id_produktu = zamowienia.id_produktu;
-- Odp: torebka, klapki brokatowe, koszulka, spodenki, klapko-sandały, klapki turbo, koszula, majtki, kapelusz

-- 13. Wyświetl wszystkie produkty zamówione – ograniczając wyświetlanie do 5 pozycji
select * from produkty
right join zamowienia
on produkty.id_produktu = zamowienia.id_produktu
limit 5;

-- 14. Policz łączną wartość wszystkich zamówień
select sum(cena_brutto_sprzedaz) from zamowienia
left join produkty
on produkty.id_produktu = zamowienia.id_produktu;
-- Odp: ok 1010.01

-- 15. Wyświetl wszystkie zamówienia wraz z nazwą produktu sortując je wg daty od najstarszego do najnowszego
select id_zamowienia, zamowienia.id_produktu, nazwa_produktu, data_zamowienia from zamowienia
left join produkty
on produkty.id_produktu = zamowienia.id_produktu
order by data_zamowienia;
-- Odp: najstarsze 2022-07-06, najnowsze 2022-08-26 

-- 16. Sprawdź czy w tabeli produkty masz uzupełnione wszystkie dane – wyświetl pozycje dla których brakuje danych
select * from produkty
where id_produktu is null 
	or id_producenta is null
    or nazwa_produktu is null
    or opis_produktu is null
    or cena_netto_zakup is null
    or cena_brutto_zakup is null
    or cena_netto_sprzedaz is null
    or cena_brutto_sprzedaz is null
    or vat is null;

-- 17. Wyświetl produkt najczęściej sprzedawany wraz z jego ceną
select nazwa_produktu, cena_brutto_sprzedaz from zamowienia
inner join produkty
on produkty.id_produktu = zamowienia.id_produktu
group by zamowienia.id_produktu
order by count(zamowienia.id_produktu) desc
limit 1;
-- Odp: klapki turbo, cena 104.39
-- ale może jest jeszcze jakiś lepszy sposob na to, np z funkcją max?

-- 18. Znajdź dzień w którym najwięcej zostało złożonych zamówień
select data_zamowienia from zamowienia
group by data_zamowienia
order by count(data_zamowienia) desc
limit 1;

-- Odp: 2022-08-21
-- tutaj zastosowałam tę samą logikę co powyżej i też nie jestem pewna, czy to najlepszy sposób
-- okej, drugi sposób (wzięty stąd: https://www.w3resource.com/sql/aggregate-functions/max-count.php )
select data_zamowienia from zamowienia
group by data_zamowienia
having count(data_zamowienia) = 
	(select max(liczba) from 
		(select data_zamowienia, count(data_zamowienia) as liczba from zamowienia
        group by data_zamowienia) as date_groups
	);