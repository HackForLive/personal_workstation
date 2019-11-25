#
# Cookbook:: windows_workstation
# Recipe:: software
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# steam_app 'install steam app' do
#   action :install
# end

# vlc_app 'install vlc' do
#   action :install
# end

# seven_zip_tool '7z 15.14 install' do
#   action    [:install, :add_to_path]
#   package   '7-Zip 15.14'
#   path      'C:\7z'
#   source    'http://www.7-zip.org/a/7z1514.msi'
#   checksum  'eaf58e29941d8ca95045946949d75d9b5455fac167df979a7f8e4a6bf2d39680'
# end

# chrome 'set_user_preferences' do
#   cookbook 'chrome'
#   parameters(
#     homepage: 'https://www.google.com'
#   )
#   action :master_preferences
# end

%w(googlechrome 7zip vlc notepadplusplus git openssh autohotkey sysinternals ccleaner foxitreader python3 choco install winscp keepass awscli vscode virtualbox wireshark).each do |package_name|
  chocolatey_package package_name do
    action :install
  end
end
