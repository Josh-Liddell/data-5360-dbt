{{ config(
    materialized='table',
    schema='ecoessentials_dw'
) }}

SELECT
    CUSTOMERID          AS cust_key,
    CAMPAIGNID          AS campaign_key,
    DATE(EVENTTIMESTAMP) AS event_date,           -- for dim_date join
    TO_CHAR(EVENTTIMESTAMP, 'HH24MISS') AS event_time,  -- for dim_time join
    EMAILID             AS email_key,
    EMAILEVENTID        AS event_key,             -- open, click, etc.
    EVENTTIMESTAMP
FROM {{ source('eco_email_src', 'marketingemails') }}