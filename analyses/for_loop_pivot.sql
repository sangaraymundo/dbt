{% set target_makes = ['Toyota','Ford','Cheverolet','Honda','Nissan']%}

select 
ddate,
salesperson,
{% for make in target_makes %}
sum(case when carmake ='{{make}}' then totalsale else 0 end) as sales_{{make | lower}}{% if not loop.last %},{% endif %}
{% endfor %}

from {{ref("psg_montly_sales_make")}}
group by ddate,salesperson