cat calls311.csv | cut -d ',' -f1,3-6,8-10,16-18 | grep -v "\b/2008\b" | grep -v "\b/2009\b" |grep -v "\b/2016\b" | grep -v "\b/2017\b" >> edited_calls.csv
