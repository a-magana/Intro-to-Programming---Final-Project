# Intro-to-Programming---Final-Project
Do neighborhoods with more civic engagement have lower levels of crime? If civic engagement increases in an area, do serious crimes decrease?

Website: https://a-magana.github.io/Intro-to-Programming---Final-Project/

Original Data Sources:
- Crimes data: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
  Crime data files were to large to upload. Here is the most up to date/clean data:
  https://www.dropbox.com/s/uegmvcg6d9ridnw/final_clean.csv?dl=0

- ACS for Information regarding population demographics: https://www.census.gov/programs-surveys/acs/data.html

- ACS for Information regarding population demographics: https://datahub.cmap.illinois.gov/dataset/community-data-snapshots-raw-data/resource/8c4e096e-c90c-4bef-9cf1-9028d094296e

- 311 Service Requests: Vacant and Abandoned Buildings Reporting: https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Vacant-and-Abandoned-Building/7nii-7srd/data

Looking specifically between 2011 and 2015. All data was merged on community area.

Methodology:
Cleaning and merging the data was the most challenging part of this project. We decided that we would use community area as the key. The ACS data only included 2011 - 2015, so we decided to limit all our data to this timeframe.Most of the data cleaning was done with bash, but the ACS data was altered using python. There were some errors in the data itself, such as columns being off or blank. We had to find ways of altering the data and getting it ready to merge.

311 Calls
All we needed from this data set was the count of calls from each community area. So, we reduced the data to a date and community area column.

Crime Data
We were specifically interested in the number of property and violent crimes per community area from 2011-2015. According to the Chicago Police Dept, Property crimes include: Burglary, Larceny, Motor Vehicle Theft, and Arson. The data, did not use the term “Burglary” so we decided to include “Theft.” Violent crimes included: Homicide, Criminal Sexual Assault, Assault, Battery and Robbery.

We cleaned the input cvs file and created new versions with each major modification. These files were too large to post on Github, so we included links to dropbox. We narrowed the cvs file down to the year, community area, index number, and primary type of crime = property or violent crime. After this, we added two columns “Property” and “Violent.” Each row of these columns had either a 1 or a 0. This allowed us to more easily count the distinct crime categories.

ACS Data
We wanted to explore some of the demographics of people living in each community area. We were specifically interested in Median income and educational attainment. ACS data had Median income and for educational attainment, it had information regarding the total number of people over 25 with a Bachelor’s degree and the total number of people over 25 with a high school degree. Because we were wanted a percentage of each, we added two additional columns that divided each of these categories by the total population in each community area.

Merge
Once we had the minimum information from each data set, we merged them all using the community area as the key. This file contained the following columns:
Community Area, Property, Violent, Primary Type, GEOG (Name of Community area), POP_25OV, HS, BACH, MEDINC, VACperc, PopOvr25wBach, PopOv25wHS, and Reports (for number of 311 reports).

With this data, we were able to run regressions and see if we found anything that was statistically significant and whether the findings supported the broken windows theory.
