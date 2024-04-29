#!/bin/bash
# * 10-voonair.sh -- add voonair Context
sed -i '/\/Contexts/i \
		<Context name="voonair">\
			docBase="voonair"\
			path="voonair"\
			enable="yes"\
		</Context>' /opt/CA/secure-proxy/proxy-engine/conf/server.conf

# * -- add testweb Context
sed -i '/\/Contexts/i \
		<Context name="testweb">\
			docBase="testweb"\
			path="testweb"\
			enable="yes"\
		</Context>' /opt/CA/secure-proxy/proxy-engine/conf/server.conf

# Enable the az service 
sed '/<Context name="Authentication\/Authorization web services"/,/<\/Context>/ s/enable="no"/enable="yes"/' /opt/CA/secure-proxy/proxy-engine/conf/server.conf
