--select * from {{ source('raw_src', 'ORDERS') }}
--stg_orders.sql
with source as (
select * from {{ source('raw_src', 'ORDERS') }}
)
select
id as order_id,
customer_id,
status,
order_date,
total_amount,
created_at,
updated_at
from source