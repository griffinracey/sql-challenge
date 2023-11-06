-- create table of departments
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(25),
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(25) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- create employees table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- create dept employee table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- create dept manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- create salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

