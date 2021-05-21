{% macro get_credit_note_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "applied_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "branding_theme_id", "datatype": dbt_utils.type_string()},
    {"name": "contact_id", "datatype": dbt_utils.type_string()},
    {"name": "credit_note_id", "datatype": dbt_utils.type_string()},
    {"name": "credit_note_number", "datatype": dbt_utils.type_string()},
    {"name": "currency_code", "datatype": dbt_utils.type_string()},
    {"name": "currency_rate", "datatype": dbt_utils.type_numeric()},
    {"name": "date", "datatype": "date"},
    {"name": "due_date", "datatype": "date"},
    {"name": "fully_paid_on_date", "datatype": "date"},
    {"name": "has_attachments", "datatype": "boolean"},
    {"name": "line_amount_types", "datatype": dbt_utils.type_string()},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "remaining_credit", "datatype": dbt_utils.type_numeric()},
    {"name": "sent_to_contact", "datatype": "boolean"},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "sub_total", "datatype": dbt_utils.type_numeric()},
    {"name": "total", "datatype": dbt_utils.type_numeric()},
    {"name": "total_tax", "datatype": dbt_utils.type_numeric()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
