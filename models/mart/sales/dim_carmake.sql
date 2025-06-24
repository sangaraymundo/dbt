{{ config(tags=['dash_sales_bi'])}}

SELECT
rank() over(order by carmake) as  id_carmake,
carmake
from {{ref("psg_montly_sales_make")}}
group by carmake