# sleep for sometime so that nginx begins
echo "Waiting for nginx to start..."
sleep 5
echo "Setting up certbot!"

# setup python venv for certbot
python3 -m venv /opt/certbot/
/opt/certbot/bin/pip install --upgrade pip

# Install certbot
/opt/certbot/bin/pip install certbot certbot-nginx
ln -s /opt/certbot/bin/certbot /usr/local/bin/certbot

# Let certbot do its thing
certbot -n --agree-tos -d sushantswamy.com --nginx

# Setup automatic certificate renewal
touch /etc/cron.d/certbot
chmod 644 /etc/cron.d/certbot
echo "0 0,12 * * * root /opt/certbot/bin/python -c 'import random; import time; time.sleep(random.random() * 3600)' && certbot renew -q" | tee -a /etc/cron.d/certbot > /dev/null
echo "#" >> /etc/cron.d/certbot

