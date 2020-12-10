select STUDENT.NAME,COMPANY.NAME,PLACEMENTS.PACKAGE from STUDENT,COMPANY,PLACEMENTS WHERE (select MAX(PACKAGE) FROM PLACEMENTS) AND STUDENT.ID = PLACEMENTS.S_ID AND COMPANY.ID = PLACEMENTS.C_ID;

SELECT S.NAME AS STUDENT, S.DEPT AS DEPARTMENT,  CASE  WHEN P.S_ID =G NULL THEN 'YES' ELSE 'NO'  END  AS PLACED,C.NAME AS COMPANY,P.PACKAGE FROM STUDENT S LEFT JOIN PLACEMENTS P ON S.ID = P.S_ID LEFT JOIN COMPANY C ON C.ID = P.C_ID WHERE S.DEPT = 'ECE';
