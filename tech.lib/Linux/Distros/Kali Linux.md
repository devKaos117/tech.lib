---
category: NULL
subjects:
  - NULL
full_form: NULL
acronym: NULL
---
## Definition
[[Debian]]

### Network CLI Configuration
ifupdown
wpasupplicant
systemd-networkd

### Unix Usr and Grp
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

### Service Configuration
openssh-server -> ssh, sshd
apache -> a2enmod, a2dismod, htpasswd
systemctl -> systemd

### Getting Help
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
<https://github.com/Tripwire/tripwire-open-source>
chkrootkit, rkhunter

### Live Env
parted
mkfs.ext4
cryptsetup
cryptsetup-nuke-password

### Others
set
ping
icmp
mirrorbits -> cdimage.kali.org,http.kali.org,?mirrorlist
MIME -> MIME types, mime-support, update-mime

<https://www.kali.org/>
<https://www.kali.org/docs/>
<https://bugs.kali.org/>
<https://gitlab.com/kalilinux>
<https://pkg.kali.org/>
<https://autopkgtest.kali.org/>

kali-meta
- `kali-linux-core` - the base system (it is pulled by all the other metapackages).
- `kali-linux-headless` - the default Kali Linux installation command line tools.
- `kali-linux-default` - the default Kali Linux installation, both command line and graphical.
- `kali-linux-large` - wider range set of tools, which are not as commonly used.
- `kali-linux-everything` - metapackage of all the metapackages and other packages (almost everything that Kali provides so it is really huge!).
- `kali-tools-top10` - the ten most popular tools.
- `kali-tools-web` - web applications assessment tools.
- `kali-tools-passwords` - password cracking tools.
- `kali-tools-wireless` - The collection of 802.11, Bluetooth, RFID and SDR wireless assessment and analysis tools.
- `kali-tools-forensics` - forensic tools (finding evidence of what happened).
- `kali-tools-802-11` - wireless assessment and analysis tools.
- `kali-tools-bluetooth` - Bluetooth focused tools.
- `kali-tools-crypto-stego` -: cryptography and steganography tools.
- `kali-tools-crypto-fuzzing` - fuzzing attack tools.
- `kali-tools-gpu` - GPU-powered tools (tools making use of the computing power available in your graphical card).
- `kali-tools-hardware` - tools designed to attacking hardware.
- `kali-tools-rfid` - Radio Frequency IDentification (RFID) tools.
- `kali-tools-sdr` - Software Defined Radio (SDR) tools.
- `kali-tools-voip` - Voice Over IP tools.
- `kali-tools-windows-resources` - Pre-compiled Microsoft Windows binaries.

## Relevant Reading
- [[]]

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
