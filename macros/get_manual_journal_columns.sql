{% macro get_manual_journal_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "date", "datatype": "date"},
    {"name": "has_attachments", "datatype": "boolean"},
    {"name": "line_amount_types", "datatype": dbt_utils.type_string()},
    {"name": "manual_journal_id", "datatype": dbt_utils.type_string()},
    {"name": "narration", "datatype": dbt_utils.type_string()},
    {"name": "show_on_cash_basis_reports", "datatype": "boolean"},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
