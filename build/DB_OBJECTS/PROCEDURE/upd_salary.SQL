create or replace PROCEDURE UPD_SALARY(p_employee_id VARCHAR2,p_salary_incr NUMBER,p_type varchar2,p_error_msg out varchar2) IS
e_zero_negetive exception;
e_type exception;
v_employee_id w_employee.employee_id%type;
v_salary_incr number;
-------------------------------------------
begin
select employee_id into v_employee_id from W_employee where employee_id=p_employee_id;

if nvl(p_salary_incr,0) =0 or p_salary_incr <0 then
raise e_zero_negetive;
end if;

if p_type not in('D','I' ) then
raise e_type;
else
   if p_type='D' THEN
   v_salary_incr:=p_salary_incr*-1;
   else
   v_salary_incr:=p_salary_incr;
   END IF;
end if;

update w_employee set  salary =nvl(salary,0)+(salary*V_salary_incr/100) WHERE  employee_id=p_employee_id;
commit;
---------------------------------------------
exception 
when e_zero_negetive then
p_error_msg:='Error.Provide  a  greater value percentage for salary increment' ;
--dbms_output.put_line(p_ERROR_MSG) ;
when e_type then
p_error_msg:='Error. Provide I for Increment and D for decrement' ;
--dbms_output.put_line(p_ERROR_MSG) ;
when no_data_found then
p_error_msg:='Employee ID '|| p_employee_id||' not found.Please provide a valid existing employee ID.';
--dbms_output.put_line(p_error_msg) ;
when too_many_rows then
p_error_msg:='Duplicate employee ID '|| p_employee_id||' is found .Please contact administrator.';
dbms_output.put_line('LLLL') ;
when others then
p_error_msg:=sqlerrm;
end; 