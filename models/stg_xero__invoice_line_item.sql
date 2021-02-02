
with base as (

    select * 
    from {{ ref('stg_xero__invoice_line_item_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__invoice_line_item_tmp')),
                staging_columns=get_invoice_line_item_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        invoice_id,
        line_item_id,
        account_code,
        description,
        discount_rate,
        item_code,
        line_amount,
        quantity,
        tax_amount,
        tax_type,
        unit_amount
    from fields
)

select * from final
