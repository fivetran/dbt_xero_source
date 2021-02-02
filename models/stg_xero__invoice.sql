
with base as (

    select * 
    from {{ ref('stg_xero__invoice_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__invoice_tmp')),
                staging_columns=get_invoice_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        invoice_id,
        amount_credited,
        amount_due,
        amount_paid,
        contact_id,
        currency_code,
        currency_rate,
        date,
        due_date,
        expected_payment_date,
        fully_paid_on_date,
        invoice_number,
        is_discounted,
        reference,
        sent_to_contact,
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
