# Top_UK_YouTubers

# Objective
- What is the key pain point? 

The Head of Marketing wants to find out who the top YouTubers are in 2024 to decide on which YouTubers would be best to run marketing campaigns throughout the rest of the year.


Insights and recommendations are provided on the following key areas: 
- subscriber count
- total views
- total videos, and
- engagement metrics

This will help the marketing team make informed decisions about which YouTubers to collaborate with for their marketing campaigns.

## User story 

As the Head of Marketing, I want to use a dashboard that analyses YouTube channel data in the UK . 

This dashboard should allow me to identify the top performing channels based on metrics like subscriber base and average views. 

With this information, I can make more informed decisions about which Youtubers are right to collaborate with, and therefore maximize how effective each marketing campaign is.

# Data source 

- What data is needed to achieve our objective?

We need data on the top UK YouTubers in 2024 that includes their 
- channel names
- total subscribers
- total views
- total videos uploaded



- Where is the data coming from? 
The data is sourced from Kaggle (an Excel extract), [see here to find it.](https://www.kaggle.com/datasets/bhavyadhingra00020/top-100-social-media-influencers-2024-countrywise?resource=download)

## Tools 



| Tool | Purpose |
| --- | --- |
| Excel | Exploring the data and cleaning |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |

# Data Cleaning, Structure & Testing

The data met the following criteria and constraints after cleaning:

- Only relevant columns were retained.
- All data types were appropriate for the contents of each column.
- No column contained null values, indicating complete data for all records.

Below is a table outlining the constraints on our cleaned dataset:

| Property | Description |
| --- | --- |
| Number of Rows | 100 |
| Number of Columns | 4 |

Data Cleaning Steps:

1. Removed unnecessary columns by only selecting the ones I need.
2. Subscriber numbers in Total Subscriber column were converted from string (eg "90.5M", 12M") formats to numbers (eg "90,500,000", 12,000,000").
3. Checked for duplicate records.
4. Checked for null values.
5. Renamed columns using aliases.

# Executive Summary

### Overview of Findings

Adele's impressive engagement rate, higher average view counts, and greater profitability make her the stronger YouTuber for an impactful marketing campaign. Adele's audience is highly active which increases the chances of them responding positively to the campaign. This Engagement is vital for creating buzz for a successful marketing campaign.

