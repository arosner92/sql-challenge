-- Run Queries
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

select * from employees where hire_date >= '01-01-1986' and hire_date <= '12-31-1986';

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from dept_manager as dm
join departments as d
on dm.dept_no = d.dept_no
join employees as e
on e.emp_no = dm.emp_no;

select e.emp_no, d.dept_name, e.last_name, e.first_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no;

select * from employees where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

select last_name, count(last_name) from employees group by last_name order by 2 desc;
