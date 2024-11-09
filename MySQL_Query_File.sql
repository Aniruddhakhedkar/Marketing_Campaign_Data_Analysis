USE nile_hr;

### Import each of the three Excel files as tables into MySQL Workbench using the Campaign_ID column-

SELECT * FROM marketing_campaigns;
SELECT * FROM user_engagement;
SELECT * FROM revenue_generated;

### Task 6: Determine the conversion volume achieved by each marketing channel.
#- Query the joined tables to summarize users converted by each channel.

SELECT m.channel AS "Channels", AVG (u.conversions) AS "Conversions"
FROM marketing_campaigns as m LEFT JOIN user_engagement as u
ON m.campaign_id=u.campaign_id
GROUP BY m.channel;

### Task 7: Identify the top-performing campaigns based on return metrics.
#- Calculate each campaign’s return by comparing spending to revenue.

SELECT m.campaign_id AS "Campaign_ID", (r.new_user_revenue + r.returning_user_revenue)/m.budget AS "Return_Rate"
FROM marketing_campaigns as m LEFT JOIN revenue_generated as r
ON m.campaign_id=r.campaign_id
ORDER BY (r.new_user_revenue + r.returning_user_revenue)/m.budget DESC;

### Task 8: Map user engagement progression through stages.
# Track impressions to conversions, calculating rates at each engagement stage.

SELECT Campaign_ID, (Conversions/Impressions) AS "Conversion_Rate"
FROM user_engagement
ORDER BY (Conversions/Impressions) DESC;

### Task 9: Combine All Campaign Data.
# Integrate data across campaigns, engagement, and revenue for a consolidated view.

CREATE VIEW Campaign_Data_All AS
SELECT m.campaign_iD, m. budget, m.channel, u.impressions, u.clicks, u.conversions, 
	(r.new_user_revenue + r.returning_user_revenue) AS "Total_Revenue_Generated"
FROM marketing_campaigns as m INNER JOIN revenue_generated as r INNER JOIN user_engagement as u
ON m.campaign_id=r.campaign_id AND r.campaign_id=u.campaign_id;

SELECT * FROM Campaign_Data_All;


### Task 10: Highlight High-Return Campaigns.
# Identify campaigns exceeding average returns with nested calculations.

SELECT campaign_id, total_revenue_generated/budget AS "Average_Returns"
FROM Campaign_Data_All
ORDER BY total_revenue_generated/budget DESC
LIMIT 5;

### Task 11: Calculate Cumulative Revenue Trends by Channel.
# Display cumulative revenue by channel ordered by campaign start date.

SELECT channel, sum(total_revenue_generated) AS "Total_Revenue_Generation"
FROM Campaign_Data_All
GROUP BY channel
ORDER BY "Total_Revenue_Generation" DESC;
