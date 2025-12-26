SELECT job_location,
    job_title_short,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onside'
    END AS location_category
FROM job_postings_fact;
-- count how many jobs are in each category:
SELECT COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onside'
    END AS location_category
FROM job_postings_fact
GROUP BY location_category;