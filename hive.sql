
USE anabig114233;


DROP TABLE IF EXISTS departments;
CREATE EXTERNAL Table departments (dept_no varchar(20) ,dept_name varchar(30))
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/departments";


DROP TABLE IF EXISTS titles;
CREATE EXTERNAL Table titles (title_id varchar(10) , title varchar(30))
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/titles";


DROP TABLE IF EXISTS employees;
CREATE EXTERNAL Table employees (emp_no INT , emp_title_id varchar(10), birth_date VARCHAR(20) , first_name VARCHAR(50), last_name VARCHAR(50), sex VARCHAR(10), hire_date VARCHAR(20), no_of_projects INT, Last_performance VARCHAR(10),
left_status VARCHAR(2), last_date VARCHAR (20) )
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/employees";


DROP TABLE IF EXISTS dept_manager;
CREATE EXTERNAL Table dept_manager (dept_no varchar(20) , emp_no INT)
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/dept_manager";


DROP TABLE IF EXITS salaries;
CREATE EXTERNAL Table salaries (emp_no INT , salary INT)
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/salaries";



DROP TABLE IF EXISTS dept_emp;
CREATE EXTERNAL Table dept_emp (emp_no INT , dept_no VARCHAR(20))
STORED AS PARQUET LOCATION "/user/anabig114233/capstone/warehouse/dept_emp";




