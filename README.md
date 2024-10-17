# INFLUENCER MARKETING IMPACT: UK YouTuber Insights for 2024

# Table of contents

- [Objective](#objective)
	- [User story](#user-story)
- [Data source](#data-source)
	- [Tools](#tools)
- [Data Cleaning, Structure & Testing](#data-cleaning-structure--testing)
-  [Executive Summary](#executive-summary)
	- [Overview of Findings](#overview-of-findings)  
- [Analysis](#analysis)
	- [Findings](#findings) 







# Objective

To identify the top YouTubers in 2024, based on factors such as audience size, engagement, and relevance. This will help the marketing team decide which YouTuber would be the most effective partner for running marketing campaigns throughout the year.


Insights and recommendations are provided on the following key areas: 
- Daily Revenue Analysis
- total views
- total videos, and
- engagement metrics

This will help the marketing team make informed decisions about which YouTubers to collaborate with for their marketing campaigns.

## User story 

As the Head of Marketing, I want to use a dashboard that analyses YouTube channel data in the UK . 

This dashboard should allow me to identify the top performing channels based on metrics like subscriber base and average views. 

With this information, I can make more informed decisions about which Youtubers are right to collaborate with, and therefore maximize how effective each marketing campaign is.

**Note:**

Conversion Rate    = 2%

Product Cost       = $5

Campaign Cost      = $50,000

Number of Videos   = 11

# Data source 

What data is needed to achieve our objective?

We need data on the top UK YouTubers in 2024 that includes their: 
- channel names
- total subscribers
- total views
- total videos uploaded



Where is the data coming from? 

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
- No duplicate records

Below is a table outlining the constraints on our cleaned dataset:

| Property | Description |
| --- | --- |
| Number of Rows | 100 |
| Number of Columns | 6 |

And here is a tabular representation of schema for our cleaned dataset:

| Column Name | Data Type | Nullable |
| --- | --- | --- |
| Grade | nvarchar | NO |
| Category | nvarchar | NO |
| Channel_Name | nvarchar | NO |
| No_of_Uploads | int | NO |
| Video_Views | big int | NO |
| Subscribers | int | NO |

Data Cleaning Steps:

1. Removed unnecessary columns by only selecting the ones I need.
2. Changed data type in "Total Subscriber" column from string to whole number, then converted values from "90.5M", 12M" formats to numbers (eg "90,500,000", 12,000,000") by multiplying by 1,000,000.
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

- Subscribers
- Average Views per Video
- Subscriber Engagement Rate
- Views per Subscriber

Potential Net Profit was calculated by multiplying Average Views per Video, Conversion Rate, and Product Cost, then subtracting the Campaign Cost times the Number of Videos.

(average views per video  x  conversion rate  x  product cost) - (campaign cost  x  number of videos)


## Insights Deep Dive
### Total Subscribers

Ed Sheeran has 52.9 million subscribers but doesn't guarantee high engagement. Adele, though not in the top three, performs well in other areas.

### Average Views per Video

Adele leads with 900.38 million views per video, showing strong audience engagement despite fewer subscribers.

### Subscriber Engagement Rate

Adele has a high engagement rate of 1.97 million, significantly higher than others, indicating her audience is active and responsive.

### Views per Subscriber

While DisneyJuniorUK leads in views per subscriber, this metric isn’t as relevant for mainstream marketing campaigns aimed at a wide demographic. Adele's performance in more general metrics like engagement and average views suggests she appeals to a broader audience.

## Insights Comparison
### Ed Sheeran vs Adele

Let’s take a closer look at the two top YouTubers, Adele and Ed Sheeran. While Ed Sheeran boasts a larger audience with 52.9M subscribers versus Adele's 29.6M, the numbers tell a different story when we look closer.

Adele’s fans are highly engaged, interacting with her content 1.97M times, compared to Ed Sheeran's 201k. This higher engagement means Adele’s audience is more likely to respond to interactive marketing efforts. Here, we can clearly see that subscriber count alone doesn’t guarantee engagement. 

When it comes to video views, Adele leads significantly with an average of 900.38M views per video, far more than Ed Sheeran’s 111.1M. 

Financially, Adele’s net profit stands out at $90.04M, compared to Ed Sheeran’s $11.06M, showcasing her superior financial performance.

# Recommendations

Based on the insights and findings above, we would recommend: 
- Adele

Why Adele?

Adele is the best choice for a marketing campaign because she has the highest engagement rate, meaning Adele's audience is highly interactive. Adele's videos also receive the most average views per video, ensuring broad visibility. Also, Adele's strong net profit makes her stands tall above the rest.
In conclusion, the combinaton of Adele's impressive engagement rate, higher average view counts, and greater profitability make her the stronger YouTuber for an impactful marketing campaign.

### Action Plan

Based on our analysis, we believe the best channel to advance a long-term partnership deal with for an impactful marketing campaign is the Adele channel.

- Now, what steps do we take to implement the recommended decisions effectively?

1. Contact Adele's management for partnership discussions
2. Develop creative ideas for the campaign, aligning with Adele's content and audience interests.
3. Negotiate contracts within the budgets allocated for the marketing campaign.
4. Finalize terms with Adele's team, especially for deliverables and timeline.
5. Kick off the campaign with Adele and track key metrics(Engagement, Views, ROI).
6. Review how the campaigns have gone, gather insights and optimize based on feedback from converted customers.

# Assumptions and Caveats

 - Channel name “BBC ???” 

I assumed it to be BBC radio 2. My assumption came as a result of searching various BBC YouTube channels via YouTube.com. And also, “BBC ???” was grouped in the music category in the dataset. This also strengthened my assumption.

# Queries

## SQL Queries

### Testing

```sql
--- Row count test
select count(*) as Total_Rows
from Top_100_UK_YouTubers

--- Column count test
select count(*) as Total_Columns
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Top_100_UK_YouTubers'

--- Data type check
select TABLE_NAME,
	DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Top_100_UK_YouTubers'

--- Duplicates check
select Channel_Name,
	count(*) as Duplicates
from Top_100_UK_YouTubers
group by Channel_Name
having count(*) > 1

```

### Who are the top 10 YouTubers with the most subscribers?

```sql
select top 3
	Channel_Name,
	Total_Videos
from view_Top_100_UK_YouTubers
order by Total_Videos desc

```

### Which 3 channels have uploaded the most videos?

```sql
select top 3
	Channel_Name,
	Total_Videos
from view_Top_100_UK_YouTubers
order by Total_Videos desc

```

### Which 3 channels have the most views?

```sql
select top 3
	Channel_Name,
	Total_Views
from view_Top_100_UK_YouTubers
order by Total_Views desc

```

### Which 3 channels have the highest average views per video?

```sql
select top 3
	Channel_Name,
	round((cast(Total_Views as float)/Total_Videos),-4) as Average_Views_per_Video
from view_Top_100_UK_YouTubers
order by Average_Views_per_Video desc

```

### Which 3 channels have the highest views per subscriber ratio?

```sql
select top 3
	Channel_Name,
	round((cast(Total_Views as float)/Total_Subscribers),2) as Views_per_Subscriber
from view_Top_100_UK_YouTubers
order by Views_per_Subscriber desc

```

### Which 3 channels have the highest subscriber engagement rate per video uploaded?

```sql
select top 3
	Channel_Name,
	round((total_subscribers/Total_Videos),3) as Subscriber_Engagement_Rate
from view_Top_100_UK_YouTubers
order by Subscriber_Engagement_Rate desc

```

### What is the Net Profit of the 3 channels with the highest number of subscribers?

```sql
/* 

# 1. Define variables 
# 2. Create a CTE that rounds the average views per video 
# 3. Select columns and create calculated columns from existing ones 
# 4. Filter results by Youtube channels
# 5. Sort results by net profits (from highest to lowest)

*/

Declare @conversionrate float = 0.02;			--conversion rate 2%
Declare @productcost money = 5.0;				--product cost $5
Declare @campaigncost money = 50000.0;		    --campaign cost $50000
Declare @numberOfVideos INT = 11;               -- The number of videos (11)

WITH ChannelData AS (
	select 
		Channel_Name,
		Total_Subscribers,
		Total_Videos,
		Total_Views,
		round((cast(Total_Views as float)/Total_Videos),-4) as Rounded_avg_views_per_video
	from uk_youtube_db.dbo.view_Top_100_UK_YouTubers
)
select 
	Channel_Name,
	Total_Subscribers,
	Rounded_avg_views_per_video,
	(Rounded_avg_views_per_video * @conversionrate) as Potential_product_sales_per_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) as potential_revenue_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) - (@campaigncost * @numberOfVideos) as Net_profit
from channeldata
where Channel_Name in ('Ed Sheeran', 'One Direction', 'NoCopyrightSounds')
order by Net_profit desc

```

### What is the Net Profit of the 3 channels with the highest Average Views per Video?

```sql
Declare @conversionrate float = 0.02;			--conversion rate 2%
Declare @productcost money = 5.0;				--product cost $5
Declare @campaigncost money = 50000.0;		    --campaign cost $50000
Declare @numberOfVideos INT = 11;               -- The number of videos (11)

WITH ChannelData AS (
	select 
		Channel_Name,
		Total_Subscribers,
		Total_Videos,
		Total_Views,
		round((cast(Total_Views as float)/Total_Videos),-4) as Rounded_avg_views_per_video
	from uk_youtube_db.dbo.view_Top_100_UK_YouTubers
)
select 
	Channel_Name,
	Total_Subscribers,
	Rounded_avg_views_per_video,
	(Rounded_avg_views_per_video * @conversionrate) as Potential_product_sales_per_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) as potential_revenue_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) - (@campaigncost * @numberOfVideos) as Net_profit
from channeldata
where Channel_Name in ('Adele', 'AdeleVEVO', 'Calvin Harris')
order by Net_profit desc

```

### What is the Net Profit of the 3 channels with the highest subscriber engagement rate per video uploaded?

```sql
Declare @conversionrate float = 0.02;			--conversion rate 2%
Declare @productcost money = 5.0;				--product cost $5
Declare @campaigncost money = 50000.0;		    --campaign cost $50000
Declare @numberOfVideos INT = 11;               -- The number of videos (11)

WITH ChannelData AS (
	select 
		Channel_Name,
		Total_Subscribers,
		Total_Videos,
		Total_Views,
		round((cast(Total_Views as float)/Total_Videos),-4) as Rounded_avg_views_per_video
	from uk_youtube_db.dbo.view_Top_100_UK_YouTubers
)
select 
	Channel_Name,
	Total_Subscribers,
	Rounded_avg_views_per_video,
	(Rounded_avg_views_per_video * @conversionrate) as Potential_product_sales_per_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) as potential_revenue_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) - (@campaigncost * @numberOfVideos) as Net_profit
from channeldata
where Channel_Name in ('Adele', 'AdeleVEVO', 'Calvin Harris')
order by Net_profit desc

```

### What is the Net Profit of the 3 channels with the highest views per subscriber?

```sql
Declare @conversionrate float = 0.02;			--conversion rate 2%
Declare @productcost money = 5.0;				--product cost $5
Declare @campaigncost money = 50000.0;		    --campaign cost $50000
Declare @numberOfVideos INT = 11;               -- The number of videos (11)

WITH ChannelData AS (
	select 
		Channel_Name,
		Total_Subscribers,
		Total_Videos,
		Total_Views,
		round((cast(Total_Views as float)/Total_Videos),-4) as Rounded_avg_views_per_video
	from uk_youtube_db.dbo.view_Top_100_UK_YouTubers
)
select 
	Channel_Name,
	Total_Subscribers,
	Rounded_avg_views_per_video,
	(Rounded_avg_views_per_video * @conversionrate) as Potential_product_sales_per_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) as potential_revenue_video,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) - (@campaigncost * @numberOfVideos) as Net_profit
from channeldata
where Channel_Name in ('DisneyJuniorUK', 'DisneyChannelUK', 'Cartoon Network UK')
order by Net_profit desc

```

### Ed Sheeran vs Adele

```sql
--- 1) Total Subscribers
select Channel_Name,
	Total_Subscribers
from view_Top_100_UK_YouTubers
where Channel_Name in ('Ed Sheeran', 'Adele')
order by Total_Subscribers desc

--- 2) Average Views per Video
select Channel_Name,
	round((cast(Total_Views as float)/Total_Videos),-4) as Average_Views_per_Video
from view_Top_100_UK_YouTubers
where Channel_Name in ('Ed Sheeran', 'Adele')
order by Average_Views_per_Video desc

--- 3) Average Views per Video
select Channel_Name,
	round((total_subscribers/Total_Videos),3) as Subscriber_Engagement_Rate
from view_Top_100_UK_YouTubers
where Channel_Name in ('Ed Sheeran', 'Adele')
order by Subscriber_Engagement_Rate desc

--- 4) Net Profit
Declare @conversionrate float = 0.02;			--conversion rate 2%
Declare @productcost money = 5.0;				--product cost $5
Declare @campaigncost money = 50000.0;		    --campaign cost $50000
Declare @numberOfVideos INT = 11;               -- The number of videos (11)

WITH ChannelData AS (
	select 
		Channel_Name,
		Total_Subscribers,
		Total_Videos,
		Total_Views,
		round((cast(Total_Views as float)/Total_Videos),-4) as Rounded_avg_views_per_video
	from uk_youtube_db.dbo.view_Top_100_UK_YouTubers
)
select 
	Channel_Name,
	(Rounded_avg_views_per_video * @conversionrate * @productcost) - (@campaigncost * @numberOfVideos) as Net_profit
from channeldata
where Channel_Name in ('Ed Sheeran', 'Adele')
order by Net_profit desc

```

## POWER BI DAX

### 1. Total Subscribers (M)
```sql
Total Subscribers (M) = 
VAR million = 1000000
VAR sum_of_subscribers = SUM(view_Top_100_UK_YouTubers[Total_Subscribers])
VAR total_subscribers = DIVIDE(sum_of_subscribers, million)

RETURN total_subscribers

```

### 2. Total Views (B)
```sql
Total Views (B) = 
VAR billion = 1000000000
VAR sum_of_views = SUM(view_Top_100_UK_YouTubers[Total_Views])
VAR total_views = DIVIDE(sum_of_views, billion)

RETURN total_views

```

### 3. Total Videos
```sql
Total Videos = 
VAR sum_of_videos = SUM(view_Top_100_UK_YouTubers[Total_Videos])

RETURN sum_of_videos

```

### 4. Average Views Per Video (M)
```sql
Avg Views per Video (M) = 
VAR sumoftotalviews = SUM(view_Top_100_UK_YouTubers[Total_Views])
VAR sumoftotalvideos = SUM(view_Top_100_UK_YouTubers[Total_Videos])
VAR avgviewspervideo = DIVIDE(sumoftotalviews, sumoftotalvideos, BLANK())
VAR finalavgviewspervideo = DIVIDE(avgviewspervideo, 1000000, BLANK())

RETURN finalavgviewspervideo

```


### 5. Subscriber Engagement Rate
```sql
Subscriber Engagement Rate = 
VAR sumofsubscribers = SUM(view_Top_100_UK_YouTubers[Total_Subscribers])
VAR sumofvideos = SUM(view_Top_100_UK_YouTubers[Total_Videos])
VAR subscriberengagementrate = DIVIDE(sumofsubscribers, sumofvideos, BLANK())

RETURN subscriberengagementrate

```








