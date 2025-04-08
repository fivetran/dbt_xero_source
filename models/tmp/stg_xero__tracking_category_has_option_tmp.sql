{{ config(enabled=var('xero__using_tracking_category_has_option', True)) }}

{{
    fivetran_utils.union_data(
        table_identifier='tracking_category_has_option', 
        database_variable='xero_database', 
        schema_variable='xero_schema', 
        default_database=target.database,
        default_schema='xero',
        default_variable='tracking_category_has_option'
    )
}} 