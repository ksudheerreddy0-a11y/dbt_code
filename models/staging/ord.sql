with orders_cte 
(select order_id,
        customer_id,
        order_status,
        total_amount 
        from {{source('datafeed_shared_schema','orders')}})

select * from orders_cte        