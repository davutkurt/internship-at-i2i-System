SELECT DISTINCT v_dep.DEPARTMENT_NAME, SUM(v_emp.SALARY) 
OVER(PARTITION BY v_dep.DEPARTMENT_NAME) AS TOTAL_SALARY FROM HR.EMPLOYEES v_emp 
JOIN HR.DEPARTMENTS v_dep ON v_emp.DEPARTMENT_ID = v_dep.DEPARTMENT_ID ORDER BY TOTAL_SALARY;
