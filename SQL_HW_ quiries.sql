--1. List the following details of each employee: employee number, last name, first name, gender, and salary. 
create view emp_info as 
select e.emp_no, e.last_name, e.first_name, e.gender,s.salary
from employees as e, salaries as s ;
select * from emp_info;


-- 2. List employees who were hired in 1986.

create view hire_1986 as
select first_name, last_name, hire_date
from employees
where EXTRACT(year FROM "hire_date") = 1986;
select * from hire_1986;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

create view manager as
select e.dept_no, e.dept_name, m.emp_no, m.last_name, m.first_name, m.from_date, m.to_date
from employees as e, dept_manager as m;
select * from manager;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

create view department as
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d;
select * from department;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

create view emp_Hercules as
select last_name, first_name
from employees where first_name = 'Hercules' and last_name LIKE 'B%';
select * from emp_Hercules;


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select emp_no, last_name, first_name
from employees where emp_no in
(select emp_no
 from dept_emp where dept_no IN
(select dept_no
from departments where dept_name = 'Sales')
);

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e, departments as d
where emp_no in
( select emp_no
  from dept_emp
  where dept_no in
  ( select dept_no
    from departments 
    where dept_name = 'Sales' or dept_name = 'Development')
);


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name)
from employees
group by last_name
order by last_name DESC;