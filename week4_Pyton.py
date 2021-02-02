import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-data', dest='data', default='mtcars.sqlite3', help='database')
parser.add_argument('-plot', dest='plot', default='mtcars.png', help='plotName')
args = parser.parse_args()


# Connect to the db we made previously
con = sqlite3.connect(args.data)
df = pd.read_sql("select * from mtcars", con)
# Make the plot using seaborn
g = sns.FacetGrid(df, col="cyl")
g.map(sns.scatterplot,"wt","mpg")
# Save plot to file
g.savefig(args.plot)
