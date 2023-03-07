{{ config(materialized='table') }}

with fact_table as (
    select * from {{ ref('fact_table') }}
)

SELECT DISTINCT Client_Country
FROM fact_table

