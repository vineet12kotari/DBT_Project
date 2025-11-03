-- models/intermediate/ (ephemeral)
-- int_customer_orders.sql
with orders as (
    select * from ({{ ref('stg_orders') }})
),

payments as (
    select * from ({{ ref('stg_payments') }})
)

select
    o.order_id,
    o.customer_id,
    o.status,
    o.order_date,
    o.total_amount,
    p.amount as payment_amount,
    p.payment_method,
    p.payment_date
from orders o
left join payments p
    on o.order_id = p.order_id