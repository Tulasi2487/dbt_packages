{% test ship_order_test(model,column_1,column_2) %}
    select * from {{model}} where {{column_1}}>{{column_2}}
{% endtest %}
