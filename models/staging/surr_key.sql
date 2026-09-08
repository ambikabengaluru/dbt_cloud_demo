select
    customer_id,
    order_id,

    {{ dbt_utils.default__generate_surrogate_key((
        ['customer_id', 'order_id']
    )) }} as customer_order_sk

from {{ ref('stg_orders') }}