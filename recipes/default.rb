#
# Cookbook:: apache_workstation_demo
# Recipe:: default
#
# Copyright:: 2018, Nick Rycar, All Rights Reserved.

package 'apache2'

service 'apache2' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end