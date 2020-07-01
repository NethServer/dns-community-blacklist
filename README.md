# DNS community blacklist

This is an example of a blacklist DNS git repository suitable for [NethServer Threat Shield](https://github.com/NethServer/nethserver-blacklist/).
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

Source: [Hosts](https://github.com/StevenBlack/hosts)

## adaway.dns

Source: [Firebog](https://firebog.net/)

## disconnectme.dns

Source: [Firebog](https://firebog.net/)

## pgl.dns

Source: [Firebog](https://firebog.net/)

## easylist.dns

Source: [Firebog](https://firebog.net/)

