#!/bin/bash
# * 10-adminui.sh -- Access Gateway as proxy for Admin UI
MYPATH="$(cd "$(dirname "${BASH_SOURCE}")"; pwd)"
cd "$MYPATH"
. ./."$(basename "$BASH_SOURCE" | cut -f1 -d.)".shlib
#CONFPATH=/opt/CA/secure-proxy/proxy-engine/conf/
sed -i '/hostnames="/a \
enableredirectrewrite=yes\
redirectrewritablehostnames='"${ADMINUIHOST}" "${CONFPATH}server.conf"
sed -i '/Proxy Rules/,$d' "${CONFPATH}proxyrules.xml"
cat << EOF >> "${CONFPATH}proxyrules.xml"
<!-- Proxy Rules-->
<nete:proxyrules xmlns:nete="http://${ADMINUIHOST}/">
  <nete:cond criteria="beginswith" type="uri">
    <nete:case value="/iam/siteminder/">
      <nete:forward>https://${ADMINUIHOST}\$0</nete:forward>
    </nete:case>
    <nete:case value="/castylesr5.1.1/">
      <nete:forward>https://${ADMINUIHOST}\$0</nete:forward>
    </nete:case>
    <nete:default>
      <nete:forward>http://www.example.com\$0</nete:forward>
    </nete:default>
  </nete:cond>
</nete:proxyrules>
EOF
