-- Create database

create database hireemployee;
use hireemployee;

-- DDL SQL SERVER 

-- START

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

-- END


