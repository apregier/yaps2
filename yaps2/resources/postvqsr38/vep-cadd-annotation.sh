#!/bin/bash

BIO_1984=/gscmnt/gc2802/halllab/idas/jira/BIO-1984  

INPUT_DIR=$1
OUTPUT_DIR=$2

# using the BIO-1984 git branch
PTERO_SCRIPT=${BIO_1984}/vendor/dlarson-gatk-scripts/run_annotation_on_previously_decomposed.pl

PERL=/gsc/scripts/opt/genome/current/user/bin/genome-perl

cmd="UR_USE_DUMMY_AUTOGENERATED_IDS=0 PATH=/gscmnt/gc2719/halllab/bin:$PATH ${PERL} ${PTERO_SCRIPT} ${INPUT_DIR} ${OUTPUT_DIR}"
echo $cmd
eval $cmd
