#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'windows_workstation'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chocolatey::default', 'windows_workstation::install_software' # 'notepadpp::default'

# Specify a custom source for a single cookbook:
cookbook 'windows_workstation', path: '.'

cookbook 'chocolatey', '~> 2.0.1', :supermarket
