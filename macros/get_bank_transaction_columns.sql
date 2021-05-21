{% macro get_bank_transaction_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "bank_account_id", "datatype": dbt_utils.type_string()},
    {"name": "bank_transaction_id", "datatype": dbt_utils.type_string()},
    {"name": "batch_payment_batch_payment_id", "datatype": dbt_utils.type_string()},
    {"name": "batch_payment_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "batch_payment_id", "datatype": dbt_utils.type_string()},
    {"name": "batch_payment_is_reconciled", "datatype": "boolean"},
    {"name": "batch_payment_status", "datatype": dbt_utils.type_string()},
    {"name": "batch_payment_total_amount", "datatype": dbt_utils.type_float()},
    {"name": "batch_payment_type", "datatype": dbt_utils.type_string()},
    {"name": "batch_payment_updated_date_utc", "datatype": dbt_utils.type_timestamp()},
    {"name": "contact_id", "datatype": dbt_utils.type_string()},
    {"name": "currency_code", "datatype": dbt_utils.type_string()},
    {"name": "currency_rate", "datatype": dbt_utils.type_numeric()},
    {"name": "date", "datatype": "date"},
    {"name": "external_link_provider_name", "datatype": dbt_utils.type_string()},
    {"name": "has_attachments", "datatype": "boolean"},
    {"name": "is_reconciled", "datatype": "boolean"},
    {"name": "line_amount_types", "datatype": dbt_utils.type_string()},
    {"name": "overpayment_id", "datatype": dbt_utils.type_string()},
    {"name": "prepayment_id", "datatype": dbt_utils.type_string()},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "sub_total", "datatype": dbt_utils.type_numeric()},
    {"name": "total", "datatype": dbt_utils.type_numeric()},
    {"name": "total_tax", "datatype": dbt_utils.type_numeric()},
    {"name": "type", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()},
    {"name": "url", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
