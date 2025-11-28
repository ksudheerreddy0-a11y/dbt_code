
{{config (materialized = "incremental",
          incremental_strategy = "append")}}
		  
		  with source as 
		  (select * from {{source('datafeed_shared_schema','stg_orders')}} where id in (1,2,3))
		  
		  select * from source