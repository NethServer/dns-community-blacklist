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

# disconnectme
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > disconnectme.dns
curl -s https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt >> disconnectme.dns

# pgl
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > pgl.dns
curl -s 'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> pgl.dns

# easylist
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > easylist.dns
curl -s https://v.firebog.net/hosts/Easylist.txt >> easylist.dns

# MVPS
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > mvps.dns
curl -s 'http://winhelp2002.mvps.org/hosts.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | sed 's/\r$//' |less | awk '{print $2}' >> mvps.dns

# Ultimate
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > ultimate.dns
curl -s 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts0' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns
curl -s 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts1' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns

# FirstParty Trackers
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Trackers\n# Confidence      : 4\n#\n" > firstparty.dns
curl -s 'https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> firstparty.dns

# DigitalSide
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > digitalside.dns
curl -s https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt | grep -v -e '^#' >> digitalside.dns

# MalwareDomains
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > malwaredomains.dns
curl -s https://mirror1.malwaredomains.com/files/justdomains >> malwaredomains.dns

# Firebog Prigent-Crypto
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Crypto-Malware\n# Confidence      : 4\n#\n" > firebog-crypto.dns
curl -s https://v.firebog.net/hosts/Prigent-Crypto.txt >> firebog-crypto.dns

# Immortal Domains
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > immortaldomains.dns
curl -s https://mirror.cedia.org.ec/malwaredomains/immortal_domains.txt | grep -v -e '^#' >> immortaldomains.dns

# Phishing Army
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Phising\n# Confidence      : 4\n#\n" > phisingarmy.dns
curl -s https://phishing.army/download/phishing_army_blocklist_extended.txt | grep -v -e '^#' >> phisingarmy.dns

# Firebog Shalla-mal
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > firebog-malware.dns
curl -s https://v.firebog.net/hosts/Shalla-mal.txt >> firebog-malware.dns

#Abuse.ch
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > abuse_ch.dns
curl -s 'https://urlhaus.abuse.ch/downloads/hostfile/' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> abuse_ch.dns

#FaceMind
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > facemind.dns
curl -s 'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> facemind.dns

#WaLLy3K 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > wally3k.dns
curl -s https://v.firebog.net/hosts/static/w3kbl.txt | grep -v -e '#' >> wally3k.dns

#RooneyMcNibNug 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > rooneymcnibnug.dns
curl -s https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt | grep -v -e '#' >> rooneymcnibnug.dns

#AdguardDNS
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > adguarddns.dns
curl -s https://v.firebog.net/hosts/AdguardDNS.txt >> adguarddns.dns

#Admiral
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > admiral.dns
curl -s https://v.firebog.net/hosts/Admiral.txt >> admiral.dns

#AnudeepND
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > anudeepnd.dns
curl -s 'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> anudeepnd.dns

#BigDargon
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > bigdargon.dns
curl -s 'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> bigdargon.dns

#Easyprivacy
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Privacy\n# Confidence      : 4\n#\n" > easyprivacy.dns
curl -s https://v.firebog.net/hosts/Easyprivacy.txt >> easyprivacy.dns

# Firebog Prigent-Ads
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : ads\n# Confidence      : 4\n#\n" > firebog-ads.dns
curl -s https://v.firebog.net/hosts/Prigent-Ads.txt >> firebog-ads.dns

#quidsup 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Tracking\n# Confidence      : 4\n#\n" > quidsup.dns
curl -s https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt | grep -v -e '#' >> quidsup.dns
