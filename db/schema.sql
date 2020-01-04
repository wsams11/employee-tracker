DROP DATABASE IF EXISTS companyDB;

CREATE DATABASE companyDB;

USE companyDB;

CREATE TABLE department(
  id INT AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(30)
)

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY 
    title VARCHAR(30) NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES department (id)
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NULL,
  manager_id INT NULL,
  
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE CASCADE,
  FOREIGN KEY(role_id) REFERENCES role(id) ON DELETE CASCADE
);

INSERT INTO department (name) 
VALUES ("Sales"), ("Engineering"),("Legal"), ("Finance"),("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 60000 ,1),  
("Software Engineer", 80000,2),
("Lawyer", 100000, 3),
("Accountant",75000,4),
("Salesperson", 30000 ,1),
("Lead Engineer", 95000,2),
("Legal Team Lead", 90000, 3),



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("William", "Sams", 1, 10),
("Chaz", "Johnson", 2, 20),
("Vas", "Annos",3. 30),
("Tom","Ford",4, 40);

