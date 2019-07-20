DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

create table departments(
    dept_no VARCHAR(100) NOT NULL,
    dept_name VARCHAR(100) NOT NULL,
    primary key(dept_no)
    );
	
create table dept_emp(
    emp_no Int NOT NULL,
    dept_no VARCHAR(1000000)NOT NULL,
	from_date Date NOT NULL,
	to_date Date NOT NULL
    );
--comment: have error when creating foreign key of emp_no and dept_no, so drop those quiries
	
create table dept_manager(
    dept_no VARCHAR(1000000)NOT NULL,
    emp_no Int NOT NULL,
    from_date Date NOT NULL,
    to_date Date NOT NULL
    );
--comment: have error when creating foreign key of emp_no and dept_no, so drop those quiries

create table employees(
    emp_no Int NOT NULL,
    birth_date Date NOT NULL,
    first_name VARCHAR(1000000)NOT NULL,
    last_name VARCHAR(1000000)NOT NULL,
    gender VARCHAR(1000000)NOT NULL,
    hire_date Date NOT NULL
    primary key(emp_no)
    );

create table salaries(
    emp_no Int NOT NULL,
    salary Int NOT NULL,
    from_date Date NOT NULL,
    to_date Date NOT NULL
    );
--comment: have error when creating foreign key of emp_no, so drop that quiry

create table titles(
    emp_no Int NOT NULL,
    title VARCHAR(1000000),
    from_date Date NOT NULL,
    to_date Date NOT NULL
    );  
--comment: have error when creating foreign key of emp_no, so drop that quiry
