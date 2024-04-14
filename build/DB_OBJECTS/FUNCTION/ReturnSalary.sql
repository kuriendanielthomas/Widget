create or replace function ReturnSalary(P_employeeiID in VARCHAR2,P_ErrorMsg out varchar2) return number As 
v_salary number;
----------------------------------
begin
select salary ,' ' into v_salary , P_ErrorMsg from W_employee where employee_id=P_employeeiID;
return v_salary;
----------------------------------------------------
exception 
when no_data_found then
P_ErrorMsg:='Either Employee ID '|| P_employeeiID|| '  not found.Please provide a valid existing employee ID.';
return v_salary;
--dbms_output.put_line(p_error_msg) ;
when too_many_rows then
P_ErrorMsg:='Duplicate employee ID '|| P_employeeiID|| '  is found .Please contact administrator.';
when others then
P_ErrorMsg:=sqlerrm;
end; 

