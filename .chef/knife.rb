# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sreddy"
client_key               "#{current_dir}/sreddy.pem"
chef_server_url          "https://mrp2.mylabserver.com/organizations/standav"
cookbook_path            ["#{current_dir}/../cookbooks"]
