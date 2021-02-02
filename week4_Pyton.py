import pandas as pd
import sqlite3
import seaborn as sns
import matplotlib.pyplot as plt


con = sqlite3.connect(snakemake.input[0])
df = pd.read_sql("select * from mtcars", con)

g = sns.FacetGrid(r.mtcars, col="cyl")
g.map(sns.scatterplot,"wt","mpg");
g.savefig(snakemake.output[0])
