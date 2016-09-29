#!/bin/bash

find . -name "*strings.xml" | while read xml; do cat "$xml"| grep -m1 "%%" && echo "At: \"$xml\". Creating .bu backup and removing %% in original" && cp "$xml" "$xml.bu" && sed -i "s/%%//g" "$xml"; done
