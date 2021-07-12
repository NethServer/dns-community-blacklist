# DNS community blacklist

This is an example of a blacklist DNS git repository suitable for [NethServer Threat Shield](https://github.com/NethServer/nethserver-blacklist/).
Keep in mind this repository might not be updated so often as the original sources.
The blacklist has been generated using [Hosts](https://github.com/StevenBlack/hosts).

To update the lists:

- install all required tools
- execute `download.sh`
- commit changes

## Install pre-requisites

The following tools will be used by the `download.sh` script.
```
yum install git
git clone --depth=1 https://github.com/StevenBlack/hosts.git
cd hosts
pip3 install --user -r requirements.txt
```

## community.dns

Unified hosts files (adware + malware) from several well-curated sources

Source: [Steven Black Hosts](https://github.com/StevenBlack/hosts)

## adaway.dns

Mobile ad provider

Source: [Adaway.org](https://github.com/AdAway/AdAway/wiki/HostsSources)

## disconnectme.dns

Ad filter list by Disconnect

Source: [Firebog](https://firebog.net/)

## pgl.dns

Blocklist for use with hosts files to block ads, trackers, and other nasty things

Source: [yoyo.org](https://pgl.yoyo.org/adservers/)

## easylist.dns

Source: [Firebog](https://firebog.net/)

## mvps.dns

Source: [MVPS](https://winhelp2002.mvps.org/)

## ultimate.dns

The Ultimate Hosts Blacklist (UHB) is one of the world's largest curated and unified hosts file

Source: [Ultimate Hosts Blacklist](https://github.com/Ultimate-Hosts-Blacklist/Ultimate.Hosts.Blacklist)

## firstparty.dns

First-party trackers host list

Source: [Geoffrey Frogeye](https://hostfiles.frogeye.fr/)

## digitalside.dns

Malware. The list contains unique domains collected over the last 7 days by OSINT.digitalside.it

Source: [Digital Side](https://osint.digitalside.it/)

##  firebog-crypto.dns

Source: [Firebog](https://firebog.net/)

## phishingarmy.dns

Blocklist to filter Phishing

Source: [Phishing Army](https://phishing.army)

## firebog-malware.dns

Source: [Firebog](https://firebog.net/)

## abuse_ch.dns

List of domain names associated with malware URLs

Source: [abuse.ch](https://urlhaus.abuse.ch/api/)

## fademind.dns

Extra rules for StevenBlack's hosts project

Source: [Fade Mind](https://github.com/FadeMind/hosts.extras)

## wally3k.dns

Source: [Firebog](https://firebog.net/)

## rooneymcnibnug.dns

A general ad & tracking domain blocklist for pi-hole. Attempting to find domains not already included in popular lists

Source: [The SNAFU Blocklist](https://github.com/RooneyMcNibNug/pihole-stuff)

## adguarddns.dns

Source: [Firebog](https://firebog.net/)

## admiral.dns

Source: [Firebog](https://firebog.net/)

## anudeepnd.dns

Curated hostfile to block trackers, advertisements and malware

Source: [anudeepND](https://github.com/anudeepND/blacklist)

## bigdargon.dns

Hosts block ads of Vietnamese

Source: [hostsVN](https://github.com/bigdargon/hostsVN)

## firebog-ads.dns

Source: [Firebog](https://firebog.net/)

## quidsup.dns

NoTrack Tracker Blocklist. Domains classified as tracking or advertising

Source: [QuidsUp NoTrack](https://quidsup.net/notrack/blocklist.php)

## abuse-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Lists of sites created to deceive

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## ads-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Ad servers / sites

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## crypto-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Crypto / cryptojacking based sites. Can break normal "good" crypto sites

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## drugs-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

RE sites that deal with illegal drugs. Including RX drugs illegal to posses in the US

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## facebook-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Block FB and FB related / owned services

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## fraud-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Sites create to fraud

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## gambling-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

All gambling based site legit and illegal

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## malware-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Known sites that host malware

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## phising-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Sites created to phish info

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## piracy-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Knows sites that allow for illegal downloads

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## porn-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Porn or sites that promote porn

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## ransomware-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Known sites that host or contain ransomware

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## redirect-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Sites that redirect your from your intended site

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## scam-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Sites that intend to scam

Source: [The Block List Project](https://github.com/blocklistproject/Lists)

## tracking-nl.dns

Primary  Block Lists created to have a little more control over what is being blocked.

Sites dedicated to tracking and gathering visitor info

Source: [The Block List Project](https://github.com/blocklistproject/Lists)
