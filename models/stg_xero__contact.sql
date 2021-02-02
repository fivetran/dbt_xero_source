
with base as (

    select * 
    from {{ ref('stg_xero__contact_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__contact_tmp')),
                staging_columns=get_contact_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        contact_id,
        first_name,
        last_name,
        email_address,
        name,
        is_customer,
        is_supplier,
        default_currency,
        contact_status
    from fields
)

select * from final
