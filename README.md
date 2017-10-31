# Intro-to-Programming---Final-Project
Do neighborhoods with more civic engagement have lower levels of crime? If civic engagement increases in an area, do serious crimes decrease? 

BACKGROUND
Our project seeks to explore James Q. Wilson and George Kelling’s broken windows theory, which links crime and disorder to a lack of civic engagement. The theory claims that as crime increases in a community, residents of the area internalize that they live in an “unsafe” environment and in turn, become apathetic. This apathy leads to a decrease in civic engagement, weakening social ties. Criminals, in turn, begin feeling less accountable to members of their community and gradually commit more serious crimes. The broken windows theory advocates for eliminating disorder to prevent incidences of serious crimes. 

OBJECTIVE AND PROCESS
We want to apply the broken windows theory to neighborhoods in Chicago by examining whether neighborhoods with higher civic engagement have lower crime. This project will mostly be looking at correlation, but if we identify some clear causal relationships, we will explore them further. In our project, we are defining civic engagement as people’s willingness to speak up about disorder in their communities. We believe that reporting incidences of building violations is a reflection of a person’s commitment to their community. Therefore, the more reports coming from within an area, according to the broken windows theory, the less crime there should be. We will be using the Chicago Police Department’s definition of serious crimes (index crimes), which includes homicide, criminal sexual assault, robbery, aggravated assault, aggravated battery, burglary, larceny, motor vehicle theft, and arson, as well as non-index crimes (less serious offenses).  We aim to examine if greater incidences of 311 service requests are correlated to a reduction in both types of crimes. 

DATA SOURCES
Crimes data (same as from class): https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2 
ACS for Information regarding population demographics: 
https://www.census.gov/programs-surveys/acs/data.html
(Years 2010 - 2015)
311 Service Requests: Vacant and Abandoned Buildings Reporting: https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Vacant-and-Abandoned-Building/7nii-7srd/data

Residents of Chicago can call 311 for non-emergency service requests to different city departments. Residents can utilize 311 service requests to notify the Department of Buildings of potential building violations or lodge a complaint on an abandoned/vacant buildings. For our project, we will merge the data on 311 service requests and crimes in Chicago based on the geographic ward the service request and crime is reported in. We will use ACS data to control for socioeconomic factors that may also influence crime/vacant buildings occurrences. 
