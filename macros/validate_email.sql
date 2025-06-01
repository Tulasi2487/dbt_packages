{% test validate_email(model,column_name) %}
    select * from {{ source('src_db1', 'model') }}
 where {{column_name}} not like '%@%'
{% endtest %}
