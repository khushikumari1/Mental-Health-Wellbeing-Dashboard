-- Create Dimension Tables
CREATE TABLE IF NOT EXISTS dim_date AS
SELECT DISTINCT 
  DATE(Survey_Date) AS date_id,
  EXTRACT(YEAR FROM Survey_Date) AS year,
  EXTRACT(MONTH FROM Survey_Date) AS month,
  EXTRACT(DAY FROM Survey_Date) AS day
FROM `project.dataset.cleaned_data`;

CREATE TABLE IF NOT EXISTS dim_respondent AS
SELECT DISTINCT 
  GENERATE_UUID() AS respondent_id,
  Respondent_Age,
  Respondent_Gender,
  Respondent_Country
FROM `project.dataset.cleaned_data`;

-- Create Fact Table
CREATE TABLE IF NOT EXISTS fact_mental_health AS
SELECT
  d.date_id,
  r.respondent_id,
  c.Stress_Score,
  c.Anxiety_Score,
  c.Depression_Score
FROM `project.dataset.cleaned_data` c
JOIN dim_date d ON DATE(c.Survey_Date) = d.date_id
JOIN dim_respondent r 
  ON c.Respondent_Age = r.Respondent_Age
 AND c.Respondent_Gender = r.Respondent_Gender
 AND c.Respondent_Country = r.Respondent_Country;
