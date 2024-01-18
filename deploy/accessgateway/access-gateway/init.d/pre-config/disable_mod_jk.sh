#!/bin/bash

# Define the path to your Apache configuration file
APACHE_CONFIG_FILE="/opt/CA/secure-proxy/httpd/conf/httpd.conf"  # Replace with the actual path

# Check if the file exists
if [ ! -f "$APACHE_CONFIG_FILE" ]; then
    echo "Apache configuration file not found at $APACHE_CONFIG_FILE"
    exit 1
fi

# Make a backup of the original configuration file
cp "$APACHE_CONFIG_FILE" "${APACHE_CONFIG_FILE}.bak"

# Comment out LoadModule directive for mod_jk
sed -i 's/^LoadModule jk_module/#&/' "$APACHE_CONFIG_FILE"

# Comment out Jk* directives
sed -i 's/^Jk/#&/' "$APACHE_CONFIG_FILE"

echo "mod_jk has been disabled in $APACHE_CONFIG_FILE. A backup is available at ${APACHE_CONFIG_FILE}.bak."

# Optionally, restart Apache to apply changes
# Uncomment the next line if you want to restart Apache automatically
# sudo systemctl restart apache2   # or `sudo service httpd restart` depending on your system
