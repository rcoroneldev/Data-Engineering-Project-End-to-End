-- Create database

create database hiredatabase_db;
use hiredatabase_db;

-- 1. Create table departments

drop table  jobs;
drop table  departments;

CREATE TABLE departments (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    department VARCHAR(200)       
);

-- 2. Create table jobs

CREATE TABLE jobs (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    job VARCHAR(200)            
);

-- 3. Create table hire_employees

CREATE TABLE hire_employees (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    name VARCHAR(200) ,             
    datetime VARCHAR(200) ,         
    job_id INTEGER ,                -- Foreign key until the table jobs
    department_id INTEGER ,         -- Foreign key the table jobs departments
    CONSTRAINT FK_Department FOREIGN KEY (department_id) 
        REFERENCES departments(id), 
    CONSTRAINT FK_Job FOREIGN KEY (job_id) 
        REFERENCES jobs(id)
);

BULK INSERT departments
FROM 'C:\Files\departments.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);

BULK INSERT jobs
FROM 'C:\Files\jobs.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);



BULK INSERT hire_employees
FROM 'C:\Files\hired_employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);



