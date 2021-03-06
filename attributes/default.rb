#
# Cookbook Name:: ohai
# Attribute:: default
#
# Copyright 2010-2016, Chef Software, Inc
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

# FHS location would be /var/lib/chef/ohai_plugins or similar.
default['ohai']['plugin_path'] = case node['platform_family']
                                 when 'windows'
                                   "#{ENV['systemdrive']}/chef/ohai_plugins"
                                 else
                                   '/etc/chef/ohai_plugins'
                                 end

# The list of plugins and their respective file locations
default['ohai']['plugins']['ohai'] = 'plugins'
default['ohai']['hints_path'] = Ohai.config[:hints_path].first
