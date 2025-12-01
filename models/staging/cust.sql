{{config(materialized = 'view')}}

with customer_cte as 
(select customer_id,
        customer_name 
        from {{source('datafeed_shared_schema','customers')}})

select * from customer_cte        