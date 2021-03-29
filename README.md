# Historical CLEX 'analysis3' Conda Environments

This repository holds exported environment.yml files for historical 'analysis3'
Conda environments that were managed at NCI by CLEX CMS.

Details of the current 'analysis3' environment can be found at
http://climate-cms.wikis.unsw.edu.au/Conda.

The CLEX conda environment is updated once a quarter, after the quarterly NCI
maintenance. Old environment versions are normally kept around for three
quarters, so version 20.01, first created in January 2020 (q1), will be removed
in October of 2020 (q4).

## Using environment files

No support is provided for these environment files, they may not work as-is
to recreate the exact environment (the Conda package server will sometimes
remove old package versions). Modifications may be needed to get them to work,
and they will probably not work at all on Windows or Mac.

To attempt to recreate the environment run e.g.
```
conda env create -n my-analysis3 -f analysis3-20.01
```
