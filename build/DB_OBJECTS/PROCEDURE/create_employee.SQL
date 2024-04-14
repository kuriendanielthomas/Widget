create or replace procedure  create_employee(
P_EMPLOYEE_ID number,
P_EMPLOYEE_NAME varchar2,
P_JOB_TITLE varchar2,
P_MANAGER_ID number,
P_DATE_HIRED date,
P_SALARY number,
P_DEPARTMENT_ID number)
is
--------------------------
unique_key_error EXCEPTION;
PRAGMA EXCEPTION_INIT(unique_key_error, -00001);
value_error EXCEPTION;
PRAGMA EXCEPTION_INIT(value_error,-06502);
-------------------------
begin
INSERT INTO w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID)
VALUES (P_EMPLOYEE_ID,P_EMPLOYEE_NAME,P_JOB_TITLE,P_MANAGER_ID,P_DATE_HIRED,P_SALARY,P_DEPARTMENT_ID);
exception
when others then
dbms_output.put_line(sqlcode);
END;
----------------------------------