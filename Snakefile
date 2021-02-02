rule all:
    input:
        "mtcars.png"

rule data:
    input:
        script = "week4_R.R"
    output:
        data = "mtcars.sqlite3"
    shell:
        "Rscript {input.script} --out {output.data}"

rule plot:
    input:
        data = "mtcars.sqlite3",
        script = "week4_Pyton.py"
    output:
        data = "mtcars.png"
    shell:
        "python {input.script} -data {input.data} -plot {output.data}"