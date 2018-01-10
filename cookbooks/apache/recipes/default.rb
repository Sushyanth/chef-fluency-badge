#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Use of node attributes to decide which package to install.
if node['platform_family'] == "rhel"
	package = 'httpd'
elsif node['platform_family'] == "debian"
	package = 'apache2'
end

package 'apache' do
	package_name package
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:enable, :start]
end

# Includes websites recipe. This will run everytime default recipe is invoked by the node.
# include_recipe 'apache::websites'
