--select * from {{ source('raw_src', 'ORDER_ITEMS') }}
with source as (
    select * from {{ source('raw_src', 'ORDER_ITEMS') }}
)

select
    id as order_item_id,
    order_id,
    product_id,
    quantity,
    unit_price
from source
