#!/bin/bash
# * 01-audit1.sh -- enable enhanced audit and others
REG="/tmp/$$.reg"
cat <<EOF > "$REG"
REGEDIT4


[HKEY_LOCAL_MACHINE\SOFTWARE\Netegrity\SiteMinder\CurrentVersion\Reports]
"AffiliateFilter"=dword:00000001
"AnonymousAuthFilter"=dword:00000001
"AnonymousAzFilter"=dword:00000001
"AuthFilter"=dword:00000001
"AzFilter"=dword:00000001
"Enable Enhance Tracing"=dword:00000004
"UserAdminFilter"=dword:00000001
EOF
smregimport -f "$REG"
