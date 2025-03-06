#allow http
sudo iptables -D INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT 5 -p tcp --dport 80 -j ACCEPT
 ##make it persistent
sudo netfilter-persistent save
 ##or
sudo iptables-save > /etc/iptables/rules.v4