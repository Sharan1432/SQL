-- 1.

use PwSkill;

create table employess(
emp_id int not null primary key,
emp_name text not null,
age int check(age>=18),
email varchar(500) unique,
salary decimal default 30000
);

/* 2.
Constraints are rules applied to columns in a database table to ensure the accuracy and reliability of the data. They play a crucial role in maintaining data integrity by preventing invalid data from being entered into the database. Here are some common types of constraints and their purposes, along with examples:

1. Primary Key Constraint
Purpose: Ensures that each row in a table has a unique identifier and prevents duplicate records. Example: The emp_id column in the employees table can be defined as the primary key.

sql
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT
);
2. Foreign Key Constraint
Purpose: Enforces a link between the data in two tables and ensures referential integrity. Example: The department_id in the employees table can reference the department_id in the departments table.

sql
CREATE TABLE departments (
    department_id INT NOT NULL PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
3. Unique Constraint
Purpose: Ensures that all values in a column are unique across the table. Example: The email column in the employees table should be unique for each employee.

sql
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    age INT
);
4. Not Null Constraint
Purpose: Ensures that a column cannot have NULL values. Example: The emp_name column in the employees table should not be NULL.

sql
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    age INT
);
5. Check Constraint
Purpose: Ensures that the values in a column satisfy a specific condition. Example: The age column in the employees table should have a minimum value of 18.

sql
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT CHECK (age >= 18)
);
6. Default Constraint
Purpose: Provides a default value for a column when no value is specified during an insert operation. Example: The salary column in the employees table should have a default value of 30,000.

sql
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL DEFAULT 30000
);
Benefits of Constraints:
Data Integrity: Constraints prevent invalid data from being entered, ensuring the consistency and accuracy of the data.

Reliability: By enforcing rules, constraints ensure that the database behaves predictably.

Relationship Management: Foreign keys maintain the relationships between tables, preserving referential integrity.

Uniqueness: Unique constraints prevent duplicate values, ensuring the uniqueness of data.

Mandatory Fields: Not Null constraints ensure that essential fields always have a value. */

/*3. 
NOT NULL Constraint:
Purpose: The NOT NULL constraint is applied to a column to ensure that every row must have a value in that column. This constraint enforces the integrity of the data by preventing the storage of NULL values in the specified column.

Use Cases:

Mandatory Fields: Certain fields are critical for the operation of the database, such as an employee’s name or a transaction date. By applying the NOT NULL constraint, you ensure that these critical fields always have a value.

Data Consistency: It helps maintain data consistency by ensuring that there are no gaps or missing values in essential columns.

CREATE TABLE employees (
    emp_id INT NOT NULL,
    emp_name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL
);
Primary Key and NULL Values:
Can a Primary Key Contain NULL Values?: No, a primary key cannot contain NULL values. The primary key is used to uniquely identify each row in a table. By definition, it must contain unique and non-null values for each record.
Justification:

Uniqueness: A primary key enforces uniqueness for each record, and a NULL value does not contribute to this uniqueness. If NULL values were allowed, it would be impossible to uniquely identify records that contain NULL.

Referential Integrity: The primary key is often referenced by foreign keys in other tables. Allowing NULL values in a primary key would break referential integrity, as foreign keys would not be able to consistently reference a unique, non-null value.
CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL
);
*/

