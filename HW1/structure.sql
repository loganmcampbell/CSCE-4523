CREATE TABLE Dept
(
  Code     CHAR(5) PRIMARY KEY,
  Name     CHAR(10)  NOT NULL,
  Phone    CHAR(8)   NOT NULL, /*NOT USING AREA CODE */
  Contact  CHAR(15)  /* Name of Person */

);

CREATE TABLE Employee
(
  ID         INTEGER   PRIMARY KEY,
  Name       CHAR(15)  NOT NULL,
  Dept       CHAR(5)  NOT NULL, FOREIGN KEY (Dept) REFERENCES Dept(Code),
  Join_date  DATE
);


CREATE TABLE Trip
(
  ID           INTEGER PRIMARY KEY,
  Emp_ID       INTEGER,
  FOREIGN KEY (Emp_ID) REFERENCES Employee(ID),
  To_City      CHAR(15),
  Dep_Date     DATE            NOT NULL,
  Return_Date  DATE            NOT NULL,
  Est_Cost     DECIMAL(6,2)    NOT NULL,
  CHECK (Est_Cost >= 1.00 AND Est_Cost <= 4000.00)
);

CREATE TABLE Expense
(

  Trip_ID     INTEGER, FOREIGN KEY (Trip_ID) REFERENCES Trip(ID),
  Receipt_No  INTEGER,
  Primary KEY (Trip_ID, Receipt_No),
  Amount      DECIMAL(6,2) NOT NULL,
  CHECK (Amount >= 1.00),
  Type        CHAR(2),  /* 'T' | 'H' | 'M' : Transportation,Hotel,Meals */
  Submitted   Date

);
