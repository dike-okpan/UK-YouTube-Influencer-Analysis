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

# Analysis 

## Findings

- What did we find?

For this analysis, we're going to focus on the questions below to get the information we need for our marketing client - 

Here are the key questions we need to answer for our marketing client: 
1. Who are the top 10 YouTubers with the most subscribers?
2. Which 3 channels have uploaded the most videos?
3. Which 3 channels have the most views?
4. Which 3 channels have the highest average views per video?
5. Which 3 channels have the highest views per subscriber ratio?
6. Which 3 channels have the highest subscriber engagement rate per video uploaded?


### 1. Who are the top 10 YouTubers with the most subscribers?

| Rank | Channel Name         | Subscribers (M) |
|------|----------------------|-----------------|
| 1    | Ed Sheeran           | 52.9            |
| 2    | One Direction        | 37.9            |
| 3    | NoCopyrightSounds    | 33.2            |
| 4    | Mr Bean              | 31.6            |
| 5    | Peppa Pig            | 30.2            |
| 6    | Adele                | 29.6            |
| 7    | DanTDM               | 26.4            |
| 8    | Coldplay             | 24.5            |
| 9    | KSI                  | 24.1            |
| 10   | Mister Max           | 23.5            |


### 2. Which 3 channels have uploaded the most videos?

| Rank | Channel Name    | Videos Uploaded |
|------|-----------------|-----------------|
| 1    | BBC Radio 2     | 36,873          |
| 2    | BBC News        | 17,750          |
| 3    | BBC             | 14,491          |


### 3. Which 3 channels have the most views?

| Rank | Channel Name | Total Views (B) |
|------|--------------|-----------------|
| 1    | Ed Sheeran   | 29.21           |
| 2    | Peppa Pig    | 22.04           |
| 3    | DanTDM       | 19.03           |


### 4. Which 3 channels have the highest average views per video?

| Channel Name  | Averge Views per Video (M) |
|---------------|----------------------------|
| Adele         | 900.88                     |
| AdeleVEVO     | 230.85                     |
| Calvin Harris | 203.89                     |


### 5. Which 3 channels have the highest views per subscriber ratio?

| Rank | Channel Name       | Views per Subscriber        |
|------|--------------------|---------------------------- |
| 1    | DisneyJuniorUK     | 1024.67                     |
| 2    | DisneyChannelUK    | 1004.58                     |
| 3    | Cartoon Network UK | 950.16                      |


### 6. Which 3 channels have the highest subscriber engagement rate per video uploaded?

| Rank | Channel Name    | Subscriber Engagement Rate  |
|------|-----------------|---------------------------- |
| 1    | Adele           | 1,973,333                   |
| 2    | AdeleVEVO       | 290,384                     |
| 3    | Calvin Harris   | 246,052                     |




### Notes

For this analysis, we'll prioritize analysing the metrics that are important in generating the expected ROI for our marketing client, which are the YouTube channels with the most 

- subscribers
- average views per video
- subscriber engagement rate

# Insights Deep Dive
### Total Subscribers

Ed Sheeran has 52.9 million subscribers but doesn't guarantee high engagement. Adele, though not in the top three, performs well in other areas.
