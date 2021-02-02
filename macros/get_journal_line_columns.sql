{% macro get_journal_line_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_code", "datatype": dbt_utils.type_string()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "account_name", "datatype": dbt_utils.type_string()},
    {"name": "account_type", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "gross_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "journal_id", "datatype": dbt_utils.type_string()},
    {"name": "journal_line_id", "datatype": dbt_utils.type_string()},
    {"name": "net_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "tax_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "tax_name", "datatype": dbt_utils.type_string()},
    {"name": "tax_type", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
