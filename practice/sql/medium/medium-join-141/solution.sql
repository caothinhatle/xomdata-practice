-- Xom Data · Consultation revenue by doctor
-- Problem: https://xomdata.com/practice/medium-join-141
-- Solved: 2026-08-17

SELECT
    f.faculty_name,
    d.full_name AS doctor_name,
    COUNT(DISTINCT m.id) AS visit_count,
    AVG(m.visit_fee) AS avg_exam_fee,
    SUM(m.visit_fee) AS total_exam_fee,
    RANK() OVER(ORDER BY SUM(m.visit_fee) DESC) AS overall_rank,
    DENSE_RANK() OVER(PARTITION BY f.faculty_name ORDER BY SUM(m.visit_fee) DESC) AS rank_in_faculty
FROM medical_visits m
LEFT JOIN doctors d ON m.doctor_id = d.id
LEFT JOIN faculties f on d.faculty_id = f.id
GROUP BY 2, 1
ORDER BY 5 DESC, 2
LIMIT 15
