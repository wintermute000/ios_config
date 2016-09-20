# ios_config

Demonstration play to run through basic functionality for Cisco IOS core modules in Ansible 2.1+

Tasks included:
- define provider - sets custom facts to call as provider parameters for all tasks (e.g. login/pw/enable)
- push a configuration template onto the device - demonstration of ios_template module using jinja2 templates and host variables in host_vars
- RUN 'SHOW VERSION' - demonstration of extracting info from a show version into variable "version"
- copy - dump "version" into stdout
- template - dump "version" into text file using jinja2 template
- test - demonstration debug
- no shut - demonstration of using ios_config module to issue 'no shutdown' against a loop of parent interfaces defined in host variables in host_vars
