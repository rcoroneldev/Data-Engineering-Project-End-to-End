create schema hire_employee

use hire_employee

CREATE TABLE departments (
        id INTEGER ,   
        department VARCHAR(200)       
);

CREATE TABLE jobs (
    id INTEGER ,   
    job VARCHAR(200)            
);

CREATE TABLE hire_employees (
    id_department INTEGER ,   
    department VARCHAR(200) , 
    id_hire_employed INTEGER , 
    name VARCHAR(200) , 
    job_id INTEGER ,
    department_id INTEGER ,
    age INTEGER ,
    contract_type VARCHAR(200) , 
    year INTEGER ,   
    day INTEGER ,
    month VARCHAR(200),  
    job VARCHAR(200)
);

describe table departments

-- DESCRIBE TABLE 

describe extended hire_employees
describe extended jobs

-- SQL QUEARY

select * from departments
select * from jobs
select * from hire_employees

-- DROP TABLE 

drop table hire_employees 
drop table hire_employees 
