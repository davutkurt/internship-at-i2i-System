SELECT v_dep.DEPARTMENT_ID, v_emp.FIRST_NAME, v_emp.SALARY, DENSE_RANK() 
OVER (PARTITION BY v_dep.DEPARTMENT_ID ORDER BY v_emp.SALARY) AS RANK
FROM HR.EMPLOYEES v_emp, HR.DEPARTMENTS v_dep
WHERE v_emp.DEPARTMENT_ID = v_dep.DEPARTMENT_ID;
