SELECT job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_est,
    EXTRACT(
        MONTH
        FROM job_posted_date
    ) AS date_month
FROM job_postings_fact;
WITH remote_job_skills AS (
    SELECT sj.skill_id,
        COUNT(*) AS skill_count
    FROM skills_job_dim AS sj
        INNER JOIN job_postings_fact AS jp ON sj.job_id = jp.job_id
    WHERE jp.job_work_from_home = TRUE
        AND jp.job_title_short = 'Data Analyst'
    GROUP BY sj.skill_id
)
SELECT sd.skill_id,
    sd.skills AS skill_name,
    rjs.skill_count
FROM remote_job_skills AS rjs
    INNER JOIN skills_dim AS sd ON rjs.skill_id = sd.skill_id
ORDER BY rjs.skill_count DESC
LIMIT 5;