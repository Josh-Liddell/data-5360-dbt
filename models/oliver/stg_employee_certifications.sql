{{ config(
    materialized = 'table',
    schema = 'dw_oliver'
    )
}}

select
    PARSE_JSON(certification_json):certification_awarded_date::DATE AS date_key,
    employee_id AS employee_key,
    PARSE_JSON(certification_json):certification_name::STRING AS certification_name,
    PARSE_JSON(certification_json):certification_cost::NUMBER AS certification_cost

FROM {{ source('oliver_landing', 'employee_certifications') }}
