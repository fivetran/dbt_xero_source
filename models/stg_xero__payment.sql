
with base as (

    select * 
    from {{ ref('stg_xero__payment_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__payment_tmp')),
                staging_columns=get_payment_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        payment_id,
        account_id,
        amount,
        bank_amount,
        batch_payment_id,
        credit_note_id,
        currency_rate,
        date,
        has_account,
        invoice_id,
        is_reconciled,
        payment_type,
        reference,
        status,
        updated_date_utc
    from fields
)

select * from final
