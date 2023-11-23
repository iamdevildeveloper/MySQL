-- Create a Database or Schema--

CREATE SCHEMA `school`; 
-- or we can use -- 
CREATE DATABASE `school`; 


------------------------------------------------------------------------------------------------------
-- Data types --
-- In MySQL, data types are used to define the kind of data that can be stored in a column of a table. Here's an explanation of some common MySQL data types in simpler terms:

-- INT (Integer):
-- Represents whole numbers (e.g., 1, 100, -5).
-- Example: age INT for storing ages.

-- VARCHAR(n) (Variable Character):
-- Holds variable-length character strings.
-- "n" represents the maximum number of characters the column can store.
-- Example: name VARCHAR(50) for storing names up to 50 characters long.

-- CHAR(n) (Fixed-length Character):
-- Similar to VARCHAR but stores a fixed number of characters.
-- Always reserves the specified amount of space, padding with spaces if needed.
-- Example: country CHAR(2) for storing country codes.

-- TEXT:
-- Holds large amounts of text data.
-- Suitable for longer strings compared to VARCHAR.
-- Example: description TEXT for storing detailed descriptions.

-- DATE:
-- Stores dates in 'YYYY-MM-DD' format.
-- Example: birth_date DATE for storing birthdates.

-- TIME:
-- Stores time in 'HH:MM:SS' format.
-- Example: meeting_time TIME for storing meeting times.

-- DATETIME:
-- Combines date and time in 'YYYY-MM-DD HH:MM:SS' format.
-- Example: timestamp DATETIME for storing both date and time.

-- FLOAT and DOUBLE:
-- Store floating-point numbers (decimals).
-- DOUBLE has more precision than FLOAT.
-- Example: price FLOAT for storing prices with decimals.

-- BOOLEAN or BOOL:
-- Represents true or false values.
-- Example: is_active BOOLEAN for storing whether something is active or not.

-- TINYINT, SMALLINT, MEDIUMINT, BIGINT:
-- Different sizes of integer types, allowing you to store larger or smaller numbers.
-- Example: quantity TINYINT for storing a small number of items.
-- These data types help define the characteristics of each column in a MySQL table, ensuring that the right kind of data is stored and making it easier to retrieve and manipulate that data later.
------------------------------------------------------------------------------------------------------


-- Create a table --
CREATE TABLE `students` (
    `studentId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(250) NOT NULL,
    `age` SMALLINT NOT NULL,
    `class` SMALLINT NOT NULL
);
--This SQL statement is used to create a table named students with the following columns:

--studentId (INT):
--Data Type: Integer (INT)
--Attribute: NOT NULL - This means that the studentId cannot have a NULL value.
--Attribute: AUTO_INCREMENT - This instructs the database to automatically generate a unique integer value for this column, typically used for primary keys.
--Primary Key: PRIMARY KEY - This designates studentId as the primary key for the table, ensuring each value is unique.

--name (VARCHAR(250)):
--Data Type: Variable Character (VARCHAR) with a maximum length of 250 characters.
--Attribute: NOT NULL - Ensures that the name cannot have a NULL value.

--age (SMALLINT):
--Data Type: Small Integer (SMALLINT).
--Attribute: NOT NULL - Ensures that the age cannot have a NULL value.

--class (SMALLINT):
--Data Type: Small Integer (SMALLINT).
--Attribute: NOT NULL - Ensures that the class cannot have a NULL value.

--In summary, this students table is designed to store information about students. 
--Each student will have a unique identifier (studentId), a name (name), an age (age), and a class (class). The studentId is the primary key and is automatically incremented for each new entry. The NOT NULL
-- The `students` table consists of columns: studentId, name, age, and class.
-- Each entry, for example, (1, 'Kishan', 24, 12), represents a row in the table.
------------------------------------------------------------------------------------------------------



-- Inserting a new entry into the students table without specifying studentId (uses AUTO_INCREMENT).
INSERT INTO `students` (`name`, `age`, `class`) VALUES ('Kishan', 24, 16);
-- Note: The studentId is automatically assigned due to the AUTO_INCREMENT property.
-- If you want to specify the studentId, you can do so, but it's generally not recommended for large databases.
INSERT INTO `students` (`studentId`, `name`, `age`, `class`) VALUES (2, 'Suraj', 23, 14);
-- Using AUTO_INCREMENT for the primary key is preferred for better scalability.
-- It's essential to avoid duplicating values in the PRIMARY KEY column, as it must be unique for each row.
-- We can add multiple entry in one query
INSERT INTO `students` (`name`, `age`, `class`) VALUES 
    ('Rahul', 26, 12),
    ('Ankit', 24, 13),
    ('Harsh', 22, 15)
-------------------------------------------------------------------------------------------------------


-- Select Query --
-- Here we are saying that get all data from students table
SELECT * FROM `students`
-- We can add conditions to get a specific data. EG :
-- Here we are saying that get data where studentId is 2
SELECT * FROM `students` WHERE `studentId` = 2
-- We can also get also sort data by using ORDER BY 
-- Here is how you can sort data for getting latest result at the top.
-- ORDER BY uses ASC and DESC for sorting and you have to add it in query to get results.
SELECT * FROM `students` ORDER BY `studentId` DESC 


