-------------- DATA PREPARATION ------------------------------------------------

select *
from Top_100_UK_YouTubers


CREATE VIEW view_Top_100_UK_YouTubers as

select Grade,
	Category,
	Channel_Name,
	No_of_Uploads as Total_Videos,
	Video_Views as Total_Views,
	Subscribers as Total_Subscribers
from Top_100_UK_YouTubers

------------- DATA TESTING AND QUALITY CHECKS --------------------------

--- Row count test
select count(*) as Total_Rows
from Top_100_UK_YouTubers

--- Column count test
select count(*) as Total_Columns
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Top_100_UK_YouTubers'

--- Data type check
select COLUMN_NAME,
	DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Top_100_UK_YouTubers'

--- Duplicates check
select Channel_Name,
	count(*) as Duplicates
from Top_100_UK_YouTubers
group by Channel_Name
having count(*) > 1

----------- DATA ANALYSIS-----------------------------------------------

--- 1) Who are the top 10 YouTubers with the most subscribers?
select top 10
	Channel_Name,
	Total_Subscribers
from view_Top_100_UK_YouTubers
order by Total_Subscribers desc

--- 2) Which 3 channels have uploaded the most videos?
select top 3
	Channel_Name,
	Total_Videos
from view_Top_100_UK_YouTubers
order by Total_Videos desc

--- 3) Which 3 channels have the most views?
select top 3
	Channel_Name,
	Total_Views
from view_Top_100_UK_YouTubers
order by Total_Views desc

--- 4) Which 3 channels have the highest average views per video?
select top 3
	Channel_Name,
	round((cast(Total_Views as float)/Total_Videos),-4) as Average_Views_per_Video
from view_Top_100_UK_YouTubers
order by Average_Views_per_Video desc

--- 5) Which 3 channels have the highest views per subscriber ratio?
select top 3
	Channel_Name,
	round((cast(Total_Views as float)/Total_Subscribers),2) as Views_per_Subscriber
from view_Top_100_UK_YouTubers
order by Views_per_Subscriber desc

--- 6) Which 3 channels have the highest subscriber engagement rate per video uploaded?
select top 3
	Channel_Name,
	round((total_subscribers/Total_Videos),3) as Subscriber_Engagement_Rate
from view_Top_100_UK_YouTubers
order by Subscriber_Engagement_Rate desc


--- 7) What is the Net Profit of the 3 channels with the highest Average Views per Video?
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
where Channel_Name in ('Adele', 'AdeleVEVO', 'Calvin Harris')
order by Net_profit desc


--- 8) What is the Net Profit of the 3 channels with the highest number of Subscribers?

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


--- 9) What is the Net Profit of the 3 channels with the highest subscriber engagement rate per video uploaded?

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


--- 10) What is the Net Profit of the 3 channels with the highest views per subscriber?

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





-------------- ED SHEERAN VS ADELE ----------------------------------------------------------

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

