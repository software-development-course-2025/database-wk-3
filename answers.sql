-- ========================================
-- Assignment: Data Manipulation and Transactions
-- answers.sql
-- ========================================

-- ========================================
-- Question 1 🧑‍🎓
-- Create the 'student' table
-- ========================================

-- Drop the table if it already exists (useful for testing)
DROP TABLE IF EXISTS student;

-- Create the 'student' table with proper constraints
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incrementing primary key
    fullName VARCHAR(100) NOT NULL,     -- Full name, max 100 characters, required
    age INT CHECK (age > 0)             -- Age must be a positive integer
);

-- ========================================
-- Question 2 ➕
-- Insert at least 3 records into the 'student' table
-- ========================================

-- Insert sample student records
INSERT INTO student (fullName, age) VALUES
('Alice Silva', 18),
('Bruno Costa', 19),
('Carla Mendes', 21);

-- ========================================
-- Question 3 🔄
-- Update the age of the student with ID 2 to 20
-- ========================================

-- Begin transaction for safety (optional but good practice)
START TRANSACTION;

-- Update age for student with ID 2
UPDATE student
SET age = 20
WHERE id = 2;

-- Commit the transaction
COMMIT;

-- You can uncomment the following line to check the result
-- SELECT * FROM student;
