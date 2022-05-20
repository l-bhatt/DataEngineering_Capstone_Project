
REFRESH anabig114233;


/*

1. A list showing employee number, last name, first name, sex, and salary for each employee1.
A list showing first name, last name, and hire date for employees who were hired in 1986.


*/


select employees.emp_no, first_name, last_name, sex, salary from employees
join salaries on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date from employees
where YEAR(hire_date) == 1986;



/*

2 . A list showing the manager of each department with the following information:
department number, department name, the manager's employee number, last name, first name


*/


select departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
last_name,
first_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on  dept_manager.emp_no = employees.emp_no;




/*

3 .A list showing the department of each employee with the following information:
employee number, last name, first name, and department name


*/




select
dept_emp.emp_no,
first_name,
last_name,
replace (departments.dept_name, '"', '') as dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees
on dept_emp.emp_no = employees.emp_no;






/*

4.A list showing first name, last name,
and sex for employees whose first name is "Hercules" and last names begin with "B.“

*/


select 
first_name,
last_name,
sex
from employees
where first_name = "Hercules" and last_name LIKE "B%";



/*

5. A list showing all employees in the Sales department, including their employee number,
last name, first name, and department name.

*/


select
dept_emp.emp_no,
first_name,
last_name,
replace(departments.dept_name, '"', '') as dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where replace(departments.dept_name, '"', '') = 'Sales';



/*

Creating a view to avoid "" in the dept_name in the departments



*/

create view department_view AS
select dept_no, 
replace(dept_name, '"', '') as dept_name
from departments;


/*

6.

A list showing all employees in the Sales and Development departments,
including their employee number, last name, first name, and department name


*/


select
dept_emp.emp_no,
first_name,
last_name,
dept_name
from department_view
join dept_emp
on department_view.dept_no = dept_emp.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales' or dept_name = "development";





/*

7. A list showing the frequency count of employee last names,
in descending order. ( i.e., how many employees share each last name)


*/


select last_name,
COUNT(emp_no) as count
from employees
group by last_name
order by count desc;






