ipaddress, connection, port, user, appStatus, supportEmail
{% for host in groups['all'] %}
{{ hostvars[host].ansible_host }}, {{ hostvars[host].ansible_connection }}, {{ hostvars[host].ansible_port }}, {{ hostvars[host].ansible_user }}, {{ hostvars[host].appStatus }}, {{ hostvars[host].supportEmail }}
{% endfor %}

ipaddress, ansible_architecture, ansible_distribution_version, ansible_memtotal_mb, ansible_processor_cores, ansible_processor_count
{% for host in groups['all'] %}
{{ hostvars[host].ansible_host }}, {{ hostvars[host].ansible_architecture }}, {{ hostvars[host].ansible_distribution_version }}, {{ hostvars[host].ansible_memtotal_mb }}, {{ hostvars[host].ansible_processor_cores }}, {{ hostvars[host].ansible_processor_count }}
{% endfor %}
