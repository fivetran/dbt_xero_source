{% macro get_journal_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "created_date_utc", "datatype": dbt_utils.type_timestamp()},
    {"name": "journal_date", "datatype": "date"},
    {"name": "journal_id", "datatype": dbt_utils.type_string()},
    {"name": "journal_number", "datatype": dbt_utils.type_int()},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "source_id", "datatype": dbt_utils.type_string()},
    {"name": "source_type", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
