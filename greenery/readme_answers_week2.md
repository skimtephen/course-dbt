# Week 2 Project Answers
### User Repeat?
80%

select count(distinct case when num_orders >= 2 then user_id else null end) / count(distinct user_id)
from dbt_skimtephengmailcom.fact_user_orders
