import pandas as pd
# this gives count of both property and violent crime per each community area

df = pd.read_csv("calls_final.csv")
solution= df.groupby('Community Area')['Report'].count().sort_values(ascending = False)
solution.to_csv("highestvol_calls.csv")
