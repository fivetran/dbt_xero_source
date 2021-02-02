
with base as (

    select * 
    from {{ ref('stg_xero__manual_journal_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_xero__manual_journal_tmp')),
                staging_columns=get_manual_journal_columns()
            )
        }}
        
    from base
),

final as (
    
    select 
        manual_journal_id,
        date,
        narration,
        status,
        updated_date_utc,
        show_on_cash_basis_reports
    from fields
)

select * from final
