/* #1. DETERMINE THE TOTAL EXPENSE AMOUNT FOR THE DIFFERENT TYPES IN ASCENDING ORDER */
SELECT TYPE,SUM(AMOUNT) FROM EXPENSE GROUP BY TYPE ORDER BY SUM(AMOUNT),TYPE;

/* #2. SHOW TOTAL # OF TRIPS APPROVED FOR EACH DEPARTMENT // SHOW DEPARTMENT NAME AND TOTAL NUMBER OF TRIPS */
-- SELECT DISTINCT DEPT.NAME, COUNT(EMPLOYEE.DEPT) FROM DEPT INNER JOIN EMPLOYEE ON DEPT.CODE = EMPLOYEE.DEPT INNER JOIN TRIP ON TRIP.EMP_ID = EMPLOYEE.ID;
-- SELECT DEPT.NAME, COUNT(EMPLOYEE.DEPT) FROM EMPLOYEE, TRIP, DEPT WHERE EMPLOYEE.ID = TRIP.EMP_ID AND DEPT.CODE = EMPLOYEE.DEPT GROUP BY DEPT.NAME;
SELECT DISTINCT DEPT.NAME, COUNT(EMPLOYEE.DEPT) FROM EMPLOYEE INNER JOIN TRIP ON EMPLOYEE.ID = TRIP.EMP_ID JOIN DEPT ON DEPT.CODE = EMPLOYEE.DEPT GROUP BY DEPT.NAME;

/* #3. TRIP TAABLE TO SHOW THE NUMBER OF TRIPS WHERE DEPATURE AND RETURN HAPPEN */
SELECT COUNT(Dep_Date) FROM Trip WHERE Dep_Date = ANY(SELECT Return_Date FROM TRIP);

/* #4. APPROVED TRIPS -> SHOW CORRESPONDING EMPLOYEE NAME/DEPARTURE/CITY/SUBMITTED REC */
-- SELECT EMPLOYEE.NAME FROM EMPLOYEE, TRIP.DEP_DATE FROM TRIP , TRIP.TO_CITY FROM TRIP;
-- SELECT EMPLOYEE.NAME, TRIP.TO_CITY,TRIP.DEP_DATE,EXPENSE.SUBMITTED FROM EMPLOYEE INNER JOIN TRIP ON EMPLOYEE.ID = TRIP.EMP_ID JOIN EXPENSE ON TRIP.ID = EXPENSE.TRIP_ID;
SELECT EMPLOYEE.NAME, TRIP.DEP_DATE, TRIP.TO_CITY ,EXPENSE.SUBMITTED FROM EMPLOYEE INNER JOIN TRIP ON EMPLOYEE.ID = TRIP.EMP_ID JOIN EXPENSE ON TRIP.ID = EXPENSE.TRIP_ID;

/* #5. FIND OUT THE TRIPS FOR WHICH THE ESIMATED COST IS LESS THAN ACTUAL EXPENSE.
