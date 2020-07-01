#!/bin/bash
#
# Copyright (C) 2020 Nethesis S.r.l.
# http://www.nethesis.it - nethserver@nethesis.it
#
# This script is part of NethServer.
#
# NethServer is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License,
# or any later version.
#
# NethServer is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with NethServer.  If not, see COPYING.
#

# Quick and dirty downloader
# After executing the script, remember to commit the changes


## hosts
pushd hosts
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : mixed\n# Confidence      : 4\n#\n" > ../stevenblack.dns
python3 updateHostsFile.py --auto
tail -n +$(grep "# Start StevenBlack" -n hosts | cut -f1 -d:) hosts | grep '^0.0.0.0' | awk '{print $2}' >> ../stevenblack.dns
popd


## adaway
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > adaway.dns
curl -s https://adaway.org/hosts.txt | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> adaway.dns
