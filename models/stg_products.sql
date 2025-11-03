--select * from {{ source('raw_src', 'PRODUCTS') }}
--stg_products.sql

with source as (
select * from ({{ source('raw_src', 'PRODUCTS') }})
)
select
id as product_id,
name as product_name,
category,
price
from source