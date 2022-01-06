select d.product_category_name,count(d.product_category_name) as trx from olist_sellers_dataset a 
join olist_order_items_dataset b  on a.seller_id = b.seller_id
join olist_order_payments_dataset c on b.order_id = c.order_id
join olist_products_dataset d on b.product_id = d.product_id
where payment_type = 'credit_card'
group by d.product_category_name
order by count(d.product_category_name) desc
limit 10;