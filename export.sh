#!/bin/bash
#  Copyright 2021 Scott Wales
#
#  \author  Scott Wales <scott.wales@unimelb.edu.au>
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

ENV=$1

. "/g/data/hh5/public/apps/miniconda3/etc/profile.d/conda.sh"
conda activate $ENV

set -eu

# Export current stable conda environment
conda env export > $ENV.yml

# Add exported environment to git repository, commit and push back to GitHub
git add $ENV.yml
git commit -m "Export $ENV.yml"
git push
