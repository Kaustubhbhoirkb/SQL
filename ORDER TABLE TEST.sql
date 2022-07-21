CREATE TABLE ORDER1(ORD_NO INT,PURCHAMT INT,ORD_DATE DATE,CUSTOMER_ID INT,SALESMANID INT)
INSERT INTO ORDER1 VALUES(70001, 150, '2012-10-05', 3005, 5002)
INSERT INTO ORDER1 VALUES(70009, 270, '2012-09-10', 3001, 5002)
INSERT INTO ORDER1 VALUES(70002, 65, '2012-10-05', 3002, 5001)
INSERT INTO ORDER1 VALUES(70004, 110, '2012-08-17', 3009, 5002)
INSERT INTO ORDER1 VALUES(70007, 948, '2012-09-10', 3005, 5002)
INSERT INTO ORDER1 VALUES(70005, 2400, '2012-07-27', 3007, 5001)
INSERT INTO ORDER1 VALUES(70008, 5760, '2012-09-10', 3002, 5001)

SELECT * FROM ORDER1
--------------------------------------------------------1-----------------------------------------------
SELECT SALESMANID,SUM(PURCHAMT) AS TOTAL FROM ORDER1 GROUP BY SALESMANID
--------------------------------------------------------2-----------------------------------------------
SELECT * FROM ORDER1 WHERE ORD_NO >= 70004
--------------------------------------------------------3-----------------------------------------------
SELECT * FROM ORDER1 WHERE ORD_DATE >= '2012-09-09'
--------------------------------------------------------4-----------------------------------------------
SELECT SALESMANID,AVG(PURCHAMT) AS AVERAGE FROM ORDER1 GROUP BY SALESMANID
