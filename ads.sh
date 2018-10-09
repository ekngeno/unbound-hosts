
#!/bin/bash
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts
cat hosts | grep '^0\.0\.0\.0' | awk '{print "local-zone: \""$2"\" refuse"}' > unbound_ad_servers
mv unbound_ad_servers /etc/unbound/conf.d/unbound_ad_servers
systemctl restart unbound.service
