
with base as (

    select * 
    from {{ ref('stg_xero__journal_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__journal_tmp')),
                staging_columns=get_journal_columns()
            )
        }}

        --Necessary operation to union the multiple schemas.
        {{ fivetran_utils.add_dbt_source_relation() }}

    from base
),

final as (
    
    select 
        journal_id,
        cast(created_date_utc as {{ dbt_utils.type_timestamp() }}) as created_date_utc,
        cast(journal_date as {{ dbt_utils.type_timestamp() }}) as journal_date,
        journal_number,
        reference,
        source_id,
        source_type

        --Necessary operation to union the multiple schemas.
        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * 
from final
