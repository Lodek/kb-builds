#!/usr/bin/sh
KLE_WRAPPER="python /home/lodek/projects/kb-kle-wrapper/kle-wrapper/kle-wrapper.py"
LAYOUT_FILE="../layout/layout.json"
cd maps
ls l* | xargs -I target $KLE_WRAPPER -l $LAYOUT_FILE -k target -o ../layout/target.png
