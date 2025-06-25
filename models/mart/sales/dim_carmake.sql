{{ config(tags=['dash_sales_bi'])}}

SELECT
{{generate_id('carmake')}} as  id_carmake,
carmake
from {{ref("psg_montly_sales_make")}}
group by carmake