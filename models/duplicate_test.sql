{% test duplicate_test(model, column_name) %}
  
  SELECT *
  FROM {{ model }}
  QUALIFY row_number() OVER (PARTITION BY {{column_name}} ORDER BY {{column_name}}) > 1

{% endtest %}
