
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