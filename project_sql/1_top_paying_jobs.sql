/*
Question: What are the top-paying data anlyst jobs?
-Identify the top 10 highest-paying Data Analyst roles that are avaiable remotely.
-Focuses on the job postings with specified salaries (remove nulls).
-Why? Highlight the top-paying oppurtunities for Data Analysts, offering insights into Employer
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg is NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10