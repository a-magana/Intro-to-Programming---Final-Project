#variable list for reference 
ID,
Case Number,
Date,
Block,
IUCR,
Primary Type,
Description,
Location Description,
Arrest,
Domestic,
Beat,
District,
Ward,
Community Area,
FBI Code,
X Coordinate,
Y Coordinate,
Year,
Updated On,
Latitude,
Longitude,
Location

#cut columns and years we dont need -- should we cut year or date ?
cat Crimes_2001topresent.csv | cut -d, -f3,5-6,14,18 | grep -v "\b/2001\b"| grep -v "\b/2002\b"| grep -v "\b/2003\b" | grep -v "\b/2004\b" | grep -v "\b/2005\b" | grep -v "\b/2006\b" | grep -v "\b/2007\b" | grep -v "\b/2008\b" | grep -v "\b/2009\b" |grep -v "\b/2016\b" | grep -v "\b/2017\b" >> edited_crimes.csv

#cut year to make file smaller
cat Crimes_2001topresent.csv | cut -d, -f3,5-6,14 | grep -v "\b/2001\b"| grep -v "\b/2002\b"| grep -v "\b/2003\b" | grep -v "\b/2004\b" | grep -v "\b/2005\b" | grep -v "\b/2006\b" | grep -v "\b/2007\b" | grep -v "\b/2008\b" | grep -v "\b/2009\b" |grep -v "\b/2016\b" | grep -v "\b/2017\b" >> edited_crimes2.csv
