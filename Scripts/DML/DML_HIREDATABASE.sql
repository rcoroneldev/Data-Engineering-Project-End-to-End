-- Insert in the table departments
INSERT INTO departments (department) VALUES 
('Recursos Humanos'), 
('Finanzas');

-- Insert in the table jobs
INSERT INTO jobs (job) VALUES 
('Analista'), 
('Gerente');

-- Insertar algunos empleados
INSERT INTO hire_employees (name, datetime, department_id, job_id) 
VALUES 
('Juan Perez', '2024-10-26 09:00:00', 1, 1),
('Ana Garcia', '2024-10-26 10:00:00', 2, 2);