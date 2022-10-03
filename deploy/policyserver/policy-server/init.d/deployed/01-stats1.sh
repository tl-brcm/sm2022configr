#!/bin/bash
# * 01-stats1.sh -- Log Policy Server statistics every 5min
REG="/tmp/$$.reg"
cat <<EOF > "$REG"
REGEDIT4


[HKEY_LOCAL_MACHINE\SOFTWARE\Netegrity\SiteMinder\CurrentVersion\PolicyServer]
"StatsTimeInterval"=dword:0000012c
EOF
smregimport -f "$REG"
