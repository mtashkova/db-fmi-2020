use movies;

--1--
--INSERT INTO MOVIESTAR(NAME, BIRTHDATE) VALUES ('Nicole Kidman','1967-06-20');

--2--
--DELETE FROM MOVIEEXEC WHERE NETWORTH<30000000;

--3--
--DELETE FROM MOVIESTAR WHERE ADDRESS IS NULL;

USE PC;
--4--
--INSERT INTO PRODUCT VALUES ('C', '1100', 'PC');
--INSERT INTO PC VALUES (12,'1100',2400,2048,500,'52x',299); 

--5--
--DELETE FROM PC WHERE MODEL LIKE '1100';

--6--
--DELETE FROM LAPTOP WHERE MODEL IN ( SELECT MODEL FROM PRODUCT WHERE TYPE = 'Laptop' 
--AND MAKER NOT IN (SELECT MAKER FROM PRODUCT WHERE TYPE = 'Printer'));

--7--
--UPDATE PRODUCT
--SET maker='A'
--WHERE maker = 'B';

--8--
--UPDATE PC SET PRICE=PRICE/2, HD = HD + 20; 

USE SHIPS;

--10--
INSERT INTO CLASSES VALUES ('Nelson', 'bb', 'Gt.Britain',9,16,34000);
INSERT INTO SHIPS VALUES ('Nelson', 'Nelson', 1927);
INSERT INTO SHIPS VALUES ('Rodney', 'Nelson', 1927);

--11--
DELETE FROM SHIPS 
WHERE NAME IN (SELECT SHIP FROM OUTCOMES WHERE RESULT = 'sunk');

--12--
UPDATE CLASSES SET BORE = BORE * 2.5, 
DISPLACEMENT = DISPLACEMENT / 1.1;
