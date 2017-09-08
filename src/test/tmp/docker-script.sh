#!/bin/sh

set -evx

mkdir /build
cp -R /test /build/

(
  cd /build/test
  pip install -r requirements.txt
  python "test_mod_twms.py" -o /results/test_results.xml
)

chown "1078104:1049089" /results/test_results.xml
