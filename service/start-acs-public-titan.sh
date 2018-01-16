################################################################################
# Copyright 2017 General Electric Company
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0
################################################################################

#!/usr/bin/env bash

unset PROXY_OPTS

if [[ -z "$SPRING_PROFILES_ACTIVE" ]]; then
    export SPRING_PROFILES_ACTIVE='h2,public,simple-cache,titan'
fi
export DIR=$( dirname "$( python -c "import os; print os.path.abspath('${BASH_SOURCE[0]}')" )" )
source "${DIR}/start-acs.sh" "$@"