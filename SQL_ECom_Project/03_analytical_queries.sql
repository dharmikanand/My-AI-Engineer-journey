use ecommerce_logistics;

-- sales dashboard
select p.product_id,p.name,p.category,sum(oi.quantity) as total_units_sold,sum(oi.quantity*price_at_purchase) as sales
from products p
join order_items oi on oi.product_id=p.product_id
join orders o on o.order_id=oi.order_id
where o.status!='Cancelled'
group by p.product_id,p.name,p.category
order by sales desc;

-- customer purchase behaviour
select c.customer_id,concat(c.first_name,' ',c.last_name) as name,count(distinct o.order_id) as orders_placed,ifnull(sum(p.amount_paid),0) as total_amount_paid,
case
	when sum(p.amount_paid)>=20000 then 'VIP CUSTOMER'
	when sum(p.amount_paid) between 5000 and 19999 then 'REGULAR CUSTOMER'
	else 'LOW VALUE/NEW'
end as customer_segment
from customers c
left join orders o on c.customer_id=o.customer_id
left join payments p on o.order_id=p.order_id and o.status!='Cancelled'
group by c.customer_id,c.first_name,c.last_name
order by total_amount_paid desc;

-- order fullfillment
select
o.order_id,
c.email,
o.status as order_status,
sum(oi.quantity*oi.price_at_purchase) as total_bill,
ifnull(p.amount_paid,0) as amount_paid,
sum(oi.quantity*oi.price_at_purchase)-ifnull(p.amount_paid,0) as remaining_balance
from orders o
join customers c on o.customer_id=c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN payments p ON o.order_id = p.order_id
GROUP BY o.order_id, c.email, o.status, p.amount_paid
HAVING remaining_balance > 0 AND o.status != 'Cancelled';