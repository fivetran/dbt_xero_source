{{
    fivetran_utils.union_data(
        table_identifier='organization', 
        database_variable='xero_database', 
        schema_variable='xero_schema', 
        default_database=target.database,
        default_schema='xero',
        default_variable='organization'
    )
}} 