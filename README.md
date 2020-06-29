# DNS community blacklist

This is an example of a blacklist DNS git repository suitable for [NethServer Threat Shield](https://github.com/NethServer/nethserver-blacklist/).
The blacklist has been generated using [Hosts](https://github.com/StevenBlack/hosts).

How to generate the `community.dns` file:
```
yum install git
git clone https://github.com/StevenBlack/hosts.git
cd hosts
pip3 install --user -r requirements.txt
python3 updateHostsFile.py --auto
tail -n +$(grep "# Start StevenBlack" -n hosts | cut -f1 -d:) hosts | grep '^0.0.0.0' | awk '{print $2}' > tmp
cat <<EOF > header
#
# Community DNS list
#
# hosts file
#
# My awesome DNS list
#
# Maintainer      : Community
# Category        : Malware
# Confidence      : 4
#
EOF
cat header tmp > community.dns
```
