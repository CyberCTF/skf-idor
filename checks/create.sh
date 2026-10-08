#!/bin/sh
# A PDF can be created and gets a numeric id.
set -e
H=http://web:5000
curl -fsS "$H/" -o /dev/null
curl -fsS -d "message=probe" "$H/create" | grep -q "Pdf created successfully! ID:"
