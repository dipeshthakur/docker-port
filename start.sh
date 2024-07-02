#!/bin/sh

UPI=`ping -c 1 google.com &> /dev/null && echo connected || echo disconnected`
BCIF=`ping -c 1 kotak.com &> /dev/null && echo connected || echo disconnected`
ISDB=`ping -c 1 google.com &> /dev/null && echo connected || echo disconnected`
MWF=`ping -c 1 kotak.com &> /dev/null && echo connected || echo disconnected`
TIPCO=`ping -c 1 google.com &> /dev/null && echo connected || echo disconnected`


#sed -i -e s/HOSTNAME/${HOSTNAME}/g > /www/data/index.html

#if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
#  echo "1. Pass" >> /usr/share/nginx/html/index.html
#else
#  echo  "1. Not Pass" >> /usr/share/nginx/html/index.html
#fi

html="/usr/share/nginx/html/index.html"

#Generating HTML file
echo "<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">" >> $html
echo "<html>" >> $html
echo "<link rel="stylesheet" href="https://unpkg.com/purecss@0.6.2/build/pure-min.css">" >> $html
echo "<body>" >> $html
echo "<fieldset>" >> $html
echo "<center>" >> $html
echo "<h2>Port Connectivity report" >> $html
echo "<h3><legend>Digital Platform Team</legend></h3>" >> $html
echo "</center>" >> $html
echo "</fieldset>" >> $html
echo "<br>" >> $html
echo "<center>" >> $html
echo "<h2>Downstream Service Details : </h2>" >> $html
echo "<table class="pure-table">" >> $html
echo "<thead>" >> $html
echo "<tr>" >> $html
echo "<th>UPI</th>" >> $html
echo "<th>BCIF</th>" >> $html
echo "<th>ISDB</th>" >> $html
echo "<th>MWF</th>" >> $html
echo "<th>TIPCO</th>" >> $html
echo "</tr>" >> $html
echo "</thead>" >> $html
echo "<tbody>" >> $html
echo "<tr>" >> $html
echo "<td>$UPI</td>" >> $html
echo "<td>$BCIF</td>" >> $html
echo "<td>$ISDB</td>" >> $html
echo "<td>$MWF</td>" >> $html
echo "<td>$TIPCO</td>" >> $html
echo "</tr>" >> $html
echo "</tbody>" >> $html
echo "</table>" >> $html
echo "<tr>" >> $html
echo "</body>" >> $html
echo "</html>" >> $html


# Use `exec` so that PID 1 is the nginx process and not this script
exec /usr/sbin/nginx -g "daemon off;"
