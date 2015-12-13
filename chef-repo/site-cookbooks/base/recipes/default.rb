#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rbenv_ruby "2.1.5" do
  ruby_version "2.1.5"
  global true
end
 
rbenv_gem "bundler" do
  ruby_version "2.1.5"
  version "1.8.2"
end
 
service 'iptables' do
  action [:disable, :stop]
end

mysql_service 'default' do
  port '3306'
  version '5.1'
  initial_root_password ''
  action [:delete, :create, :start]
end

mysql_client 'default' do
	action :create
end