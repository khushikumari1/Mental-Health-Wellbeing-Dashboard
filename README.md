# Mental Health Data Analysis and Visualization Project

## Overview
This repository documents the end-to-end process of analyzing mental health data collected via Google Forms, transforming and preparing the data using Excel and VBA tools, structuring it into a star schema data warehouse using BigQuery, and creating an interactive dashboard in Power BI. The project aims to uncover insights into mental health patterns and trends to support better decision-making in education, healthcare, and workplace settings.

---

📝 Participate in Our Survey

Your voice matters! 🌟 Join us in uncovering mental health trends and experiences to drive impactful change in education, healthcare, and beyond. Your insights can make a difference! 💙

👉 Fill Out the Survey Here - https://docs.google.com/forms/d/1NBIn-3A4Xbej4k5OmiIgVt-tHs2An7FhbmiyrUgRN8Q/viewform?edit_requested=true

💡 Your responses will be anonymous and used solely for research and analysis purposes. Thank you for helping us make a difference!

## Project Workflow

### 1. Data Collection
- **Tool Used:** Google Forms
- **Purpose:** A survey was designed to collect data from participants on various aspects of mental health, including demographic details, stress levels, coping mechanisms, and behavioral patterns.
- **Collected Data Fields:**
  - ID
  - Age
  - Gender
  - Field of Study
  - Mental Health Ratings
  - Lifestyle and Behavioral Factors (e.g., Physical Activity, Sleep, Substance Use)
  - Social Factors (e.g., Peer Support, Family Relationships)
  - Challenges (e.g., Workload Overwhelm, Discrimination)

The raw responses were exported as a CSV file for further processing.

---

### 2. Data Preparation and Transformation
- **Tools Used:** Excel, VBA
- **Steps Involved:**
  1. **Data Cleaning:**
     - Handled missing and inconsistent values.
     - Removed duplicates and irrelevant entries.
  2. **Column Renaming:**
     - Renamed columns for better readability and standardization using VBA. (See the `RenameColumns` VBA script provided in this repository.)
  3. **Data Transformation:**
     - Consolidated categorical variables.
     - Standardized numerical ranges and scales.
     - Generated calculated fields for analysis (e.g., aggregated stress levels, normalized ratings).
  
The cleaned and transformed dataset was exported as a CSV file for loading into the data warehouse.

---

### 3. Data Warehousing
- **Tool Used:** BigQuery
- **Steps Involved:**
  1. **Star Schema Design:**
     - Designed a star schema with the following tables:
       - **Fact Table:** Mental health metrics and related attributes.
       - **Dimension Tables:**
         - Demographics (ID, Age, Gender, Field of Study)
         - Behavioral Factors (Physical Activity, Diet, Sleep)
         - Social Factors (Family Support, Peer Support)
         - Challenges (Workload, Discrimination)
     
  2. **Data Loading:**
     - Imported the transformed data from Excel into BigQuery.
     - Optimized table relationships and indices for efficient querying.

---

### 4. Data Analysis and Visualization
- **Tool Used:** Power BI
- **Steps Involved:**
  1. **Data Integration:**
     - Connected Power BI to the BigQuery data warehouse.
     - Imported fact and dimension tables for analysis.
  
  2. **Dashboard Design:**
     - Created interactive visualizations, including:
       - Demographic distributions.
       - Anxiety and mental health rating trends.
       - Correlations between physical activity, workload, and mental health.
       - Impact of family support and peer networks.
     - Incorporated filters for age, gender, and field of study to enable customized insights.

  3. **Insights Presentation:**
     - Highlighted key findings, such as the relationship between workload and anxiety levels, and the positive impact of physical activity on mental health.

---

## Project Structure
```
.
├── raw_data.csv                # Raw data exported from Google Forms
├── cleaned_data.csv            # Transformed data after ETL operations
├── RenameColumns.vba           # VBA script for renaming and transforming columns in Excel
├── star_schema_creation.sql    # SQL script for creating the star schema in BigQuery
├── MentalHealthDashboard.pbix  # Power BI dashboard file
├── README.md                   # Project documentation
```

---

## How to Use This Repository

1. **Prerequisites:**
   - Install Microsoft Excel and Power BI Desktop.
   - Set up a BigQuery project with appropriate permissions.

2. **Run ETL Operations:**
   - Open the `raw_data.csv` file in Excel.
   - Apply the `RenameColumns.vba` script for column transformations.
   - Save the cleaned data as `cleaned_data.csv`.

3. **Load Data into BigQuery:**
   - Use the `star_schema_creation.sql` script to create the schema.
   - Load `cleaned_data.csv` into the fact and dimension tables.

4. **Visualize Data in Power BI:**
   - Open the `MentalHealthDashboard.pbix` file.
   - Connect it to your BigQuery project.
   - Explore the interactive dashboard to uncover insights.

---

## Key Results and Insights
1. Younger participants (18–25) and students in high-stress disciplines reported higher anxiety levels.
2. Regular physical activity and strong family support positively correlated with improved mental health ratings.
3. Overwhelming workloads were a major contributor to increased anxiety and lower mental health ratings.
4. Community and peer support were found to significantly reduce feelings of loneliness and stress.

---

## Future Work
- Expanding the dataset to include more diverse demographics.
- Enhancing predictive analytics using advanced machine learning models.
- Developing automated data pipelines for real-time updates.

---

## Acknowledgments
- Participants of the mental health survey.
- Tools and platforms: Google Forms, Excel, VBA, BigQuery, and Power BI.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

