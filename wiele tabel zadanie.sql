CREATE DATABASE wiele_tabel_zadanie;
USE wiele_tabel_zadanie;

CREATE TABLE `agents` (
`AGENT_CODE` varchar(6) PRIMARY KEY NOT NULL DEFAULT '',
`AGENT_NAME` varchar(40) DEFAULT NULL,
`WORKING_AREA` varchar(35) DEFAULT NULL,
`COMMISSION` decimal(10,2) DEFAULT NULL,
`PHONE_NO` varchar(15) DEFAULT NULL,
`COUNTRY` varchar(25) DEFAULT NULL
);

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '\r'),
('A003', 'Alex', 'London', '0.13', '075-12458969', '\r'),
('A008', 'Alford', 'New York', '0.12', '044-25874365', '\r'),
('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '\r'),
('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '\r'),
('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '\r'),
('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '\r'),
('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '\r'),
('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '\r'),
('A006', 'McDen', 'London', '0.15', '078-22255588', '\r'),
('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '\r'),
('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '\r');

SELECT * FROM agents;


CREATE TABLE `customer` (
`CUST_CODE` varchar(6) PRIMARY KEY NOT NULL,
`CUST_NAME` varchar(40) NOT NULL,
`CUST_CITY` varchar(35) DEFAULT NULL,
`WORKING_AREA` varchar(35) NOT NULL,
`CUST_COUNTRY` varchar(20) NOT NULL,
`GRADE` decimal(10,0) DEFAULT NULL,
`OPENING_AMT` decimal(12,2) NOT NULL,
`RECEIVE_AMT` decimal(12,2) NOT NULL,
`PAYMENT_AMT` decimal(12,2) NOT NULL,
`OUTSTANDING_AMT` decimal(12,2) NOT NULL,
`PHONE_NO` varchar(17) NOT NULL,
`AGENT_CODE` varchar(6) DEFAULT NULL
);

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011'),
('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

SELECT * FROM customer;

CREATE TABLE `daysorder` (
`ORD_NUM` decimal(6,0) NOT NULL,
`ORD_AMOUNT` decimal(12,2) NOT NULL,
`ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
`ORD_DATE` date NOT NULL,
`CUST_CODE` varchar(6) NOT NULL,
`AGENT_CODE` varchar(6) NOT NULL,
`ORD_DESCRIPTION` varchar(60) NOT NULL
);

INSERT INTO `daysorder` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD\r'),
('200114', '3500.00', '1500.00', '2008-08-15', 'C00002', 'A008', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200132', '4000.00', '1500.00', '2008-08-15', 'C00013', 'A013', 'SOD\r');


CREATE TABLE `orders` (
`ORD_NUM` decimal(6,0) PRIMARY KEY NOT NULL,
`ORD_AMOUNT` decimal(12,2) NOT NULL,
`ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
`ORD_DATE` date NOT NULL,
`CUST_CODE` varchar(6) NOT NULL,
`AGENT_CODE` varchar(6) NOT NULL,
`ORD_DESCRIPTION` varchar(60) NOT NULL
);

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-01-08', 'C00015', 'A003', 'SOD\r'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010', 'SOD\r'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD\r'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD\r'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD\r'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD\r'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD\r'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD\r'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD\r'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD\r'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013', 'SOD\r'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD\r'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD\r'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD\r'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD\r'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD\r'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD\r'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD\r'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD\r'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD\r'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD\r'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD\r'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD\r'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD\r'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD\r'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD\r'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD\r'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD\r'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD\r'),
('200132', '4000.00', '2000.00', '2008-08-15', 'C00013', 'A012', 'SOD\r');

-- Wprowadzenie
-- a. Napisz kwerendę, która zwróci wszystkich klientów z zamówieniami zrealizowanymi w dniu 2008-01-08
-- okej, pierwsze, na co zwróciłam uwagę, to że zamówienia znajcują się w dwóch tabelach (nie powtarzają się), 
-- więc należy je polaczyć takim zwykłym ordynarnym union, będzie dobrze, bo kolumny i format danych się zgadzają 
-- robię z tego nową tabelę, bo ona się przyda pózniej
use wiele_tabel_zadanie;
create table all_orders
	(select * from daysorder
	union
	select * from orders);

select cust_code 
	from all_orders
    where ord_date = '2008-01-08';
-- Odp: jest tylko jeden taki i ma numer C00015

-- b. Napisz kwerendę, która zwróci listę agentów oraz klientów wraz z ich obszarem działalności, którzy należą do tego samego obszaru
-- serio nie bardzo rozumiem, o co chodzi w tym zadaniu.
-- wyświetlić jedną listę, na której będa pomieszani agenci i costomersi? (union)
-- wyświetlić klientów oraz przypisanych do nich agentów, czy odwrotnie?
-- w sensie czy na liście mają być wszyscy klienci, czy wszyscy agenci?
-- 'którzy należą do tego samego obszaru' - tym fragmentem polecenia nie będę się w ogóle przejmować, bo on jest bez sensu.
-- jeśli jakiś klient należy do agenta, to znaczy, że jest w jego obszarze - sprawdziłam to też w danych - working area agentów i customerów pokrywają się w 100%.
-- poniżej moja propozycja na interpretację polecenia, bedę wdzięczna za informację, jak miało być :P 
use wiele_tabel_zadanie;
select cust_code, cust_name, customer.agent_code, agent_name, agents.working_area, customer.working_area
from customer
inner join agents -- albo left join
on customer.agent_code = agents.agent_code;

-- INNER JOIN
-- a. Wyszukaj listę klientów, którzy podjęli współpracę z agentami spoza swojego obszaru działalności oraz tymi, których prowizja jest powyżej 12%; kolumna z nazwą pośrednika powinna mieć nazwę „Salesman”
-- co do pierwszego podpunktu - j.w. sprawdziłam, że nie ma takich klientów, którzy mają obszar działania inny niż agenci, 
-- do których są przypisani, chyba że błędnie to sprawdziłam, to proszę o korektę.
-- założywszy jednak, że wynik pierwszej części polecenia byłby zerowy, wykonam tylko drugą część polecenia, czyli lista klientów, których agenci 
-- mają prowizję powyżej 12%

select cust_code, cust_name, customer.agent_code, agent_name as salesman, commission
from customer
inner join agents
on customer.agent_code = agents.agent_code
where commission > 0.12;

-- b. Wyszukaj szczegóły dot. Zamówień: nr zamówienia, datę, kwotę, klienta (nazwa kolumny powinna być „Customer Name”) oraz agenta (w tym wypadku nazwa kolumny to „Salesman”), który pracuje dla tego klienta oraz jego prowizję od zamówienia
select ord_num, ord_date, ord_amount, cust_name as 'Customer name', agent_name as Salesman, commission
from all_orders
inner join customer
    on customer.agent_code = all_orders.agent_code
inner join agents
	on agents.agent_code = all_orders.agent_code;

-- LEFT JOIN
-- a. Wyszukaj listę - posortowaną rosnąco wg kodu klienta (jego id) – klientów pracujących 
-- zarówno indywidualnie, jak również za pośrednictwem pośredników (nazwij kolumnę zawierającą 
-- nazwy pośredników jako „Salesman”), wyszukaj również ich obszar działalności

select cust_code, customer.agent_code, agents.agent_name as Salesman, customer.working_area
from customer
left join agents
on customer.agent_code = agents.agent_code
order by cust_code;
-- według mnie w danych nie ma klientów bez przypisanych pośredników

-- RIGHT JOIN
-- a. Wyszukaj listę pośredników pracujących dla jednego bądź więcej klientów lub takich, 
-- którzy jeszcze nie podjęli współpracy z żadnym klientem, posortuj listę rosnąco wg kolumny 
-- kodu pośrednika (agenta); nazwij kolumnę zawierającą nazwy pośredników jako „Salesman”, 
-- wyszukaj również ich obszar działalności
select agents.agent_code, agents.agent_name as Salesman, count(cust_code) as customer_number, agents.working_area
from customer
right join agents
on customer.agent_code = agents.agent_code
group by agent_code
order by agent_code;

-- CROSS JOIN
-- a. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa.
select agents.agent_code, agents.agent_name, customer.cust_code, customer.cust_name
from agents
cross join customer;

-- b. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa, 
-- ale tylko jeżeli pośrednik jest z tego samego obszaru co klient.
select agents.agent_code, agents.agent_name, agents.working_area, customer.cust_code, customer.cust_name, customer.working_area
from agents
cross join customer
where agents.working_area = customer.working_area;

-- c. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa, 
-- ale tylko jeżeli pośrednik jest z innego obszaru niż klient, a klient posiada swoją własną ocenę (‘grade’)
select agents.agent_code, agents.agent_name, agents.working_area, customer.cust_code, customer.cust_name, customer.working_area, grade
from agents
cross join customer
where agents.working_area != customer.working_area and grade is not null;

-- UNION
-- a. Wyszukaj wszystkich pośredników (ich kod – nazwij kolumne „ID” oraz nazwa agenta); 
-- przypisz im wartość ‘Salesman’ w kolumnie o nazwie „Rodzaj”) oraz klientów – ich ID i nazwa 
-- (wartość ‘Customer’ w kolumnie „Rodzaj”) zlokalizowanych w Londynie
select agent_code as id, agent_name, "salesman" as rodzaj
from agents
where working_area = "London"
union
select cust_code, cust_name, "customer" as rodzaj
from customer
where working_area = "London";

-- b. Napisz kwerendę, która zwróci raport pokazujący, który pośrednik przyjął największe i 
-- najmniejsze zamówienia na każdy dzień
-- wiem, że to rozwiązanie nie zawiera union, ale ono mi tu w ogóle nie pasowało, więc sorry ;)
with 
a as
	(select ord_date, min(ord_amount) as min, agent_code
		from all_orders
	group by ord_date
	order by ord_date),
b as
	(select ord_date, max(ord_amount) as max, agent_code
		from all_orders
	group by ord_date
	order by ord_date)
select a.ord_date, min, a.agent_code, max, b.agent_code from a
inner join b
on a.ord_date = b.ord_date;

-- WITH
-- a. Wyszukaj pośrednika w Londynie z prowizją powyżej 14% - nazwij widok „londonstaff”
with londonstuff as
	(select agent_name, working_area, commission
    from agents
    where working_area = 'London' and commission > 0.14)
select * from londonstuff;

-- b. Utwórz widok „gradecount”, aby uzyskać liczbę klientów dla każdej oceny (‘grade’)
with gradecount as
	(select count(*) as num, grade
    from customer
    group by grade
    order by grade)
select * from gradecount;

-- c. Utwórz widok (o nazwie „total_per_dzien”) do śledzenia liczby klientów, średniej kwoty zamówień oraz ogólnej sumy zamówień na każdy dzień
use wiele_tabel_zadanie;
with total_per_dzien as
	(select ord_date, count(distinct cust_code) as liczba_klientow, round(avg(ord_amount),2) as srednia_wartosc, sum(ord_amount) as suma
    from all_orders
    group by ord_date
    order by ord_date)
select * from total_per_dzien;
