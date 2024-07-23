SELECT 
    b.employee_id as employee_id,
    b.name as name,
    COUNT(a.employee_id) as reports_count,
    ROUND(AVG(a.age)) as average_age
FROM
    Employees as a JOIN Employees as b ON a.reports_to = b.employee_id
GROUP BY
    a.reports_to
ORDER BY
    b.employee_id
