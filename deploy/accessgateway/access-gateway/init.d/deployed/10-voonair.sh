#!/bin/bash
# * 10-voonair.sh -- add voonair Context
sed -i '/\/Contexts/i \
		<Context name="voonair">\
			docBase="voonair"\
			path="voonair"\
			enable="yes"\
		</Context>' /opt/CA/secure-proxy/proxy-engine/conf/server.conf
