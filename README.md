# AdvancedInformationExercises_snakemake

## mtcars plot

![mtcars plot](https://github.com/nargesr/AdvancedInformaticsExercises_snakemake/blob/main/mtcars.png)

## Answer questions

1. How do you delete all output from a snakemake workflow? If you want to delet all output you can use ```--delete-all-output``` flag (whole command shoud be ```snakemake --delete-all-output```) but if you want to remove specific out put you have to add the name of that in the command (i.e. ```snakemake target --delete-all-output```.

2. How do you delete output from a single snakemake rule? There isn't a command to delete output from a single snakemake rule.

3. What is the citation for snakemake?

![Köster, Johannes and Rahmann, Sven. “Snakemake - A scalable bioinformatics workflow engine”. Bioinformatics 2012.](https://academic.oup.com/bioinformatics/article/28/19/2520/290322)

See ![Citations](https://snakemake.readthedocs.io/en/stable/project_info/citations.html) for more information.


## Result of ```touch```

### touch R script

```
$ touch week4_R.R 
$ snakemake --cores 1
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	data
	1	plot
	3

[Mon Feb  1 20:52:31 2021]
rule data:
    input: week4_R.R
    output: mtcars.sqlite3
    jobid: 2

[Mon Feb  1 20:52:31 2021]
Finished job 2.
1 of 3 steps (33%) done

[Mon Feb  1 20:52:31 2021]
rule plot:
    input: mtcars.sqlite3, week4_Pyton.py
    output: mtcars.png
    jobid: 1

[Mon Feb  1 20:52:33 2021]
Finished job 1.
2 of 3 steps (67%) done

[Mon Feb  1 20:52:33 2021]
localrule all:
    input: mtcars.png
    jobid: 0

[Mon Feb  1 20:52:33 2021]
Finished job 0.
3 of 3 steps (100%) done
Complete log: /Users/nargesrezaie/Documents/University/Winter 2021/ECOEVO283/AdvancedInformaticsExercises_snakemake/.snakemake/log/2021-02-01T205231.009704.snakemake.log
```

### touch mtcars.sqlite3

```
$ touch mtcars.sqlite3              
$ snakemake --cores 1
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	plot
	2

[Mon Feb  1 20:54:15 2021]
rule plot:
    input: mtcars.sqlite3, week4_Pyton.py
    output: mtcars.png
    jobid: 1

[Mon Feb  1 20:54:17 2021]
Finished job 1.
1 of 2 steps (50%) done

[Mon Feb  1 20:54:17 2021]
localrule all:
    input: mtcars.png
    jobid: 0

[Mon Feb  1 20:54:17 2021]
Finished job 0.
2 of 2 steps (100%) done
Complete log: /Users/nargesrezaie/Documents/University/Winter 2021/ECOEVO283/AdvancedInformaticsExercises_snakemake/.snakemake/log/2021-02-01T205415.798616.snakemake.log
```

### touch week4_Pyton.py 

```
$ touch week4_Pyton.py 
$ snakemake --cores 1 
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	plot
	2

[Mon Feb  1 20:55:19 2021]
rule plot:
    input: mtcars.sqlite3, week4_Pyton.py
    output: mtcars.png
    jobid: 1

[Mon Feb  1 20:55:21 2021]
Finished job 1.
1 of 2 steps (50%) done

[Mon Feb  1 20:55:21 2021]
localrule all:
    input: mtcars.png
    jobid: 0

[Mon Feb  1 20:55:21 2021]
Finished job 0.
2 of 2 steps (100%) done
Complete log: /Users/nargesrezaie/Documents/University/Winter 2021/ECOEVO283/AdvancedInformaticsExercises_snakemake/.snakemake/log/2021-02-01T205519.270231.snakemake.log
```
