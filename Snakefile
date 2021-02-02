
rule all:
    input: 
        "mtcars.sqlite3",
        "mtcars.png"

rule data:
    output:
        "mtcars.sqlite3"
    script: 
        "week4_R.R"

rule plot:
    input:
        "mtcars.sqlite3"
    output:
        "mtcars.png"
    script: 
        "week4_Pyton.py"