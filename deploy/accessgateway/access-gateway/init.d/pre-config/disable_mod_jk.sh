#!/bin/bash

# Define the path to your workers.properties file
WORKERS_FILE="/opt/CA/secure-proxy/httpd/conf/workers2.properties"  # Replace with the actual path

# Check if the file exists
if [ ! -f "$WORKERS_FILE" ]; then
    echo "workers.properties file not found at $WORKERS_FILE"
    exit 1
fi

# Make a backup of the original workers.properties file
cp "$WORKERS_FILE" "${WORKERS_FILE}.bak"

# Update the URI mapping from /* to /aghealthservice
sed -i 's|\[uri:/\*\]|\[uri:/aghealthservice/\*\]|' "$WORKERS_FILE"

echo "workers.properties has been updated. A backup is available at ${WORKERS_FILE}.bak."
