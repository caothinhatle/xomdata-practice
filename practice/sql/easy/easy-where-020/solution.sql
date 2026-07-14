-- Xom Data · Patients with blood type O+
-- Problem: https://xomdata.com/practice/easy-where-020
-- Solved: 2026-07-14

SELECT full_name, blood_type
FROM patients
WHERE blood_type = 'O+'
ORDER BY full_name
