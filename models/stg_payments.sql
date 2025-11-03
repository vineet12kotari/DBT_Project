--stg_payments.sql
with source as (
select * from ({{ source('raw_src', 'PAYMENTS') }})
)
select
id as payment_id,
order_id,
amount,
payment_method,
payment_date
from source