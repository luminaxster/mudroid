#!/bin/bash
find . -name "*.xml" |grep -v layout | while read xml; do cat "$xml"| grep -m1 "%" && echo "At: $xml" && sleep 3s; done 

