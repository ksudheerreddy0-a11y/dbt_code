{{config
(materialized = 'view')}}

with tbl as 
(select id,
        order_date,
        user_id 
        from {{source('datafeed_shared_schema','stg_orders')}}) 

select * from tbl