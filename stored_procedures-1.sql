
DELIMITER //
CREATE PROCEDURE pro_department_report(DEPT_ID int)
AS
BEGIN
    SELECT COUNT(s.sname), d.DNAME 
    FROM STUDENT s
    INNER JOIN DEPARTMENT d ON s.DEPT_ID = d.DEPTid
    WHERE s.DEPT_ID = DEPT_ID
    ORDER BY d.DNAME ASC, s.sname ASC;
END
DELIMITER ;

CALL pro_department_report(1);
CALL pro_department_report(2);
CALL pro_department_report(3);
CALL pro_department_report(4);
CALL pro_department_report(5);

SELECT * FROM STUDENT;