{{ config(enabled=var('xero__using_bank_transaction', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='bank_transaction', 
        database_variable='xero_database', 
        schema_variable='xero_schema', 
        default_database=target.database,
        default_schema='xero',
        default_variable='bank_transaction',
        union_schema_variable='xero_union_schemas',
        union_database_variable='xero_union_databases'
    )
}} 