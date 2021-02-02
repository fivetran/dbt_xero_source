{% macro get_account_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "bank_account_number", "datatype": dbt_utils.type_string()},
    {"name": "bank_account_type", "datatype": dbt_utils.type_string()},
    {"name": "class", "datatype": dbt_utils.type_string()},
    {"name": "code", "datatype": dbt_utils.type_string()},
    {"name": "currency_code", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "enable_payments_to_account", "datatype": "boolean"},
    {"name": "has_attachments", "datatype": "boolean"},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "reporting_code", "datatype": dbt_utils.type_string()},
    {"name": "reporting_code_name", "datatype": dbt_utils.type_string()},
    {"name": "show_in_expense_claims", "datatype": "boolean"},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "system_account", "datatype": dbt_utils.type_string()},
    {"name": "tax_type", "datatype": dbt_utils.type_string()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
