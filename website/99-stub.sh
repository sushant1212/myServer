WEBSITE_DIR="/website/src/"
CERTBOT_FILE="certbot-setup.sh"

# start the certbot setup script in the background
cd ${WEBSITE_DIR}
./${CERTBOT_FILE} &
cd -

