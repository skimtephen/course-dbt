{{
  config(
    materialized='table'
  )
}}

SELECT 
order_id,
product_id,
quantity
STATUS
FROM {{ source('postgres', 'order_items') }}

