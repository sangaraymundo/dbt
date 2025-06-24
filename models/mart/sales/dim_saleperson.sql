{{ config(tags=['dash_sales_bi'])}}

SELECT
rank() over(order by salesperson) as  id_salesperson,
salesperson
from {{ref("psg_montly_sales_make")}}
group by salesperson