{% macro get_payment_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "amount", "datatype": dbt_utils.type_numeric()},
    {"name": "bank_amount", "datatype": dbt_utils.type_numeric()},
    {"name": "batch_payment_id", "datatype": dbt_utils.type_string()},
    {"name": "credit_note_id", "datatype": dbt_utils.type_string()},
    {"name": "currency_rate", "datatype": dbt_utils.type_numeric()},
    {"name": "date", "datatype": "date"},
    {"name": "expense_claim_id", "datatype": dbt_utils.type_string()},
    {"name": "has_account", "datatype": "boolean"},
    {"name": "has_validation_errors", "datatype": "boolean"},
    {"name": "invoice_id", "datatype": dbt_utils.type_string()},
    {"name": "is_reconciled", "datatype": "boolean"},
    {"name": "overpayment_id", "datatype": dbt_utils.type_string()},
    {"name": "payment_id", "datatype": dbt_utils.type_string()},
    {"name": "payment_type", "datatype": dbt_utils.type_string()},
    {"name": "prepayment_id", "datatype": dbt_utils.type_string()},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
