import pandas as pd
# this gives count of both property and violent crime per each community area

df = pd.read_csv("crimez.csv")
solution= df.groupby('Community Area')['Primary Type'].count().sort_values(ascending = False)
print(solution)
