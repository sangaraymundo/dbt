{{ config(tags=['dash_sales_bi'])}}

SELECT 
     ddate,
    id_salesperson,
    id_carmake,
    totalsale,
    totalcom
from {{ref("psg_montly_sales_make")}} as psgm
left join {{ref("dim_carmake""")}} as dimcm on psgm.carmake =dimcm.carmake
left join {{ref("dim_saleperson")}} as dimcp on psgm.salesperson =dimcp.salesperson