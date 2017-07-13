#
# Cookbook:: myhttpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "myhttpd::server"

#node.default["attribute"] = "from the recipe file"

#puts node.default["attribute"]

#package 'httpd'

#service 'httpd' do
#  action [:enable, :start]
#end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#end
