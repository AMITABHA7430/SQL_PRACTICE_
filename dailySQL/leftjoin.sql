

-- LeetCode 1378: Replace Employee ID With The Unique Identifier

-- Employees contains the employee's id and name.
-- EmployeeUNI contains the unique_id for some employees.

-- We use LEFT JOIN because we want ALL employees,
-- even if they do not have a matching unique_id.
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees

-- Match both tables using the employee's id
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;
