#!/usr/bin/env bash

echo "======================================"
echo " CONSENT REQUIRED"
echo " This only runs because YOU executed it."
echo " Safe demo only. No damage."
echo "======================================"
echo

read -p "Type YES to continue: " input
if [ "$input" != "YES" ]; then
  echo "Cancelled."
  exit 0
fi

echo
echo "Safe demo running..."

if command -v notify-send >/dev/null 2>&1; then
  notify-send "Demo" "You ran a script from a link (safe demo)"
fi

echo "Done. Nothing harmful was done."
