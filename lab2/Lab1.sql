@C:/Users/s5349/Documents/Universidad/Tareas_Universidad/Semestre_5/DB1/lab2/supermarket.sql

SELECT * FROM SUPERMARKET;

ALTER TABLE SUPERMARKET ADD PRIMARY KEY (INVOICE_ID);

ALTER TABLE SUPERMARKET
MODIFY UNIT_PRICE NUMBER(10,2) NOT NULL;

ALTER TABLE SUPERMARKET
MODIFY QUANTITY NUMBER(5) NOT NULL;

ALTER TABLE SUPERMARKET
MODIFY TOTAL NUMBER(15,5) NOT NULL;

SELECT * FROM SUPERMARKET 
ORDER BY UNIT_PRICE DESC;

SELECT * FROM SUPERMARKET
WHERE CUSTOMER_TYPE = 'Member'
ORDER BY TOTAL DESC;

SELECT * FROM SUPERMARKET
WHERE Gender = 'Female'
ORDER BY TOTAL DESC;

SELECT * FROM SUPERMARKET
ORDER BY FECHA ASC;

SELECT COUNT(PAYMENT) AS CANTIDAD 
FROM SUPERMARKET
WHERE PAYMENT = 'Cash';

SELECT COUNT(PAYMENT) AS CANTIDAD 
FROM SUPERMARKET
WHERE PAYMENT = 'Ewallet';


SELECT COUNT(PAYMENT) AS CANTIDAD 
FROM SUPERMARKET
WHERE PAYMENT = 'Credit card';

SELECT COUNT(*) FROM SUPERMARKET;