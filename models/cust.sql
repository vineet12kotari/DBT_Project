select
ID as cust_id
,NAME as cust_name
,EMAIL as cust_email
,REGION
,CREATED_AT
,UPDATED_AT
from --DBT_DB.RAW_SCHEMA.CUSTOMER
{{ source('raw_src', 'CUSTOMER') }}