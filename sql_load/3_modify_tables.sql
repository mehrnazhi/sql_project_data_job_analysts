COPY company_dim
FROM 'D:\data Analyst\sql_project_data_job_analysts\csv_files\company_dim.csv' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY skills_dim
FROM 'D:\data Analyst\sql_project_data_job_analysts\csv_files\skills_dim.csv' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY job_postings_fact
FROM 'D:\data Analyst\sql_project_data_job_analysts\csv_files\job_postings_fact.csv' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY skills_job_dim
FROM 'D:\data Analyst\sql_project_data_job_analysts\csv_files\skills_job_dim.csv' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );