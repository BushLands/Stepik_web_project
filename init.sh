sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo rm -rf /etc/nginx/sites-enabled/default

sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart

gunicorn -b 0.0.0.0:8080 hello:wsgi_app