SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, 
    GENDER, COUNT(DISTINCT O.USER_ID) AS USERS
FROM ONLINE_SALE O
JOIN USER_INFO U
ON O.USER_ID = U.USER_ID
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
HAVING GENDER IS NOT NULL
ORDER BY YEAR, MONTH, GENDER