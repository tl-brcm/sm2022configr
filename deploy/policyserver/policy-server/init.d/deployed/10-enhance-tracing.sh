#!/bin/bash
# * 10-enhance-tracing.sh -- turn on "Enable Enhance Tracing" so smaccess/SMAUDIT lines carry
#   domain, realm, object, SessionId, category and auth directory fields.
#   Runs after the container configures sm.registry and before the Policy Server starts.
#   0 = default fields only, 1 = adds the fields above, 2/3/4 add SAML, application and device fields.
#   Do not use 4 with a PostgreSQL audit store.
$PS_HOME/bin/smconfigtool.sh MODIFYSMREG \
  "HKEY_LOCAL_MACHINE\SOFTWARE\Netegrity\SiteMinder\CurrentVersion\Reports" \
  "Enable Enhance Tracing" "0x1" "REG_DWORD"
