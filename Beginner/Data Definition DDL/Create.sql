-- Select the database to work with
USE mydatabase;

-- Create the 'persons' table to store basic personal information
-- Columns:
-- id           : Unique identifier for each person (Primary Key)
-- person_name  : Name of the person (cannot be NULL)
-- birth_date   : Date of birth (optional)
-- phone        : Contact number (cannot be NULL)
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);