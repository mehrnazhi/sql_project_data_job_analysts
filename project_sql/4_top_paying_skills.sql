SELECT skills,
    ROUND(AVG(salary_year_avg), 0) AS avrage_salary
FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY skills
ORDER BY avrage_salary DESC
LIMIT 25
    /* heres breakdown of the results for top paying skills :
     Shift toward analytics engineering & big data: Top pay is driven by skills like PySpark, Databricks, Scala, and Elasticsearch, indicating strong demand for analysts who can work with large-scale, distributed data systems.
     
     High value on cloud, DevOps, and production skills: Tools such as Kubernetes, GitLab, Jenkins, Airflow, and GCP show that analysts who can deploy, automate, and operate in cloud environments earn significantly more.
     
     ML-enabled analytics boosts compensation: Skills in scikit-learn, DataRobot, and Watson suggest that analysts who can build or integrate machine-learning models command higher salaries than traditional BI-focused roles.
     
     [
     {
     "skills": "pyspark",
     "avrage_salary": "208172"
     },
     {
     "skills": "bitbucket",
     "avrage_salary": "189155"
     },
     {
     "skills": "couchbase",
     "avrage_salary": "160515"
     },
     {
     "skills": "watson",
     "avrage_salary": "160515"
     },
     {
     "skills": "datarobot",
     "avrage_salary": "155486"
     },
     {
     "skills": "gitlab",
     "avrage_salary": "154500"
     },
     {
     "skills": "swift",
     "avrage_salary": "153750"
     },
     {
     "skills": "jupyter",
     "avrage_salary": "152777"
     },
     {
     "skills": "pandas",
     "avrage_salary": "151821"
     },
     {
     "skills": "elasticsearch",
     "avrage_salary": "145000"
     },
     {
     "skills": "golang",
     "avrage_salary": "145000"
     },
     {
     "skills": "numpy",
     "avrage_salary": "143513"
     },
     {
     "skills": "databricks",
     "avrage_salary": "141907"
     },
     {
     "skills": "linux",
     "avrage_salary": "136508"
     },
     {
     "skills": "kubernetes",
     "avrage_salary": "132500"
     },
     {
     "skills": "atlassian",
     "avrage_salary": "131162"
     },
     {
     "skills": "twilio",
     "avrage_salary": "127000"
     },
     {
     "skills": "airflow",
     "avrage_salary": "126103"
     },
     {
     "skills": "scikit-learn",
     "avrage_salary": "125781"
     },
     {
     "skills": "jenkins",
     "avrage_salary": "125436"
     },
     {
     "skills": "notion",
     "avrage_salary": "125000"
     },
     {
     "skills": "scala",
     "avrage_salary": "124903"
     },
     {
     "skills": "postgresql",
     "avrage_salary": "123879"
     },
     {
     "skills": "gcp",
     "avrage_salary": "122500"
     },
     {
     "skills": "microstrategy",
     "avrage_salary": "121619"
     }
     ]
     */