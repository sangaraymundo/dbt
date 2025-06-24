select try_cast(DDATE as date) as ddate,
salesperson,
customername,
carmake,
carmodel,
try_cast(caryear as number) as caryear,
saleprice,
commissionrate as comreate,
COMMISSIONEARNED as comnea
from {{source("raw_bi_car","CAR_SALES_DATA")}}
where try_cast(DDATE as date) > '20-01-01'