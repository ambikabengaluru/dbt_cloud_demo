
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/


{{ config(
    materialized='table',
    tags=['sample', 'daily'],
    pre_hook="CREATE TABLE IF NOT EXISTS audit_table (model_name VARCHAR, executed_at TIMESTAMP)",
    post_hook="INSERT INTO audit_table (model_name, executed_at) VALUES ('my_first_dbt_model', CURRENT_TIMESTAMP())"
) }}

with source_data as (

    select 1 as id
    union all
    select 1 as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
