{{
  config(
    materialized='table'
  )
}}

SELECT 
    ADDRESS_ID,
	ADDRESS,
	lpad(zipcode,5,0) as zipcode,
	STATE,
	COUNTRY
FROM {{ source('postgres', 'addresses') }}

