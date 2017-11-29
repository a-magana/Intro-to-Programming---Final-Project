cat calls311.csv | awk 'NF==4' | cut -d, -f3,20 | grep -v "\b/2008\b" | grep -v "\b/2009\b" |grep -v "\b/2016\b" | grep -v "\b/2017\b" | grep -v "\b/2010\b" >> edited_calls.csv
