{{ config(enabled=var('xero__using_tracking_categories', True)) }}

with base as (

    select * 
    from {{ ref('stg_xero__tracking_category_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__tracking_category_tmp')),
                staging_columns=get_tracking_category_columns()
            )
        }}

        {{ fivetran_utils.add_dbt_source_relation() }}    
    from base
),

final as (
    
    select
        tracking_category_id,
        name,
        status,
        _fivetran_synced

        {{ fivetran_utils.source_relation() }}
        
    from fields
)

select * 
from final
