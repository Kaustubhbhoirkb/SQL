 CREATE TRIGGER T50 ON EMP8
  FOR INSERT
  AS
  DECLARE @DNAME VARCHAR(20)
  SELECT @DNAME = DEPT FROM INSERTED
  IF(@DNAME IS NULL)
  BEGIN
  PRINT'DATA CANNOT BE INSERTED AS DEPARTMENT CANNOT BE NULL'
  ROLLBACK TRAN
  END
  DROP TRIGGER T50
  INSERT INTO EMP8 VALUES(111,'KAUSTUBH','BHOIR',NULL)