#
# Cookbook Name:: apache-upg
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "httpd" do
  action :stop
end
package "httpd" do
  version node['httpd']['version']
end
service "httpd" do
  action :start
end

