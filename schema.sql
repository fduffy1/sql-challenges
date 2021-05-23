CREATE TABLE departments(dept_no varchar NOT NULL, dept_name varchar(100) NOT NULL, PRIMARY KEY (dept_no));

select * from departments

CREATE TABLE titles(title_id varchar NOT NULL, title varchar(100) NOT NULL, PRIMARY KEY (title_id));

select * from titles

CREATE TABLE employees(emp_no varchar NOT NULL, emp_title_id varchar(100) NOT NULL, birth_date date NOT NULL, first_name varchar NOT NULL, last_name varchar NOT NULL, sex varchar NOT NULL, hire_date date NOT NULL, PRIMARY KEY (emp_no), FOREIGN KEY (emp_title_id) references titles(title_id));

select * from employees

CREATE TABLE salaries(emp_no varchar NOT NULL, salary varchar(100) NOT NULL, PRIMARY KEY (emp_no), FOREIGN KEY (emp_no) references employees(emp_no));

select * from salaries

CREATE TABLE dept_manager(dept_no varchar NOT NULL, emp_no varchar(100) NOT NULL, FOREIGN KEY (dept_no) references departments(dept_no), FOREIGN KEY (emp_no) references employees(emp_no));

select * from dept_manager

CREATE TABLE dept_emp(emp_no varchar NOT NULL, dept_no varchar(100) NOT NULL, FOREIGN KEY (emp_no) references employees(emp_no), FOREIGN KEY (dept_no) references departments(dept_no));

select * from dept_emp