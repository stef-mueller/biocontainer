#!/bin/bash

# prerequisite: plink2/test folder available in working directory
# description: load binary toy data, calcualte and save missingess
#              stats for all samples  

plink2 \
    --bfile data/input/toy \
    --missing sample-only \
    --out data/output/container_test