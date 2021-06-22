{{ config(enabled=var('xero__using_credit_note', True)) }}

select * from {{ var('credit_note') }}
