{{ config(
    materialized = 'table',
    schema = 'dw_oliver'
) }}

SELECT
    d.date_key,
    e.employee_key,
    stg.certification_name,
    stg.certification_cost

FROM {{ ref('stg_employee_certifications') }} stg
INNER JOIN {{ ref('oliver_dim_date') }} d ON d.date_key = stg.date_key
INNER JOIN {{ ref('oliver_dim_employee') }} e ON e.employee_id = stg.employee_key
