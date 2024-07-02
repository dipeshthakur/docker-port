#!/bin/sh

#rm -rf /tmp/final_portcheck.csv
#rm -rf /tmp/portcheck.csv
#rm -rf /tmp/portcheck.txt
#rm -rf /www/data/index.html

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "1. Pass," >> /usr/share/nginx/html/index.html
else
  echo -n "1. Not Pass," >> /usr/share/nginx/html/index.html
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "2. Pass," >> /usr/share/nginx/html/index.html
else
  echo -n "2. Not Pass," >> /usr/share/nginx/html/index.html
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "3. Pass," >> /usr/share/nginx/html/index.html
else
  echo -n "3. Not Pass," >> /usr/share/nginx/html/index.html
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "4. Pass," >> /usr/share/nginx/html/index.html
else
  echo -n "4. No Pass," >> /usr/share/nginx/html/index.html
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "5. Pass," >> /usr/share/nginx/html/index.html
else
  echo -n "5. Not Pass," >> /usr/share/nginx/html/index.html
fi

#echo `cat /tmp/portcheck.txt | awk 'ORS=","'` > /tmp/portcheck.csv

#cat /tmp/portcheck.csv >> /tmp/final_portcheck.csv

#> /usr/share/nginx/html/index.html
#echo "<html>" >> /usr/share/nginx/html/index.html
#echo "<head>" >> /usr/share/nginx/html/index.html
#echo "<h1 align=center> Port Check Checklist</h1>" >> /usr/share/nginx/html/index.html
#echo "</head>" >> /usr/share/nginx/html/index.html
#echo "<body>" >> /usr/share/nginx/html/index.html
#echo "<table border=1 align=left>" >> /usr/share/nginx/html/index.html
#echo "<tr>" >> /usr/share/nginx/html/index.html
#echo "<th>UPI</th>" >> /usr/share/nginx/html/index.html
#echo "<th>BCIF</th>" >> /usr/share/nginx/html/index.html
#echo "<th>TIPCO</th>" >> /usr/share/nginx/html/index.html
#echo "<th>ISDB</th>" >> /usr/share/nginx/html/index.html
#echo "<th>UAT</th>" >> /usr/share/nginx/html/index.html
#echo "<th>DEV</th>" >> /usr/share/nginx/html/index.html
#echo "<th>CUG</th>" >> /usr/share/nginx/html/index.html
#echo "<th>DR</th>" >> /usr/share/nginx/html/index.html
#echo "</tr>" >> /usr/share/nginx/html/index.html
#for i in `cat /tmp/final_portcheck.csv |grep -vi UPI`
#do
#echo "<td>`echo $i |awk -F"," {'print $1'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $2'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $3'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $4'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $5'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $6'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $7'}`</td>" >> /usr/share/nginx/html/index.html
#echo "<td>`echo $i |awk -F"," {'print $8'}`</td>" >> /usr/share/nginx/html/index.html
#done
#echo "</table>" >> /usr/share/nginx/html/index.html
#echo "</body>" >> /usr/share/nginx/html/index.html
#echo "</html>" >> /usr/share/nginx/html/index.html
