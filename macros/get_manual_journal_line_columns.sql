{% macro get_manual_journal_line_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_code", "datatype": dbt_utils.type_string()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "is_blank", "datatype": "boolean"},
    {"name": "line", "datatype": dbt_utils.type_int()},
    {"name": "line_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "manual_journal_id", "datatype": dbt_utils.type_string()},
    {"name": "tax_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "tax_type", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
