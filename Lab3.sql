//Lab3: Sibghat Ullah Rayyan Shaikh 1831773042

//Activity 1:

SELECT Last_Name, Hire_Date FROM emps WHERE Hire_Date like '1994%'

//Activigty 2:

SELECT Last_Name, Salary, Commission_pct FROM emps 
WHERE Commission_pct IS NOT NULL ORDER BY Salary DESC, 
Commission_pct DESC

//Activity 3:

SELECT LAST_Name FROM emps WHERE Last_Name like '%a%' 
AND Last_Name LIKE '%e%'

//Activity 4:

SELECT e.Last_Name, d.Department_Name, e.Department_id FROM emps e, depts d
 WHERE e.Department_id = d.Department_id

//Activity 5:

SELECT e.Last_Name, d.Department_Name, d.Location_id, l.City 
FROM emps e, depts d, locs l WHERE Commission_pct IS NOT NULL 
AND l.Location_id = d.Location_id AND e.Department_id = d.Department_id

//Activity 6:

SELECT e.last_name, e.Job_Id, e.department_id, d.Department_Name 
FROM emps e, depts d, locs l WHERE l.City = 'Toronto' 
AND l.Location_id = d.Location_id AND e.Department_id = d.Department_id

//Activity 7:

SELECT Last_Name,Salary,Commission_pct FROM emps 
WHERE Commission_pct IS NOT NULL ORDER BY Salary DESC, 
Commission_pct DESC

//Activity 8:

SELECT worker.Last_Name AS "Employee" , worker.Employee_Id AS "Emp#", 
manager.last_name AS "Manager" , manager.Manager_id AS "Mgr#" 
FROM emps worker JOIN emps manager 
ON(worker.Manager_id = manager.Employee_Id)

//Activity 9:


SELECT ROUND(MAX(salary),0) 'Maximum', ROUND(MIN(salary),0) 
'Minimum', ROUND(SUM(salary),0) 'Sum', ROUND(AVG(salary),0) 'Average' 
FROM emps

//Activity 10:


SELECT job_id, ROUND(MAX(salary),0) "Maximum", 
ROUND(MIN(salary),0) "Minimum", ROUND(SUM(salary),0) "Sum", 
ROUND(AVG(salary),0) "Average" 
FROM emps GROUP BY job_id

//Activity 11:

SELECT job_id, COUNT(*) AS 'COUNT(*)' FROM emps GROUP BY job_id

//Activity 12:

SELECT manager_id, ROUND(MIN(salary),0) AS 'MIN(SALARY)'
FROM emps
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;

//Activity 13(Homework):


SELECT depts.Department_Name AS "Name",depts.Location_id "Location" , 
COUNT(*) AS "Number of people", ROUND(AVG(Salary),2) AS "Salary" 
FROM depts, emps WHERE depts.Department_id = emps.Department_Id 
GROUP by depts.Department_Name,depts.Location_id

