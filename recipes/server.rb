#
# Cookbook:: myhttpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node.default["attribute"] = "from the recipe file"

#puts node.default["attribute"]

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/etc/motd' do
  source 'motd.erb'
end
