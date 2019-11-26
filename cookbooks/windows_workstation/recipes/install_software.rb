#
# Cookbook:: windows_workstation
# Recipe:: software
#
# Copyright:: 2019, The Authors, All Rights Reserved.
CHOCOLATE_PACKAGES = default['chocolatey']['packages']

CHOCOLATE_PACKAGES.each do |package_name|
  chocolatey_package package_name do
    action :install
  end
end
