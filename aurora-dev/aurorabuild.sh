#!/bin/bash -e
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

# A script to update sources within the vagrant environment an rebuild/install aurora components.
# Usage: aurorabuild [COMPONENT]...
# where COMPONENT is a name for an aurora component that makes up part of the infrastructure.
# Run with zero arguments for a full list of components that may be built.


exit 0