select *
from {{ref("stg_sales_data_202p")}}
{% if target.name != 'prod_databoosters'%}
limit 10
{%endif%}