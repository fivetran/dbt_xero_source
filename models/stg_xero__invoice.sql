
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
        -- IDs
        invoice_id,
        contact_id,

        -- dates
        date as invoice_date,
        updated_date_utc as updated_date,
        planned_payment_date,
        due_date,
        expected_payment_date,
        fully_paid_on_date,
        _fivetran_synced,

        -- amounts
        amount_credited,
        amount_due,
        amount_paid,
        sub_total,
        total,
        total_tax,

        currency_code,
        currency_rate,
        has_attachments,
        has_errors,
        invoice_number,
        is_discounted,
        line_amount_types,
        reference,
        sent_to_contact as is_sent_to_contact,
        status as invoice_status,
        type,
        url
    from fields
)

select * from final
