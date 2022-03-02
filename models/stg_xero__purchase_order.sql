
with base as (

    select * 
    from {{ ref('stg_xero__purchase_order_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__purchase_order_tmp')),
                staging_columns=get_purchase_order_columns()
            )
        }}
        
        {{ fivetran_utils.add_dbt_source_relation() }}
    from base
),

final as (
    
    select 
        -- IDs
        purchase_order_id,
        contact_id,

        -- dates
        date as purchase_order_date,
        updated_date_utc as updated_date,
        delivery_date,
        _fivetran_synced,

        sub_total,
        total_tax,
        total,
        currency_code,
        currency_rate,
        purchase_order_number,
        reference,
        status as purchase_order_status,
        type,
        is_discounted,
        line_amount_types

        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * from final
