-- Create All Tables
create table employees (emp_no integer primary key, birth_date date not null, first_name varchar not null, last_name varchar not null, gender varchar not null, hire_date date not null);

create table titles (emp_no integer not null, foreign key (emp_no) references employees (emp_no), title varchar not null, from_date date not null, to_date date not null);

create table salaries (emp_no integer not null, foreign key (emp_no) references employees (emp_no), salary varchar not null, from_date date not null, to_date date not null);

create table departments (dept_no varchar primary key, dept_name varchar not null);

create table dept_manager (dept_no varchar not null, foreign key (dept_no) references departments (dept_no), emp_no integer not null,
	foreign key (emp_no) references employees (emp_no), from_date date not null, to_date date not null);

create table dept_emp (emp_no integer not null, foreign key (emp_no) references employees (emp_no), dept_no varchar not null,
	foreign key (dept_no) references departments (dept_no), from_date date not null, to_date date not null);