select *
from {{ source('jaffle_shop', 'raw_orders') }}
where order_date >= '{{ env_var('START_DATE', '2024-01-01') }}'