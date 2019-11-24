name 'windows_workstation'
maintainer 'Michael Hrabe'
maintainer_email 'michael.hrabe@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures windows_workstation'
version '0.1.0'
chef_version '>= 14.0'

depends 'steam', '= 2.1.0'

depends 'vlc', '= 1.1.0'

depends 'seven_zip', '= 3.1.2'

depends 'notepadpp', '= 2.0.0'

depends 'chrome', '= 4.0.2'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/HackForLive/personal_workstation/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/HackForLive/personal_workstation'
