{% macro get_contact_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_number", "datatype": dbt_utils.type_string()},
    {"name": "accounts_payable_tax_type", "datatype": dbt_utils.type_string()},
    {"name": "accounts_receivable_tax_type", "datatype": dbt_utils.type_string()},
    {"name": "balances_accounts_payable_outstanding", "datatype": dbt_utils.type_numeric()},
    {"name": "balances_accounts_payable_overdue", "datatype": dbt_utils.type_numeric()},
    {"name": "balances_accounts_receivable_outstanding", "datatype": dbt_utils.type_numeric()},
    {"name": "balances_accounts_receivable_overdue", "datatype": dbt_utils.type_numeric()},
    {"name": "bank_account_details", "datatype": dbt_utils.type_string()},
    {"name": "batch_payments_bank_account_name", "datatype": dbt_utils.type_string()},
    {"name": "batch_payments_bank_account_number", "datatype": dbt_utils.type_string()},
    {"name": "batch_payments_code", "datatype": dbt_utils.type_string()},
    {"name": "batch_payments_details", "datatype": dbt_utils.type_string()},
    {"name": "batch_payments_reference", "datatype": dbt_utils.type_string()},
    {"name": "branding_theme_id", "datatype": dbt_utils.type_string()},
    {"name": "contact_id", "datatype": dbt_utils.type_string()},
    {"name": "contact_number", "datatype": dbt_utils.type_string()},
    {"name": "contact_status", "datatype": dbt_utils.type_string()},
    {"name": "default_currency", "datatype": dbt_utils.type_string()},
    {"name": "discount", "datatype": dbt_utils.type_int()},
    {"name": "email_address", "datatype": dbt_utils.type_string()},
    {"name": "first_name", "datatype": dbt_utils.type_string()},
    {"name": "has_attachments", "datatype": "boolean"},
    {"name": "has_validation_errors", "datatype": "boolean"},
    {"name": "is_customer", "datatype": "boolean"},
    {"name": "is_supplier", "datatype": "boolean"},
    {"name": "last_name", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "purchases_default_account_code", "datatype": dbt_utils.type_string()},
    {"name": "sales_default_account_code", "datatype": dbt_utils.type_string()},
    {"name": "skype_user_name", "datatype": dbt_utils.type_string()},
    {"name": "tax_number", "datatype": dbt_utils.type_string()},
    {"name": "updated_date_utc", "datatype": dbt_utils.type_timestamp()},
    {"name": "website", "datatype": dbt_utils.type_string()},
    {"name": "xero_network_key", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
