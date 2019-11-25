# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
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

# cookbook 'seven_zip', '= 3.1.2', :supermarket

# cookbook 'notepadpp', '= 2.0.0', :supermarket

# cookbook 'chrome', '= 4.0.2', :supermarket

# cookbook 'vlc', '= 1.1.0', :supermarket

# cookbook 'steam', '= 2.1.0', :supermarket

# cookbook 'dmg', '= 4.1.1', :supermarket
