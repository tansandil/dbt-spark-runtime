{{ config(materialized='table') }}
SELECT 
    1 as id, 
    'test' as name,
    current_timestamp() as loaded_at
