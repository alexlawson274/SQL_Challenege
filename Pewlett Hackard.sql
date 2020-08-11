1.      List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT

            
“last_name”, “first_name”, “sex”, “salary”

FROM

          Salaries as s

           inner JOIN employees as e ON e.emp_no = s.emp_no

 

2.      List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

 

SELECT

             *

FROM

              dept_manager as dm

              inner JOIN employees as e ON dm.emp_no = e.emp_no

                                      INNER JOIN departments as d ON dm.dept_no = d.dept_no

 

3.      List the department of each employee with the following information: employee number, last name, first name, and department name.

 

SELECT

            
“last_name”, “first_name”, “emp_no”, “dept_name”

FROM

          Departments as d

        inner JOIN employees as e ON e.emp_no = d.emp_no

 

 

4.      List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select "first_name", "last_name", "sex"

from employees

where first_name = 'Hercules' and last_name LIKE 'B%';

 

5.      List all employees in the Sales department, including their employee number, last name, first name, and department name.

 

SELECT

              "last_name", "first_name", "dept_name"

FROM

              employees as e

              inner JOIN dept_emp as de ON e.emp_no = de.emp_no

                                      inner join departments as d on d.dept_no = de.dept_no

where dept_name =’Sales’     

 

6.      List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

 

SELECT

              "last_name", "first_name", "dept_name"

FROM

              employees as e

              inner JOIN dept_emp as de ON e.emp_no = de.emp_no

                                      inner join departments as d on d.dept_no = de.dept_no

where dept_name ='Development'     

or dept_name ='Sales';

 
8. Groupby names

 SELECT last_Name, COUNT(*) 
FROM employees 
GROUP BY last_name;