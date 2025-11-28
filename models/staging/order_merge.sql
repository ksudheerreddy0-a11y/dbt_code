{{config (materialized = "incremental",
          unique_key = 'id',
          incremental_strategy = "merge")}}


with source as 
(select * from {{source('datafeed_shared_schema','stg_orders')}}) 

select * from source