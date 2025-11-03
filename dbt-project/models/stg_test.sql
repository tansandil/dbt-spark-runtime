{{ config(materialized='table') }}
SELECT 
    id,
    concat('user_', cast(id as string)) as username,
    rand() * 1000 as score,
    current_timestamp() as loaded_at
FROM range(500000)
