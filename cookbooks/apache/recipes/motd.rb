hostname = node['hostname']
file '/etc/motd' do
	# Use of variable below
	content "Hostname of this server is: #{hostname}"
end
