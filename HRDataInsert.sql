PRAGMA foreign_keys = ON;

/* =========================
   regions
   ========================= */
INSERT INTO regions (region_name) VALUES
('Europe'),
('Americas'),
('Asia'),
('Middle East and Africa');

INSERT OR IGNORE INTO countries (country_id, country_name, region_id) VALUES
('AR','Argentina',2),
('AU','Australia',3),
('BE','Belgium',1),
('BR','Brazil',2),
('CA','Canada',2),
('CH','Switzerland',1),
('CN','China',3),
('DE','Germany',1),
('DK','Denmark',1),
('EG','Egypt',4),
('FR','France',1),
('HK','HongKong',3),
('IL','Israel',4),
('IN','India',3),
('IT','Italy',1),
('JP','Japan',3),
('KW','Kuwait',4),
('MX','Mexico',2),
('NG','Nigeria',4),
('NL','Netherlands',1),
('SG','Singapore',3),
('UK','United Kingdom',1),
('US','United States of America',2),
('ZM','Zambia',4),
('ZW','Zimbabwe',4);

/* =========================
   locations
   ========================= */
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES
('2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
('2011 Interiors Blvd','99236','South San Francisco','California','US'),
('2004 Charade Rd','98199','Seattle','Washington','US'),
('147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
('8204 Arthur St',NULL,'London',NULL,'UK'),
('Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),
('Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

/* =========================
   jobs
   ========================= */
INSERT INTO jobs (job_title, min_salary, max_salary) VALUES
('Public Accountant',4200,9000),
('Accounting Manager',8200,16000),
('Administration Assistant',3000,6000),
('President',20000,40000),
('Administration Vice President',15000,30000),
('Accountant',4200,9000),
('Finance Manager',8200,16000),
('Human Resources Representative',4000,9000),
('Programmer',4000,10000),
('Marketing Manager',9000,15000),
('Marketing Representative',4000,9000),
('Public Relations Representative',4500,10500),
('Purchasing Clerk',2500,5500),
('Purchasing Manager',8000,15000),
('Sales Manager',10000,20000),
('Sales Representative',6000,12000),
('Shipping Clerk',2500,5500),
('Stock Clerk',2000,5000),
('Stock Manager',5500,8500);

/* =========================
   departments
   ========================= */
INSERT INTO departments (department_name, location_id) VALUES
('Administration',3),
('Marketing',4),
('Purchasing',3),
('Human Resources',5),
('Shipping',2),
('IT',1),
('Public Relations',7),
('Sales',6),
('Executive',3),
('Finance',3),
('Accounting',3);

/* =========================
   employees
   ========================= */
INSERT INTO employees
(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES
('Steven','King','steven.king@sqltutorial.org','515.123.4567','2000-06-17',4,24000,NULL,9),
('Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','2001-09-21',5,17000,1,9),
('Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000,1,9),
('Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','2012-01-03',9,9000,3,6),
('Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','2015-05-21',9,6000,4,6),
('David','Austin','david.austin@sqltutorial.org','590.423.4569','2012-06-25',9,4800,4,6),
('Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','2000-02-05',9,4800,4,6),
('Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','2017-02-07',9,4200,4,6),
('Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','2001-08-17',7,12000,2,10),
('Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','2007-08-16',6,9000,9,10),
('John','Chen','john.chen@sqltutorial.org','515.124.4269','2008-09-28',6,8200,9,10),
('Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','2009-09-30',6,7700,9,10),
('Jose Manuel','Urman','jose manuel.urman@sqltutorial.org',NULL,'2011-03-07',6,7800,9,10),
('Luis','Popp','luis.popp@sqltutorial.org',NULL,'2014-12-07',6,6900,9,10);

/* =========================
   dependents
   ========================= */
INSERT INTO dependents (first_name, last_name, relationship, employee_id) VALUES
('Jennifer','King','Child',1),
('Johnny','Kochhar','Child',2),
('Bette','De Haan','Child',3),
('Grace','Faviet','Child',10),
('Matthew','Chen','Child',11),
('Joe','Sciarra','Child',12),
('Christian','Urman','Child',13),
('Zero','Popp','Child',14);
