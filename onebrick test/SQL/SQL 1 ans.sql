select seller_city,count(a.seller_city) as trx from olist_sellers_dataset a 
join olist_order_items_dataset b  on a.seller_id = b.seller_id
group by seller_city
order by count(a.seller_city) desc
limit 10;