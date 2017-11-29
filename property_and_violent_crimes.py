import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats
import csv


#adding two extra columns
df_csv = pd.read_csv("crimez.csv")
df_csv["Property"] = ""
df_csv["Violent"] = ""
cols = df_csv.columns.tolist()
df_csv = df_csv[cols]
df_csv.to_csv("newcrime.csv", index= "FALSE") #create new file for following step


#filling in those two separate columns
property_crime = ['BURGLARY', 'LARCENY', 'MOTOR VEHICLE THEFT', 'ARSON', 'THEFT']

new_csv_data = []

with open("newcrime2.csv", "r") as csvfile:
    csv_file = csv.reader(csvfile, delimiter=",", quotechar='|')
    for row in csv_file:
        if row[0] == "":
            new_csv_data.append(row)
        else:
            if row[2] in property_crime:
                row[5] = 1
                row[6] = 0
                new_csv_data.append(row)
            else:
                row[5] = 0
                row[6] = 1
                new_csv_data.append(row)

with open("finalcrime.csv", "w") as myFile: #creating new file with all of these changes
    wr = csv.writer(myFile, quoting=csv.QUOTE_ALL)
    for row in new_csv_data:
        wr.writerow(row)
