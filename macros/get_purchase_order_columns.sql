{% macro get_purchase_order_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "branding_theme_id", "datatype": dbt_utils.type_string()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "contact_id", "datatype": dbt_utils.type_string()},
    {"name": "currency_code", "datatype": dbt_utils.type_string()},
    {"name": "currency_rate", "datatype": dbt_utils.type_numeric()},
    {"name": "date", "datatype": "date"},
    {"name": "delivery_date", "datatype": "date"},
    {"name": "purchase_order_id", "datatype": dbt_utils.type_string()},
    {"name": "purchase_order_number", "datatype": dbt_utils.type_string()},
    {"name": "is_discounted", "datatype": "boolean"},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "sub_total", "datatype": dbt_utils.type_numeric()},
    {"name": "total", "datatype": dbt_utils.type_numeric()},
    {"name": "total_tax", "datatype": dbt_utils.type_numeric()},
    {"name": "line_amount_types", "datatype": dbt_utils.type_string()},
    {"name": "delivery_address", "datatype": dbt_utils.type_string()},
    {"name": "attention_to", "datatype": dbt_utils.type_string()},
    {"name": "telephone", "datatype": dbt_utils.type_string()},
    {"name": "delivery_instructions", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}