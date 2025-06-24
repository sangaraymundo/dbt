{{
    config(
        materialized= 'table',
        tags=['processing','sales','carmake']
    )
}}

SELECT 
    date_trunc('MONTH',ddate) as ddate,
    salesperson,
    carmake,
    SUM(saleprice - comnea) as totalsale,
    SUM(comnea) as  totalcom
FROM {{ref("stg_sales_data_202p")}}
group by date_trunc('MONTH',ddate),salesperson,carmake