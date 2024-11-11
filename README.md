# Project_Title- Marketing Campaign Analysis for Digital Subscription Growth

As a part of the analytics team at a digital subscription service company offering streaming, newsletters, and exclusive online events. The marketing department has launched various promotional campaigns across multiple channels, such as email, social media, and partnerships, aimed at attracting new customers, retaining existing ones, and increasing user engagement. The original data is organized in three Excel files, and a thorough analysis requires utilizing both Excel and MySQL Workbench for enhanced insights and reporting.
In this case study, you will process, analyze, and report on key performance indicators across campaigns to assess effectiveness and make data-driven recommendations.

Available Data Sources in Excel-

1. Marketing_Campaigns.xlsx
This file contains core information for each campaign, including identification, channel, budget, and timeline. The columns in this dataset include:
• Campaign_ID: A unique identifier for each campaign, ensuring a one-to-one correspondence across the datasets.
• Channel: Specifies the marketing channel used for each campaign, such as Email, Social Media, or Partnerships.
• Start_Date: The launch date of the campaign, indicating when it started.
• End_Date: The end date of the campaign, indicating when it concluded.
• Budget: The total budget allocated to the campaign.
• Target_Audience: The estimated number of people targeted by the campaign.

2. User_Engagement.xlsx
This file provides metrics for user engagement with each campaign, tracking the stages of engagement. The columns include:
• Campaign_ID: The unique identifier for each campaign, matching with Marketing_Campaigns for linkage.
• Impressions: The total number of times the campaign was displayed to users.
• Clicks: The number of times users clicked on the campaign content.
• Sign_Ups: The number of users who signed up as a result of the campaign.
• Conversions: The number of users who completed the intended action (e.g., subscribing).

3. Revenue_Generated.xlsx
This dataset details the revenue generated from each campaign, distinguishing between new and returning users. The columns include:
• Campaign_ID: The unique identifier for each campaign, consistent across all datasets for integration.
• New_User_Revenue: The revenue generated from new users.
• Returning_User_Revenue: Revenue from returning users.

## Case Study Tasks-

1. Initial Data Preparation in Excel-
Task 1: Perform a preliminary review of the Marketing_Campaigns.xlsx file:
  - Remove any repeated rows or discrepancies.
  - Standardize channel names and ensure date fields are formatted consistently.
Task 2: Merge data from the User_Engagement.xlsx and Revenue_Generated.xlsx files using lookups:
  - Use VLOOKUP to pull fields from User_Engagement.xlsx and Revenue_Generated.xlsx based on Campaign_ID.
  - Populate fields like total reach, clicks, sign-ups, and revenue per campaign.
Task 3: Derive basic campaign performance metrics in the consolidated sheet:
  - Calculate the cost efficiency by dividing the budget by the target audience.
  - Determine the overall return using total revenue relative to budget.
Task 4: Generate a summary of revenue by promotional channel:
  - Display total revenue by channel and user type (new vs. returning).
  - Add filters for easy selection by campaign start date.
Task 5: Analyze user engagement metrics by campaign:
  - show total impressions, clicks, sign-ups, and conversions.
  - Include calculated fields to display conversion rates at each stage.

3. Transition Data to MySQL Workbench-
• Import each of the three Excel files as tables into MySQL Workbench using the Campaign_ID column.
• Verify column mappings to ensure correct data structure.

4. Focused Data Analysis in MySQL Workbench-
Task 6: Determine the conversion volume achieved by each marketing channel.
  - Query the joined tables to summarize users converted by each channel.
Task 7: Identify the top-performing campaigns based on return metrics.
  - Calculate each campaign’s return by comparing spending to revenue.
Task 8: Map user engagement progression through stages.
  - Track impressions to conversions, calculating rates at each engagement stage.
Task 9: Combine All Campaign Data.
  - Integrate data across campaigns, engagement, and revenue for a consolidated view.
Task 10: Highlight High-Return Campaigns.
  - Identify campaigns exceeding average returns with nested calculations.
Task 11: Calculate Cumulative Revenue Trends by Channel.
  - Display cumulative revenue by channel ordered by campaign start date.

5. Visual Reporting and Insights in Excel
Task 12: Export SQL query results to Excel for visual reporting.
Task 13: Develop a dashboard in Excel:
  - Use a bar chart to display conversions by marketing channel.
  - Present a top 5 campaigns list with return and revenue metrics.
  - Create a funnel chart showing user progression through engagement stages.
  - Add a line chart for cumulative revenue by channel over time.
  - Summarize high-return campaigns, displaying those exceeding average returns.

Task 14: Compile a summary report:(OPTIONAL)
  - Identify channels with the highest returns.
  - Highlight stages with user engagement drop-offs.
  - Track revenue growth by channel.

 
