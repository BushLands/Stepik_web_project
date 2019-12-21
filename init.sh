# link our config to nginx's config file
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
# remove default nginx config
sudo rm -rf /etc/nginx/sites-enabled/default
# restarting nginx to initialize new config
sudo /etc/init.d/nginx restart