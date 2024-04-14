create or replace PROCEDURE TrnEmployeeDepartment(P_employeeiID VARCHAR2,P_DepartmentID NUMBER,P_ErrorMsg out varchar2) IS
--------------
V_EmployeeID w_employee.employee_id%type;
V_DepartmentID number;
--------------------------------
begin

select employee_id into V_EmployeeID from W_employee where employee_id=P_employeeiID;

select department_id  into V_DepartmentID from W_department where department_id=P_DepartmentID;

update w_employee set  Department_ID =P_DepartmentID  WHERE  employee_id=P_employeeiID;
commit;
------------------------------------
exception 
when no_data_found then
P_ErrorMsg:='Either Employee ID '|| P_employeeiID|| ' or Department Id ' || p_DepartmentID|| ' not found.Please provide a valid existing employee ID or department ID.';
--dbms_output.put_line(p_error_msg) ;
when too_many_rows then
P_ErrorMsg:='Duplicate employee ID '|| P_employeeiID|| ' or Department Id ' || p_DepartmentID||' is found .Please contact administrator.';
dbms_output.put_line('LLLL') ;
when others then
P_ErrorMsg:=sqlerrm;
end; 

