sudo ln ~/web/etc/nginx.conf /etc/nginx/conf.d/test.conf
sudo rm -r /etc/nginx/sites-enabled/default
sudo service nginx restart

sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart