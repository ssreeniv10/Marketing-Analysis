SELECT * FROM marketing_data
LIMIT 5;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'marketing_data';

UPDATE marketing_data
SET no_of_days = 0.5
WHERE no_of_days = 0;

SELECT ext_service_name, 
ROUND(AVG((campaign_budget_usd / no_of_days)::numeric),2) AS avg_budget_per_day, 
ROUND(AVG((campaign_budget_usd / (cast(impressions AS float)/1000))::numeric),2) AS avg_impressions_cpm,
ROUND(AVG((impressions/no_of_days)::numeric),2) AS impressions_per_day,
ROUND(AVG((campaign_budget_usd / (cast(clicks AS float)/1000))::numeric),2) AS avg_clicks_cpm,
ROUND(AVG((clicks/no_of_days)::numeric),2) AS clicks_per_day,
ROUND(AVG((media_cost_usd / no_of_days)::numeric),2) AS avg_media_cost_per_day,
ROUND(AVG((approved_budget_usd - campaign_budget_usd)::numeric),2) AS avg_over_budget
FROM marketing_data
GROUP BY ext_service_name;


SELECT channel_name, 
ROUND(AVG((campaign_budget_usd / no_of_days)::numeric),2) AS avg_budget_per_day, 
ROUND(AVG((campaign_budget_usd / (cast(impressions AS float)/1000))::numeric),2) AS avg_impressions_cpm,
ROUND(AVG((impressions/no_of_days)::numeric),2) AS impressions_per_day,
ROUND(AVG((campaign_budget_usd / (cast(clicks AS float)/1000))::numeric),2) AS avg_clicks_cpm,
ROUND(AVG((clicks/no_of_days)::numeric),2) AS clicks_per_day,
ROUND(AVG((media_cost_usd / no_of_days)::numeric),2) AS avg_media_cost_per_day,
ROUND(AVG((approved_budget_usd - campaign_budget_usd)::numeric),2) AS avg_over_budget
FROM marketing_data
GROUP BY channel_name;


SELECT timezone, 
ROUND(AVG((campaign_budget_usd / no_of_days)::numeric),2) AS avg_budget_per_day, 
ROUND(AVG((campaign_budget_usd / (cast(impressions AS float)/1000))::numeric),2) AS avg_impressions_cpm,
ROUND(AVG((impressions/no_of_days)::numeric),2) AS impressions_per_day,
ROUND(AVG((campaign_budget_usd / (cast(clicks AS float)/1000))::numeric),2) AS avg_clicks_cpm,
ROUND(AVG((clicks/no_of_days)::numeric),2) AS clicks_per_day,
ROUND(AVG((media_cost_usd / no_of_days)::numeric),2) AS avg_media_cost_per_day,
ROUND(AVG((approved_budget_usd - campaign_budget_usd)::numeric),2) AS avg_over_budget
FROM marketing_data
GROUP BY timezone;


SELECT weekday_cat, 
ROUND(AVG((campaign_budget_usd / no_of_days)::numeric),2) AS avg_budget_per_day, 
ROUND(AVG((campaign_budget_usd / (cast(impressions AS float)/1000))::numeric),2) AS avg_impressions_cpm,
ROUND(AVG((impressions/no_of_days)::numeric),2) AS impressions_per_day,
ROUND(AVG((campaign_budget_usd / (cast(clicks AS float)/1000))::numeric),2) AS avg_clicks_cpm,
ROUND(AVG((clicks/no_of_days)::numeric),2) AS clicks_per_day,
ROUND(AVG((media_cost_usd / no_of_days)::numeric),2) AS avg_media_cost_per_day,
ROUND(AVG((approved_budget_usd - campaign_budget_usd)::numeric),2) AS avg_over_budget
FROM marketing_data
GROUP BY weekday_cat;


SELECT ext_service_name, channel_name,
ROUND(AVG((campaign_budget_usd / no_of_days)::numeric),2) AS avg_budget_per_day, 
ROUND(AVG((campaign_budget_usd / (cast(impressions AS float)/1000))::numeric),2) AS avg_impressions_cpm,
ROUND(AVG((impressions/no_of_days)::numeric),2) AS impressions_per_day,
ROUND(AVG((campaign_budget_usd / (cast(clicks AS float)/1000))::numeric),2) AS avg_clicks_cpm,
ROUND(AVG((clicks/no_of_days)::numeric),2) AS clicks_per_day,
ROUND(AVG((media_cost_usd / no_of_days)::numeric),2) AS avg_media_cost_per_day,
ROUND(AVG((approved_budget_usd - campaign_budget_usd)::numeric),2) AS avg_over_budget
FROM marketing_data
GROUP BY ext_service_name, channel_name;