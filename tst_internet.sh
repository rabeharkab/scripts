#!/bin/bash
date >>tst_internet.txt 2>/dev/null
cat /etc/timezone>>tst_internet.txt 2>/dev/null
python speedtest.py>>tst_internet.txt 2>/dev/null
echo -e "\n">>tst_internet.txt 2>/dev/null
