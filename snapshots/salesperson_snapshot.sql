{% snapshot salesperson_snapshot %}

{{
    config(
        target_schema= 'snapshot',
        unique_key = 'salesperson_id',
        strategy= 'timestamp',
        updated_at='last_updated_ts',
        invalidate_hard_deletes= True
    )
}}

select 
salesperson_id,
salesperson_name,
commission_rate,
store_id,
status,
last_updated_ts
from {{source("raw_bi_car","salesperson")}}

{% endsnapshot %}
