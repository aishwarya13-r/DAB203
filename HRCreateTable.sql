
PRAGMA foreign_keys = ON;

/* =========================================================
   CREATE TABLES
   Tables are created in dependency order
   ========================================================= */

/* ---------- regions ----------
   Stores high-level geographic regions
*/
CREATE TABLE regions (
    region_id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_name VARCHAR(25) NOT NULL
);

/* ---------- countries ----------
   Each country belongs to one region
*/
CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(40),
    region_id INTEGER NOT NULL,
    FOREIGN KEY (region_id)
        REFERENCES regions(region_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

/* ---------- locations ----------
   Physical office locations in a country
*/
CREATE TABLE locations (
    location_id INTEGER PRIMARY KEY AUTOINCREMENT,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(25),
    country_id CHAR(2) NOT NULL,
    FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

/* ---------- jobs ----------
   Job titles with salary ranges
*/
CREATE TABLE jobs (
    job_id INTEGER PRIMARY KEY AUTOINCREMENT,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(8,2),
    max_salary DECIMAL(8,2)
);

/* ---------- departments ----------
   Company departments located at a location
*/
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY AUTOINCREMENT,
    department_name VARCHAR(30) NOT NULL,
    location_id INTEGER,
    FOREIGN KEY (location_id)
        REFERENCES locations(location_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

/* ---------- employees ----------
   Employee records
   manager_id is a self-referencing foreign key
*/
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id INTEGER NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    manager_id INTEGER,
    department_id INTEGER,
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

/* ---------- dependents ----------
   Family members linked to employees
*/
CREATE TABLE dependents (
    dependent_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    relationship VARCHAR(25) NOT NULL,
    employee_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

PRAGMA foreign_keys = OFF;

DELETE FROM dependents;
DELETE FROM employees;
DELETE FROM departments;
DELETE FROM jobs;
DELETE FROM locations;
DELETE FROM countries;
DELETE FROM regions;

PRAGMA foreign_keys = ON;


