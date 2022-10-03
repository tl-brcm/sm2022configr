#!/bin/bash
# ./deploy/policyserver/policy-server/init.d/deployed/01-disableldapref.sh
REG="/tmp/$$.reg"
cat <<EOF > "$REG"
REGEDIT4


[HKEY_LOCAL_MACHINE\SOFTWARE\Netegrity\SiteMinder\CurrentVersion\Ds\LDAPProvider]
"EnableEnhancedReferrals"=dword:00000001
"EnableReferrals"=dword:00000000
EOF
smregimport -f "$REG"
