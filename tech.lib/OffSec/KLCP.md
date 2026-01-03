### Network CLI Configuration
ifupdown
wpasupplicant
systemd-networkd
### Unix usr and grp
/etc/passwd,shadow,group
getent (nsswitch)
adduser
passwd
chfn
chsh
chage
addgroup
delgroup
gpasswd
newgrp
sg
id
GID and UID bits
### Service configuration
dpkg -> /var/lib/dpkg/, /var/log/dpkg.log
apt -> /var/lib/apt/, /var/cache/apt/
apt-xapian-index -> axi-cache
aptitude
openssh-server -> ssh, sshd
apache -> a2enmod, a2dismod, htpasswd
systemctl -> systemd
### Getting help
/usr/share/doc/PACKAGE/\*
info (pinfo)
man
apropos
reportbug
### Security and Monitoring
fail2ban
change default pwd
generate new ssh host keys
netfilter -> iptables, ip6tables, fwbuilder
syslog -> logcheck
top, btop, htop
Advanced Intrusion Detection Environment
https://github.com/Tripwire/tripwire-open-source
chkrootkit, rkhunter
### Others
set
ping
icmp
mirrorbits -> cdimage.kali.org,http.kali.org,?mirrorlist
MIME -> MIME types, mime-support, update-mime