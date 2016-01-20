cookbook_file '/etc/yum.repos.d/server.repo' do
  source 'server.repo'
  mode '0755'
end

yum_package 'httpd' do
  action :install
  flush_cache [ :before ]
end

template "/etc/httpd/conf.d/arjun.conf" do
  source "template.erb"
  variables("port" => 80, "servername" => "arjun.com", "serveradmin" => "webmaster@arjun.com" , "document_root" => "/var/www/html/arjun")
end

node['createdir']['valueofdir'].each do |dir,desc|
directory dir do
    mode "0755"
    recursive true
  end
end
cookbook_file '/var/www/html/arjun/index.html' do
  source 'index.html'
  mode '0755'
end

service "httpd" do
  action [:enable,:start]
end
