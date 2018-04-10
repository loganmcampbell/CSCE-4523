/*C L E A R  A L L  D A T A */
DELETE FROM EXPENSE;
DELETE FROM TRIP;
DELETE FROM EMPLOYEE;
DELETE FROM DEPT;
DELETE DEFAULTERS;
CL SCR;


/* C L E A N E D / U P / Q U E R I E S */
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('001', 'Info',                        '13505314', 'Employee 1');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('002', 'Marketing',                   '12345683', 'Employee 2');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('003', 'Marketing',                   '87615423', 'Employee 3');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('004', 'Marketing',                   '89876521', 'Employee 4');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('005', 'Marketing',                   '87456921', 'Employee 5');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('006', 'Human',                       '89856865', 'Employee 6');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('007', 'Human',                       '87456568', 'Employee 7');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('008', 'Human',                       '89623636', 'Employee 8');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('009', 'Sales',                       '45456239', 'Employee 9');
INSERT INTO Dept (Code, Name, Phone, Contact) VALUES ('010', 'Account',                     '98562365', 'Employee 10');

INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('1000', 'EMP1',     '001',TO_DATE('17/12/2015', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('2000', 'EMP2',     '002',TO_DATE('14/02/2010', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('3000', 'EMP3',     '003',TO_DATE('07/06/2015', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('4000', 'EMP4',     '004',TO_DATE('08/12/2014', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('5000', 'EMP5',     '005',TO_DATE('20/04/2020', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('6000', 'EMP6',     '006',TO_DATE('30/05/2000', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('7000', 'EMP7',     '007',TO_DATE('19/10/2000', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('8000', 'EMP8',     '008',TO_DATE('11/01/2014', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('9000', 'EMP9',     '009',TO_DATE('05/05/2005', 'DD/MM/YYYY'));
INSERT INTO Employee (ID,Name,Dept,Join_date) VALUES ('1001', 'EMP10',    '010',TO_DATE('02/02/2002', 'DD/MM/YYYY'));

INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('1', '1000','DALLAS',                 TO_DATE('12/01/2016', 'DD/MM/YYYY'), TO_DATE('18/01/2016', 'DD/MM/YYYY'),'2000.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('2', '2000','CHICAGO',                TO_DATE('04/04/2018', 'DD/MM/YYYY'), TO_DATE('06/04/2018', 'DD/MM/YYYY'),'1500.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('3', '1000','NEW ORLEANS',            TO_DATE('13/02/2013', 'DD/MM/YYYY'), TO_DATE('20/02/2013', 'DD/MM/YYYY'),'1200.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('4', '4000','DENVER',                 TO_DATE('22/01/2010', 'DD/MM/YYYY'), TO_DATE('30/01/2010', 'DD/MM/YYYY'),'200.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('5', '5000','KANSAS CITY',            TO_DATE('30/07/2019', 'DD/MM/YYYY'), TO_DATE('31/07/2019', 'DD/MM/YYYY'),'30.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('6', '6000','TOPEKA',                 TO_DATE('23/08/2038', 'DD/MM/YYYY'), TO_DATE('23/08/2038', 'DD/MM/YYYY'),'1.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('7', '7000','SCRANTON',               TO_DATE('11/09/2048', 'DD/MM/YYYY'), TO_DATE('11/09/2048', 'DD/MM/YYYY'),'263.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('8', '8000','SEATTLE',                TO_DATE('05/10/2058', 'DD/MM/YYYY'), TO_DATE('15/10/2058', 'DD/MM/YYYY'),'4000.00');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('9', '9000','KNOXVILLE',              TO_DATE('05/11/2038', 'DD/MM/YYYY'), TO_DATE('10/11/2038', 'DD/MM/YYYY'),'3563.58');
INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ('10','1001','NEW YORK CITY',          TO_DATE('01/12/2028', 'DD/MM/YYYY'), TO_DATE('12/12/2028', 'DD/MM/YYYY'),'3434.20');

INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('1','01','500.00',   'T', TO_DATE('18/01/2016', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('1','02','1200.00',  'H', TO_DATE('19/01/2014', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('2','01','300.00',   'T', TO_DATE('20/04/2017', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('3','01','25.00',    'M', TO_DATE('21/02/2019', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('4','01','120.00',   'T', TO_DATE('22/01/2018', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('5','01','300.00',   'T', TO_DATE('23/05/2016', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('5','02','1200.00',  'H', TO_DATE('24/06/2014', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('5','03','300.00',   'M', TO_DATE('26/04/2013', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('6','01','350.00',   'T', TO_DATE('27/03/2012', 'DD/MM/YYYY'));
INSERT INTO Expense (Trip_ID, Receipt_No, Amount,Type,Submitted) VALUES ('6','02','500.00',   'H', TO_DATE('20/02/2017', 'DD/MM/YYYY'));

CL SCR;
