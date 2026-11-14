SELECT * FROM january_jobs


CREATE TABLE march_jobs AS
SELECT * FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3

SELECT * FROM february_jobs

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs
UNION
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs
UNION ALL
