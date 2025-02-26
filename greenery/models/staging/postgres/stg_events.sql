{{
  config(
    materialized='table'
  )
}}

SELECT 
    EVENT_ID, 
    SESSION_ID, 
    USER_ID, 
    PAGE_URL, 
    CREATED_AT, 
    EVENT_TYPE, 
    ORDER_ID, 
    PRODUCT_ID
FROM {{ source('postgres', 'events') }}

