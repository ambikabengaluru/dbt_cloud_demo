select
    id,
    first_name,

    -- MD5 hash of all important columns
    md5(concat(id, first_name)) as row_hash

from {{ source('jaffle_shop', 'raw_customers') }}