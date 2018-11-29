#!/usr/bin/bash

#Submit this clustering script for sbatch to snakemake with:
#snakemake -j 99 --cluster slurm_scheduler.py --cluster-status slurm_status.py

seff $1 |  perl -wne 'BEGIN {$exit = 1;} if ($_ =~ m/State: ([A-Z]+) /) { $exit = 0; $s = $1; $s =~ tr/A-Z/a-z/; print "$s\n"; } END {exit($exit);}'
