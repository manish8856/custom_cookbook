#
# Cookbook Name:: custom
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
execute "something" do 
	command "touch /tmp/imran"
end
service 'apache' do
  action :stop
end
package 'git' do
  action :/tmp/install
end
directory "/srv/www/shared" do
  mode 0755
  owner 'root'
  group 'root'
  recursive true
  action :create
end