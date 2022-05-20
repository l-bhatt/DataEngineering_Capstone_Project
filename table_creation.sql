use anabig114233;


CREATE TABLE `titles` (
    `title_id` VARCHAR(10)  NOT NULL ,
    `title` VARCHAR(30)  NOT NULL ,
    PRIMARY KEY (
        `title_id`
    )
);

CREATE TABLE `departments` (
    `dept_no` VARCHAR(20)  NOT NULL ,
    `dept_name` VARCHAR(30)  NOT NULL ,
    PRIMARY KEY (
        `dept_no`
    )
);

CREATE TABLE `employees` (
    `emp_no` INTEGER  NOT NULL ,
    `emp_title_id` VARCHAR(10) NULL ,
    `birth_date` VARCHAR(20) NULL ,
    `first_name` VARCHAR(50)NULL ,
    `last_name` VARCHAR(50) NULL ,
    `sex` VARCHAR(10) NULL ,
    `hire_date` VARCHAR(20) NULL,
	`no_of_projects` INT NULL,
	`Last_performance` VARCHAR(10) NULL,
	`left_status` VARCHAR(2),
	`last_date` VARCHAR(20) NULL,
		PRIMARY KEY (
        `emp_no`
    )
);


CREATE TABLE `dept_manager` (
    `dept_no` VARCHAR(20)  NOT NULL ,
    `emp_no` INTEGER  NOT NULL 
);

CREATE TABLE `salaries` (
    `emp_no` INTEGER  NOT NULL ,
    `salary` INTEGER  NOT NULL 
);

CREATE TABLE `dept_emp` (
    `emp_no` INTEGER  NULL ,
    `dept_no` VARCHAR(20) NULL 
);


load data local infile '/home/anabig114233/titles.csv' into table titles  fields terminated by ','  ignore 1 rows;
load data local infile '/home/anabig114233/departments.csv' into table departments  fields terminated by ','  ignore 1 rows;
load data local infile '/home/anabig114233/employees.csv' into table employee_table fields terminated by ','  ignore 1 rows;
load data local infile '/home/anabig114233/dept_manager.csv' into table dept_manager fields terminated by ','  ignore 1 rows;
load data local infile '/home/anabig114233/salaries.csv' into table salaries fields terminated by ','  ignore 1 rows;
load data local infile '/home/anabig114233/dept_emp.csv' into table dept_emp fields terminated by ','  ignore 1 rows;
