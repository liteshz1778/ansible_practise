'Hi, Available fruits are:'
{% for fruit in fruits %}
{{ fruit | title }}
{% endfor %}


'Vegetables are:'
{% for vegetable in vegetables %}
'vegetable: {{ vegetable.name | upper }} & its price is {{ vegetable.price }}'
{% endfor %}

'Groceries are:'
'{{ groceries | default(["wheat", "rice"]) }}'
