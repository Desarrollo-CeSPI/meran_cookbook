#
# Cookbook Name:: meran
# Recipe:: default
#
# Copyright (C) 2013 CeSPI - UNLP
# 
# All rights reserved - Do Not Redistribute
#

installer = "/tmp/#{node[:meran][:version]}"

cookbook_file installer

bash "install_meran" do
  user "root"
  cwd File.dirname(installer)
  code <<-EOH
    tar zxf #{File.basename(installer)}
    cd meranunlp
    ./instalar.sh -i #{node[:meran][:instance_name]}
  EOH
end
