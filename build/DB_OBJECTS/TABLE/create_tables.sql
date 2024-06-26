create table w_department(department_id number(5) not null,
department_name varchar2(50) not null,
loc_name varchar2(50) not null,
CONSTRAINT department_PK PRIMARY KEY (department_id))
/
create table w_employee(
employee_id     NUMBER(10) primary key  ,
employee_name varchar2(50) not null,
job_title varchar2(50) not null,
manager_id number(10),
date_hired date not null,
salary number(10) not null,
department_id number(5) not null,
constraint department_fK_employee foreign key(department_id) references W_department(department_id))
/
insert all 
into w_department(DEPARTMENT_ID,   DEPARTMENT_NAME,LOC_NAME) values (1,'Management','London')
into w_department(DEPARTMENT_ID,   DEPARTMENT_NAME,LOC_NAME) values (2,'Engineering','Cardiff')
into w_department(DEPARTMENT_ID,   DEPARTMENT_NAME,LOC_NAME) values (3,'Research and Development','Edinburgh')
into w_department(DEPARTMENT_ID,   DEPARTMENT_NAME,LOC_NAME) values (4,'Sales','Belfast')
select * from dual;
/
commit;
/
insert all 
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90001,'John Smith','CEO',null,'01-jan-1995',100000,1)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90002,'Jimmy Willis','Manager',90001,'23-sep-2003',52500,4)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90003,'Roxy Jones','Salesperson',90002,'11-feb-2017',35000,4)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90004,'Selwyn Feild','Salesperson',90003,'20-may-2015',32000,4)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90005,'David Hallett','Engineer',90006,'17-apr-2018',40000,2)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90006,'Sarah Phelps','Manager',90001,'21-mar-2015',45000,2)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90007,'Louise Harper','Engineer',90006,'01-jan-2013',47000,2)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90008,'Tina Hart','Engineer',90009,'28-jul-2014',45000,3)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90009,'Gus Jones','Manager',90001,'15-may-2018',50000,3)
into w_employee(EMPLOYEE_ID,EMPLOYEE_NAME,JOB_TITLE,MANAGER_ID,DATE_HIRED,SALARY,DEPARTMENT_ID) values (90010,'Mildred Hall','Secretary',90001,'12-oct-1996',35000,1)
select * from dual;
/
commit;