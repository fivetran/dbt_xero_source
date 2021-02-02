
with base as (

    select * 
    from {{ ref('stg_xero__bank_account_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__bank_account_tmp')),
                staging_columns=get_bank_account_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        account_id,
        _fivetran_synced,
        code,
        name as bank_account_name
    from fields
)

select * from final
