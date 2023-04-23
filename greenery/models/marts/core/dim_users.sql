{{
  config(
    materialized='table'
  )
}}

SELECT 
USER_ID, 
concat(su.last_name, ', ', su.first_name) as FULL_NAME,
su.EMAIL, 
su.PHONE_NUMBER, 
a.ADDRESS,
a.ZIPCODE,
a.STATE,
a.COUNTRY,
su.CREATED_AT, 
su.UPDATED_AT 
FROM {{ ref('stg_users') }}  su
left join {{ ref('stg_addresses') }} a on a.address_id = su.address_id
