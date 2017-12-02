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

Looking specifically between 2011 and 2015. All data were merged on community area.

Methodology:

Cleaning and merging the data was the most challenging part of this project, while using community area as the key. The ACS data only included 2011 - 2015, so we decided to limit all our data to this timeframe. Most of the data cleaning was done with bash, but python was used in altering the ACS data and in the merging of the three datasets. There were some errors in the data itself, such as columns being off or blank, and different datasets used different indexes which required restructuring. From this, we downloaded our datasets individually, identified the necessary columns, restructured them as needed aligning community area as the key, and finally merged them together in one unified dataset.

311 Calls 

All we needed from this dataset was the number of 311 calls and their associated community area. After filtering for those columns, we summed the number of 311 calls, grouping by the respective community area (for all calls from 2011-2015).

Crime data 

We were specifically interested in the number of property and violent crimes per community area from 2011-2015. According to the Chicago Police Dept, Property crimes include: Burglary, Larceny, Motor Vehicle Theft, and Arson. The data, did not use the term “Burglary” so we decided to include “Theft.” Violent crimes included: Homicide, Criminal Sexual Assault, Assault, Battery and Robbery.

We cleaned and narrowed the csv file down to year, community area, and primary type (type of crime from the 8 crimes listed above). We added two separate columns for property crime and violent crime, which simply received a 0 or 1 dependinding on the category they fell into. Then we summed total crimes (primary type), property crimes, and violent crimes all indexed by community area (for all years 2011-2015). These files were too large to post on Github, so we included links to dropbox.

ACS Data 

We wanted to explore some of the demographics of people living in each community area. We were specifically interested in Median income and educational attainment. ACS data had Median income, and for educational attainment, it had information regarding the total number of people over 25 with a Bachelor’s degree and the total number of people over 25 with a high school degree. Because we were wanted a percentage of each, we added two additional columns that divided each of these categories by the total population in each community area. Our resulting dataset left us with median income, percent of buildings in that neighborhood that are vacant, percent of the population over age 25 with a high school degree, and precent of the population over 25 with a bachelors degree, all indexed by community area.

Merge 

Once we had the minimum information from each data set, we merged them all using the community area as the key. This file contained the following columns: Community Area, Property, Violent, Primary Type, GEOG (Name of Community area), POP_25OV, HS, BACH, MEDINC, VACperc, PopOvr25wBach, PopOv25wHS, and Reports (for number of 311 reports).

With this data, we performed multiple regression analyses to determine any statstically significant relationship between 311 calls and crime, in support of the broken windows theory.

With this data, we were able to run regressions and see if we found anything that was statistically significant and whether the findings supported the broken windows theory.

The Baseline Model: 

We draw on a model to assess the relationship between 311 reports to investigate an abandoned building and crime in Chicago neighborhoods. Crime is broken up into two categories: property and violent crimes. We include a control for percentage of vacant property according to ACS 2010-2015 estimates to control for baseline vacant properties in each community area. We also draw on ACS estimates for demographic data, including median income, and education levels (population share over 25 with Bachelors and share with high school degree). Using these estimates, we aim to observe the effect 311 reporting and interventions into an abandoned building has on crime, and particularly, on property and violent crimes. The model is summarized below:

Crime ~ Reports + VACperc + MEDINC + PopOv25wBach + PopOv25wHS
Crime is the property and violent crimes that are reported. Reports denotes 311 service requests for a vacant building. VACperc is the share of vacant property within a community area according to ACS 2010-2015 estimates. MEDINC denotes the median of a community area according to ACS 2010-2015 estimates. PopOv25wBach and PopOv25wHS represent the share of population over 25 with a bachelors or high school degree, respectively, within a community area based on ACS 2010-2015 estimates.

