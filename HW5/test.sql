CREATE OR REPLACE PROCEDURE INSERT_TRIP
(
  -- ID          INTEGER,
  INSERT_Emp_ID      IN TRIP.EMP_ID       --INTEGER,
  INSERT_To_City     IN TRIP.To_City      --CHAR(15),
  INSERT_Dep_Date    IN TRIP.Dep_Date     --DATE,
  INSERT_Return_Date IN TRIP.Return_Date  --DATE,
  iNSERT_Est_Cost    IN TRIP.Est_Cost     --DECIMAL(6,2)
)
AS
BEGIN
  INSERT INTO Trip (ID, Emp_ID, To_City, Dep_Date, Return_Date,Est_Cost) VALUES ( ID,  INSERT_Emp_ID, INSERT_To_City, INSERT_Dep_Date, INSERT_Return_Date, iNSERT_Est_Cost);
  COMMIT;
END INSERT_TRIP;
