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


# stevenblack hosts
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > stevenblack.dns
curl -fsS https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | grep '^0.0.0.0' |grep -v -e '0.0.0.0 0.0.0.0' | awk '{print $2}' >> stevenblack.dns

# adaway
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > adaway.dns
curl -fsS https://adaway.org/hosts.txt | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> adaway.dns

# disconnectme
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > disconnectme.dns
curl -fsS https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt >> disconnectme.dns

# pgl
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > pgl.dns
curl -fsS 'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> pgl.dns

# easylist
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > easylist.dns
curl -fsS https://v.firebog.net/hosts/Easylist.txt >> easylist.dns

# MVPS
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > mvps.dns
curl -fsS 'https://winhelp2002.mvps.org/hosts.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | sed 's/\r$//' |less | awk '{print $2}' >> mvps.dns

# Ultimate
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > ultimate.dns
curl -fsS 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts0' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns
curl -fsS 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts1' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns
curl -fsS 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts2' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns
curl -fsS 'https://raw.githubusercontent.com/mitchellkrogza/Ultimate.Hosts.Blacklist/master/hosts/hosts3' | grep -v -e '^#' -e 'localhost' -e '^$' -e 'broadcasthost' -e '0.0.0.0$' | sed 's/\r$//' |sed 's/\local$//' | less | awk '{print $2}' >> ultimate.dns

# FirstParty Trackers (Not working: broken list)
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Trackers\n# Confidence      : 4\n#\n" > firstparty.dns
# curl -fsS 'https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> firstparty.dns

# DigitalSide
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > digitalside.dns
curl -fsS https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt | grep -v -e '^#' >> digitalside.dns

# Firebog Prigent-Crypto
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Crypto-Malware\n# Confidence      : 4\n#\n" > firebog-crypto.dns
curl -fsS https://v.firebog.net/hosts/Prigent-Crypto.txt >> firebog-crypto.dns

# Phishing Army
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Phising\n# Confidence      : 4\n#\n" > phisingarmy.dns
curl -fsS https://phishing.army/download/phishing_army_blocklist_extended.txt | grep -v -e '^#' >> phisingarmy.dns

# Firebog Prigent-Malware
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > firebog-malware.dns
# curl -fsS https://v.firebog.net/hosts/Prigent-Malware.txt >> firebog-malware.dns

# Abuse.ch
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > abuse_ch.dns
curl -fsS 'https://urlhaus.abuse.ch/downloads/hostfile/' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> abuse_ch.dns

# FadeMind
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > fademind.dns
curl -fsS 'https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts' | grep -v -e '^#' -e 'localhost' -e '^$' | awk '{print $2}' >> fademind.dns

# WaLLy3K 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > wally3k.dns
curl -fsS https://v.firebog.net/hosts/static/w3kbl.txt | grep -v -e '^#' -e '^$' >> wally3k.dns

# RooneyMcNibNug 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > rooneymcnibnug.dns
curl -fsS https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt | grep -v -e '#' >> rooneymcnibnug.dns

# AdguardDNS
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > adguarddns.dns
curl -fsS https://v.firebog.net/hosts/AdguardDNS.txt >> adguarddns.dns

# Admiral
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > admiral.dns
curl -fsS https://v.firebog.net/hosts/Admiral.txt >> admiral.dns

# AnudeepND
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > anudeepnd.dns
curl -fsS 'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> anudeepnd.dns

# BigDargon
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Mixed\n# Confidence      : 4\n#\n" > bigdargon.dns
curl -fsS 'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts' | grep -v -e '^#' -e 'localhost' -e '^$' | less | awk '{print $2}' >> bigdargon.dns

# Easyprivacy
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Privacy\n# Confidence      : 4\n#\n" > easyprivacy.dns
curl -fsS https://v.firebog.net/hosts/Easyprivacy.txt >> easyprivacy.dns

# Firebog Prigent-Ads
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > firebog-ads.dns
curl -fsS https://v.firebog.net/hosts/Prigent-Ads.txt >> firebog-ads.dns

# quidsup 
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Tracking\n# Confidence      : 4\n#\n" > quidsup.dns
curl -fsS https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt | grep -v -e "^#" >> quidsup.dns

# The Block List Project - Abuse
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Abuse\n# Confidence      : 4\n#\n" > abuse-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/abuse-nl.txt | grep -v -e '#' >> abuse-nl.dns

# The Block List Project - Ads
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ads\n# Confidence      : 4\n#\n" > ads-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/ads-nl.txt | grep -v -e '#' >> ads-nl.dns

# The Block List Project - Crypto
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Crypto\n# Confidence      : 4\n#\n" > crypto-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/crypto-nl.txt | grep -v -e '#' >> crypto-nl.dns

# The Block List Project - Drugs
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Drugs\n# Confidence      : 4\n#\n" > drugs-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/drugs-nl.txt | grep -v -e '#' >> drugs-nl.dns

# The Block List Project - Facebook
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Facebook\n# Confidence      : 4\n#\n" > facebook-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/facebook-nl.txt | grep -v -e '#' >> facebook-nl.dns

# The Block List Project - Fraud
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Fraud\n# Confidence      : 4\n#\n" > fraud-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/fraud-nl.txt | grep -v -e '#' >> fraud-nl.dns

# The Block List Project - Gambling
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Gambling\n# Confidence      : 4\n#\n" > gambling-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/gambling-nl.txt | grep -v -e '#' >> gambling-nl.dns

# The Block List Project - Malware
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Malware\n# Confidence      : 4\n#\n" > malware-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/malware-nl.txt | grep -v -e '#' >> malware-nl.dns

# The Block List Project - Phising
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Phising\n# Confidence      : 4\n#\n" > phising-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/phishing-nl.txt | grep -v -e '#' >> phising-nl.dns

# The Block List Project - Piracy
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Piracy\n# Confidence      : 4\n#\n" > piracy-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/piracy-nl.txt | grep -v -e '#' >> piracy-nl.dns

# The Block List Project - Porn
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Porn\n# Confidence      : 4\n#\n" > porn-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/porn-nl.txt | grep -v -e '#' >> porn-nl.dns

# The Block List Project - Ransomware
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Ransomware\n# Confidence      : 4\n#\n" > ransomware-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/ransomware-nl.txt | grep -v -e '#' >> ransomware-nl.dns

# The Block List Project - Redirect
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Redirect\n# Confidence      : 4\n#\n" > redirect-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/redirect-nl.txt | grep -v -e '#' >> redirect-nl.dns

# The Block List Project - Scam
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Scam\n# Confidence      : 4\n#\n" > scam-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/scam-nl.txt | grep -v -e '#' >> scam-nl.dns

# The Block List Project - Tracking
echo -e "#\n# Commmunity DNS list\n#\n#\n#\n# Maintainer      : Community\n# Category        : Tracking\n# Confidence      : 4\n#\n" > tracking-nl.dns
curl -fsS https://blocklistproject.github.io/Lists/alt-version/tracking-nl.txt | grep -v -e '#' >> tracking-nl.dns
