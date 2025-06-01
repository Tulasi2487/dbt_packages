{% test sale_rev_test(args) %}
    select * from {{ source('src_db1', 'sales') }}
 where revenue<0
{% endtest %}
