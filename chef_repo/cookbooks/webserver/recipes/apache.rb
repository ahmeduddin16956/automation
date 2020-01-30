#
# Cookbook:: webserver
# Recipe:: apache
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
package 'apache2'


template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'www-data'
  group 'www-data'
  mode '0644'
end

file '/etc/samplefile' do 
  content node['webserver']['name']
end

