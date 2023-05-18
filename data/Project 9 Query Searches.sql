SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary FROM public."employees" 
JOIN public."salary"
on public."employees".emp_no = public."salary".emp_no ;

SELECT employees.last_name, employees.first_name, employees.hire_date FROM public."employees" 
WHERE date_part('year', employees.hire_date) = 1986 ;

SELECT dept_manager.dept_no, public."Departments".dept_name, dept_manager.emp_no, employees.first_name, employees.last_name FROM public."employees" JOIN public."dept_manager"
on public."employees".emp_no = public."dept_manager".emp_no 
JOIN public."Departments" on public."dept_manager".dept_no = public."Departments".dept_no ;

SELECT public."Departments".dept_no, employees.emp_no, employees.first_name, employees.last_name, public."Departments".dept_name 
FROM public."employees" JOIN public."dept_emp" 
on public."dept_emp".emp_no = employees.emp_no
JOIN public."Departments" on public."dept_emp".dept_no = public."Departments".dept_no ;

SELECT employees.last_name, employees.first_name, employees.sex FROM public."employees" 
WHERE first_name = 'Hercules' AND last_name like 'B%' ;

SELECT employees.last_name, employees.first_name, employees.emp_no FROM public."employees" 
JOIN public."dept_emp"  on public."dept_emp".emp_no = employees.emp_no
JOIN public."Departments" on public."dept_emp".dept_no = public."Departments".dept_no
WHERE dept_name = 'Sales';

SELECT employees.last_name, employees.first_name, employees.emp_no FROM public."employees" 
JOIN public."dept_emp"  on public."dept_emp".emp_no = employees.emp_no
JOIN public."Departments" on public."dept_emp".dept_no = public."Departments".dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development' ;

SELECT employees.last_name, COUNT(*) FROM public."employees" 
GROUP BY employees.last_name
ORDER BY COUNT (*) DESC;


