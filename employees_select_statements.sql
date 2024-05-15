CREATE DATABASE employees_db;
use employees_db;

CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
    );
    
CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'Human Resources'),
		(2, 'Upper Management'),
        (3, 'E-commerce'),
        (4, 'Advertising'),
        (5, 'Marketing');

INSERT INTO Employees (employee_id, name, age, department_id)
VALUES  (1, 'John Smith', 54, 2),
		(2, 'Alice Smith', 43, 1),
        (3, 'George Thomas', 44, 3),
        (4, 'Luke Thoms', 65, 2),
        (5, 'Tina Mason', 34, 4),
        (6, 'Lisa Johnson', 28, 5),
        (7, 'Michael Jones', 26, 3);


SELECT DISTINCT d.department_name FROM Employees e, Departments d WHERE e.department_id = d.department_id;

SELECT d.department_name, COUNT(*) FROM Employees e, Departments d WHERE e.department_id = d.department_id GROUP BY e.department_id;

SELECT * FROM Employees WHERE age BETWEEN 25 AND 30