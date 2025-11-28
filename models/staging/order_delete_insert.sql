{{config(materialized = "incremental",
         unique_key  = 'id',
         incremental_strategy = "delete+insert")}}


 with source as 
 (select * from {{source('datafeed_shared_schema','stg_orders')}} where id in (1,2,3,4,5))

 select * from source        