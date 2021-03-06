
/*#1. PRINT OUT THE EMPLOYEE NAME | DEPATURE DAY | RETURN DAY OF TRIPS : WHERE THE DEPATURE DAY IS A FRIDAY*/
SELECT EMPLOYEE.NAME, TO_CHAR(TRIP.DEP_DATE,'DAY', 'NLS_DATE_LANGUAGE=ENGLISH'), TO_CHAR(TRIP.RETURN_DATE,'DAY', 'NLS_DATE_LANGUAGE=ENGLISH'),TO_DATE(Return_Date,'DD/MM/YYYY') - TO_DATE(Dep_Date,'DD/MM/YYYY') "# OF DAYS" FROM EMPLOYEE INNER JOIN TRIP ON EMPLOYEE.ID = TRIP.EMP_ID WHERE TO_CHAR(DEP_DATE,'DY', 'NLS_DATE_LANGUAGE=ENGLISH') IN ('FRI');
/*#2. PRINT THE # OF EMPLOYEE WHO RETURNED FROM A TRIP DURING LAST WEEKEND [FROM TODAY'S WEEK]*/
SELECT COUNT(TRIP.ID) FROM TRIP WHERE TRIP.Return_Date BETWEEN SYSDATE - 9 AND SYSDATE AND  TO_CHAR(TRIP.RETURN_DATE,'DY') IN ('SAT','SUN');
/*#3. RECEIPTS SUBMITTED IN 2017: PRINT TOTATL AMT FOR EACH EXPENSE TYPE: PRINT OUT THE FULL WORDS OF T/H/M */
SELECT DECODE(EXPENSE.TYPE,'M','MEALS','H ','HOTEL','T ','TRANSPORTATION'), SUM(EXPENSE.AMOUNT) FROM EXPENSE WHERE TO_CHAR(SUBMITTED,'YYYY') IN ('2017') GROUP BY EXPENSE.TYPE;
/*#4. EVERY EMP SHOW TOTAL # OF TRIPS TAKEN. SHOW NAME|# OF TRIPS. IF NONE PRINT NAME & 0.*/
SELECT NVL(EMPLOYEE.NAME,0), COUNT(TRIP.ID) FROM TRIP RIGHT OUTER JOIN EMPLOYEE ON EMPLOYEE.ID = TRIP.EMP_ID GROUP BY NAME;

SELECT  * FROM DEFAULTERS;

/*#5 THE VIEW OF DEFAULTERS*/
CREATE VIEW DEFAULTERS AS SELECT EMPLOYEE.NAME, TRIP.RETURN_DATE, TO_DATE(EXPENSE.SUBMITTED,'DD/MM/YYYY') - TO_DATE(TRIP.RETURN_DATE,'DD/MM/YYYY') "# OF DAYS" FROM EMPLOYEE,EXPENSE,TRIP WHERE TO_DATE(EXPENSE.SUBMITTED) - TO_DATE(TRIP.RETURN_DATE) >  10 AND TRIP.EMP_ID = EMPLOYEE.ID AND TRIP.ID = EXPENSE.TRIP_ID;
