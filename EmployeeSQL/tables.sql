CREATE TABLE "departments" (
    "dept_no" VARCHAR (4) ,
    "dept_name" VARCHAR (20) ,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

  -- Viewing the table after import csv file
SELECT *
FROM departments

CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR(6)   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no"
     )
);

-- Viewing the table after import csv file
SELECT *
FROM dept_emp

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(4) ,
    "emp_no" VARCHAR(6)  ,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no"
     )
);

-- Viewing the table after import csv file
SELECT *
FROM dept_manager


CREATE TABLE "employees" ( 
    "emp_no" VARCHAR(6)   NOT NULL,
    "emp_title_id" VARCHAR(5)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR (20)  NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Viewing the table  after import csv file
SELECT *
FROM employees


CREATE TABLE "salaries" (
    "emp_no" VARCHAR(6)   NOT NULL,
    "salary" MONEY   NOT NULL,
	 CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);


-- Viewing the table after import csv file
SELECT *
FROM salaries

CREATE TABLE "titles" (
    "title_id" VARCHAR(5) ,
    "title" VARCHAR(20) ,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);
 
 -- Viewing the table after import csv file
SELECT *
FROM titles


ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
