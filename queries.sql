TEE /users/Kat/desktop/m5a1-output.txt

select
customer.customer_num,
order_num,
order_date
from customer
 left join orders on customer.customer_num = orders.customer_num;
