#!/bin/bash

echo "[+] Scrap Subdomains From CRT.SH[+]"
echo
echo "=============================="
echo "securityTalent | devmehedi101"
echo " https://t.me/Securi3yTalent"
echo
echo "=============================="
echo 
echo 
curl 'https://crt.sh/?q=%.'$1'&output=json' | jq -r '.[].name_value' | grep -v '*' | sort | uniq | tee -a srt.txt