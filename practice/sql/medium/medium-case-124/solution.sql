-- Xom Data · Classify student academic performance
-- Problem: https://xomdata.com/practice/medium-case-124
-- Solved: 2026-07-17

SELECT
    st.full_name,
    st.student_code,
    ROUND(AVG(sc.final_score),2) AS avg_score,
    CASE
    WHEN AVG(sc.final_score) >= 9 THEN 'Excellent'
    WHEN AVG(sc.final_score) >= 8 THEN 'Good'
    WHEN AVG(sc.final_score) >= 7 THEN 'Fair'
    WHEN AVG(sc.final_score) >= 5 THEN 'Average'
    ELSE 'Poor'
    END AS grade,
    DENSE_RANK() OVER (ORDER BY AVG(sc.final_score) DESC) AS class_rank
FROM scores sc 
LEFT JOIN students st
ON st.id = sc.student_id
GROUP BY st.full_name
