PRAGMA foreign_keys = ON;

/* =========================
   regions
   ========================= */
INSERT INTO regions(region_id, region_name) VALUES
(1,'Europe'),
(2,'Americas'),
(3,'Asia'),
(4,'Middle East and Africa');

/* =========================
   countries
   ========================= */
INSERT INTO countries(country_id, country_name, region_id) VALUES
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
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),
(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),
(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),
(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),
(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

/* =========================
   jobs
   ========================= */
INSERT INTO jobs(job_id, job_title, min_salary, max_salary) VALUES
(1,'Public Accountant',4200,9000),
(2,'Accounting Manager',8200,16000),
(3,'Administration Assistant',3000,6000),
(4,'President',20000,40000),
(5,'Administration Vice President',15000,30000),
(6,'Accountant',4200,9000),
(7,'Finance Manager',8200,16000),
(8,'Human Resources Representative',4000,9000),
(9,'Programmer',4000,10000),
(10,'Marketing Manager',9000,15000),
(11,'Marketing Representative',4000,9000),
(12,'Public Relations Representative',4500,10500),
(13,'Purchasing Clerk',2500,5500),
(14,'Purchasing Manager',8000,15000),
(15,'Sales Manager',10000,20000),
(16,'Sales Representative',6000,12000),
(17,'Shipping Clerk',2500,5500),
(18,'Stock Clerk',2000,5000),
(19,'Stock Manager',5500,8500);

/* =========================
   departments
   ========================= */
INSERT INTO departments(department_id, department_name, location_id) VALUES
(1,'Administration',1700),
(2,'Marketing',1800),
(3,'Purchasing',1700),
(4,'Human Resources',2400),
(5,'Shipping',1500),
(6,'IT',1400),
(7,'Public Relations',2700),
(8,'Sales',2500),
(9,'Executive',1700),
(10,'Finance',1700),
(11,'Accounting',1700);

/* =========================
   employees
   ========================= */
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES
(100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','2000-06-17',4,24000,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','2001-09-21',5,17000,100,9),
(102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000,100,9),
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','2012-01-03',9,9000,102,6),
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','2015-05-21',9,6000,103,6),
(105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','2012-06-25',9,4800,103,6),
(106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','2000-02-05',9,4800,103,6),
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','2017-02-07',9,4200,103,6),
(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','2001-08-17',7,12000,101,10),
(109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','2007-08-16',6,9000,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','2008-09-28',6,8200,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','2009-09-30',6,7700,108,10),
(112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','2011-03-07',NULL,6,7800,108,10),
(113,'Luis','Popp','luis.popp@sqltutorial.org','2014-12-07',NULL,6,6900,108,10);

/* =========================
   dependents
   ========================= */
INSERT INTO dependents(dependent_id, first_name, last_name, relationship, employee_id) VALUES
(1,'Penelope','Gietz','Child',206),
(2,'Nick','Higgins','Child',205),
(3,'Ed','Whalen','Child',200),
(4,'Jennifer','King','Child',100),
(5,'Johnny','Kochhar','Child',101),
(6,'Bette','De Haan','Child',102),
(7,'Grace','Faviet','Child',109),
(8,'Matthew','Chen','Child',110),
(9,'Joe','Sciarra','Child',111),
(10,'Christian','Urman','Child',112),
(11,'Zero','Popp','Child',113);
