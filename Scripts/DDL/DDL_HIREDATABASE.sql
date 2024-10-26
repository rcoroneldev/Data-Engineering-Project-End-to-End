-- Create database

create database hiredatabase_db;
use hiredatabase_db;

-- 1. Create table departments

CREATE TABLE departments (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    department VARCHAR(200) NOT NULL        
);

-- 2. Create table jobs

CREATE TABLE jobs (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    job VARCHAR(200) NOT NULL              
);

-- 3. Create table hire_employees

CREATE TABLE hire_employees (
    id INTEGER PRIMARY KEY IDENTITY(1,1),   
    name VARCHAR(200) NOT NULL,             
    datetime VARCHAR(200) NOT NULL,         
    job_id INTEGER NOT NULL,                -- Foreign key until the table jobs
    department_id INTEGER NOT NULL,         -- Foreign key the table jobs departments
    CONSTRAINT FK_Department FOREIGN KEY (department_id) 
        REFERENCES departments(id) ON DELETE CASCADE, 
    CONSTRAINT FK_Job FOREIGN KEY (job_id) 
        REFERENCES jobs(id) ON DELETE SET NULL
);

