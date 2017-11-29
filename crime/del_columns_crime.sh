#!/bin/bash
#getting rid of the unwanted index columns in the finalcrime.csv

cat finalcrime.csv | cut -d, -f3,4-7 >> finalclean.csv
