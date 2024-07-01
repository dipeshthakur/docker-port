#!/bin/sh

rm -rf /tmp/final_portcheck.csv
rm -rf /tmp/portcheck.csv
rm -rf /tmp/portcheck.txt
rm -rf /www/data/index.html

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "No Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo -n "Pass," >> /tmp/portcheck.txt
else
  echo -n "Not Pass," >> /tmp/portcheck.txt
fi

echo `cat /tmp/portcheck.txt | awk 'ORS=","'` > /tmp/portcheck.csv

cat /tmp/portcheck.csv >> /tmp/final_portcheck.csv

> /www/data/index.html
echo "<html>" >> /www/data/index.html
echo "<head>" >> /www/data/index.html
echo "<h1 align=center> Port Check Checklist</h1>" >> /www/data/index.html
echo "</head>" >> /www/data/index.html
echo "<body>" >> /www/data/index.html
echo "<table border=1 align=left>" >> /www/data/index.html
echo "<tr>" >> /www/data/index.html
echo "<th>UPI</th>" >> /www/data/index.html
echo "<th>BCIF</th>" >> /www/data/index.html
echo "<th>TIPCO</th>" >> /www/data/index.html
echo "<th>ISDB</th>" >> /www/data/index.html
echo "<th>UAT</th>" >> /www/data/index.html
echo "<th>DEV</th>" >> /www/data/index.html
echo "<th>CUG</th>" >> /www/data/index.html
echo "<th>DR</th>" >> /www/data/index.html
echo "</tr>" >> /www/data/index.html
for i in `cat /tmp/final_portcheck.csv |grep -vi UPI`
do
echo "<td>`echo $i |awk -F"," {'print $1'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $2'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $3'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $4'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $5'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $6'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $7'}`</td>" >> /www/data/index.html
echo "<td>`echo $i |awk -F"," {'print $8'}`</td>" >> /www/data/index.html
done
echo "</table>" >> /www/data/index.html
echo "</body>" >> /www/data/index.html
echo "/html" >> /www/data/index.html
