{% macro get_organization_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "apikey", "datatype": dbt_utils.type_string()},
    {"name": "base_currency", "datatype": dbt_utils.type_string()},
    {"name": "class", "datatype": dbt_utils.type_string()},
    {"name": "country_code", "datatype": dbt_utils.type_string()},
    {"name": "created_date_utc", "datatype": dbt_utils.type_timestamp()},
    {"name": "default_purchases_tax", "datatype": dbt_utils.type_string()},
    {"name": "default_sales_tax", "datatype": dbt_utils.type_string()},
    {"name": "edition", "datatype": dbt_utils.type_string()},
    {"name": "employer_identification_number", "datatype": dbt_utils.type_string()},
    {"name": "end_of_year_lock_date", "datatype": "date"},
    {"name": "financial_year_end_day", "datatype": dbt_utils.type_int()},
    {"name": "financial_year_end_month", "datatype": dbt_utils.type_int()},
    {"name": "is_demo_company", "datatype": "boolean"},
    {"name": "legal_name", "datatype": dbt_utils.type_string()},
    {"name": "line_of_business", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "organisation_entity_type", "datatype": dbt_utils.type_string()},
    {"name": "organisation_id", "datatype": dbt_utils.type_string()},
    {"name": "organisation_status", "datatype": dbt_utils.type_string()},
    {"name": "organisation_type", "datatype": dbt_utils.type_string()},
    {"name": "pays_tax", "datatype": "boolean"},
    {"name": "period_lock_date", "datatype": "date"},
    {"name": "registration_number", "datatype": dbt_utils.type_string()},
    {"name": "sales_tax_basis", "datatype": dbt_utils.type_string()},
    {"name": "sales_tax_period", "datatype": dbt_utils.type_string()},
    {"name": "short_code", "datatype": dbt_utils.type_string()},
    {"name": "tax_number", "datatype": dbt_utils.type_string()},
    {"name": "tax_number_name", "datatype": dbt_utils.type_string()},
    {"name": "timezone", "datatype": dbt_utils.type_string()},
    {"name": "version", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
