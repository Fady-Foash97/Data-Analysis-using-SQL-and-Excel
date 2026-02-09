-- Add a new column in employee table called branch_no.
ALTER TABLE employee ADD COLUMN branch_no VARCHAR(10);
-- Attach the branch_no column in employee table to the same column in branch table
ALTER TABLE employee ADD CONSTRAINT FOREIGN KEY (branch_no)
REFERENCES branch(branch_no);
-- Add Employees in branch_
UPDATE employee SET branch_no = 'B001' WHERE emp_id = 'E101';
UPDATE employee SET branch_no = 'B001' WHERE emp_id = 'E102';
UPDATE employee SET branch_no = 'B001' WHERE emp_id = 'E103';
UPDATE employee SET branch_no = 'B001' WHERE emp_id = 'E104';
UPDATE employee SET branch_no = 'B002' WHERE emp_id = 'E105';
UPDATE employee SET branch_no = 'B003' WHERE emp_id = 'E106';
UPDATE employee SET branch_no = 'B002' WHERE emp_id = 'E107';
UPDATE employee SET branch_no = 'B002' WHERE emp_id = 'E108';
UPDATE employee SET branch_no = 'B002' WHERE emp_id = 'E109';
UPDATE employee SET branch_no = 'B004' WHERE emp_id = 'E110';
UPDATE employee SET branch_no = 'B003' WHERE emp_id = 'E111';

Select * FROM employee;

SELECT branch_no, COUNT(emp_id) AS Number_of_employees FROM employee
GROUP BY branch_no;






