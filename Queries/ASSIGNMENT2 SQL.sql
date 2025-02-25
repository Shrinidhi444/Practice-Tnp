-- find the population from countries where p > 200 milion and arrange in desc
use countries;

select * from countries;

SELECT 
    *
FROM
    countries.countries
WHERE
    population > 200000000
ORDER BY POPULATION DESC;

-- return from hr table where employee earns a commision sort in desc order

use hr;

select * from hr.emp;

SELECT * FROM HR.EMP
WHERE COMM > 0
ORDER BY COMM ASC;

-- ORDER ITEMS IN COSTOMER ORDERS SCHEMA TO RETURN WHERE QUANTITY IS ABOVE 4 AND THE UNIT PRICE IS ABOVE 49

USE CUSTOMER_ORDERS;

SELECT * FROM CUSTOMER_ORDERS.ORDER_ITEMS;

SELECT 
    *
FROM
    CUSTOMER_ORDERS.ORDER_ITEMS
WHERE
    QUANTITY > 4 AND UNIT_PRICE > 49;
    
/* IN THE COUNTRIES TABLE OF THE COUNTRIES SCHEMA FILTER RECORDS TO RETURN THOSE WHERE BOTH OF THE FOLLOWING CONDITIONS ARE MET:

CON1: THE POPULATION IS BETWEEN 100 AND 200 MILLION OR THE AREA OF THE COUNTRY IS OVER 5 M
CON2: THE COUNTRY NAME IS SINGLE WORD
*/
use countries;

SELECT 
    *
FROM
    COUNTRIES.COUNTRIES
WHERE
    ((POPULATION BETWEEN 100000000 AND 200000000)
        OR (AREA_KM2 > 5000000))
        AND (NAME NOT LIKE '% %'); 
        
-- NEW TABLE

/*
1. Create a table in the HR schema called SALES_PEOPLE. The structure of this table should be the same as the EMP table... with one difference:

==> Instead of the SAL and COMM columns hava a column called TOTAL_PAY
*/
/* 
2. Insert records into the SALES_PEOPLE table from the EMP table with only the records where the job is SALESMAN. (SAL + COMM = TOTAL_PAY)
*/


USE HR;

CREATE TABLE HR.SALES_PEOPLE AS SELECT EMP_NO,
    E_NAME,
    JOB,
    MGR,
    HIRE_DATE,
    (SAL + COMM) AS TOTAL_PAY,
    DEPT_NO FROM
    HR.EMP
WHERE
    jOB = 'SALESMAN';
;

SELECT * FROM HR.SALES_PEOPLE;
/*
update the records to change the job title from "SALESMAN" TO "SENIOR SALESMAN" if the employee TOTAL_PAY is over 2000.
*/

UPDATE HR.SALES_PEOPLE
SET JOB='SENIOR_SALESMAN'
WHERE TOTAL_PAY > 2000;
;

set sql_safe_updates=0;

SELECT * FROM HR.SALES_PEOPLE;

/*
1. From the ORDER_ITEMS table in the CUSTOMER_ORDERS schema return a column called line_item_amount 
that is the unit_price multiplied by the quantity for each record. (Return all other columns as well)

2. Round the line_item_amount column to 1 decimal point.
*/

USE CUSTOMER_ORDERS;

SELECT ORDER_ID,PRODUCT_ID, ROUND(UNIT_PRICE * QUANTITY,1) AS LINE_ITEM_AMOUNT FROM CUSTOMER_ORDERS.ORDER_ITEMS;

/* jupiter commit*/

select * from booklist.bookdetail;

/* practice assignment*/

use hr;

select * from hr.sales_people
where TOTAL_PAY > 10000;

select 
min(total_pay) as min_t,
max(total_pay) as max_t,
avg(total_pay) as avg_t
from sales_people;

select * from hr.sales_people
order by TOTAL_PAY desc
limit 3;

/*
select sp.ename,sp.total_pay as mname,mpay
from sales_people sp
join sales_people m on sp.mrg = m.empno
where sp.total_pay > m.total_pay;
*/

-- percentage of total pay
SELECT 
    E_NAME, 
    TOTAL_PAY, 
    (TOTAL_PAY / (SELECT SUM(TOTAL_PAY) FROM SALES_PEOPLE) * 100) AS Percentage_Contribution
FROM HR.SALES_PEOPLE;

