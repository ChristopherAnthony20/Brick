select a.seller_city,c.payment_value as payment_value from olist_sellers_dataset a 
join olist_order_items_dataset b  on a.seller_id = b.seller_id
join olist_order_payments_dataset c on b.order_id = c.order_id
join olist_products_dataset d on b.product_id = d.product_id
join olist_orders_dataset e on b.order_id = e.order_id
where e.order_status not in ('canceled','unavailable') 
group by a.seller_city
order by c.payment_value desc
limit 10;