
with base as (

    select * 
    from {{ ref('stg_xero__bank_transaction_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__bank_transaction_tmp')),
                staging_columns=get_bank_transaction_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        bank_transaction_id,
        bank_account_id,
        contact_id,
        currency_code,
        currency_rate,
        date,
        is_reconciled,
        reference,
        status,
        sub_total,
        total,
        total_tax,
        type,
        updated_date_utc,
        url
    from fields
)

select * from final
