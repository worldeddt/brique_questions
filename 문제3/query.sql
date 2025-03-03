SELECT
    emp.emp_no,
    emp.first_name,
    emp.last_name,
    emp.gender,
    emp.hire_date,
    depart.dept_name,
    ttls.title,
    MAX(salar.salary) AS max_salary
FROM employees emp
         JOIN dept_emp dept ON emp.emp_no = dept.emp_no
         JOIN departments depart ON dept.dept_no = depart.dept_no
         JOIN titles ttls ON emp.emp_no = ttls.emp_no
         JOIN salaries salar ON emp.emp_no = salar.emp_no
WHERE emp.hire_date >= '2000-01-01'
GROUP BY emp.emp_no, emp.first_name, emp.last_name, emp.gender, emp.hire_date, depart.dept_name, ttls.title
ORDER BY emp.emp_no;
