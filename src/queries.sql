-- query_01_extract_base_features.sql
-- Description: Extract consolidated borrower data, filtering out obvious extreme age anomalies.

-- TODO 8: Write a query that joins 'applicants' (alias 'a') and 'loans' (alias 'l').
-- Filter to include only records where person_age is less than 100.
SELECT
    a.applicant_id, a.person_age, a.person_income, a.person_emp_length,
    l.loan_amnt, l.loan_int_rate, l.loan_status
FROM applicants a
JOIN loans l
    ON a.applicant_id = l.applicant_id
WHERE a.person_age < 100;
