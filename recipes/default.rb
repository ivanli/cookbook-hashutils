#
# Cookbook Name:: hashutils
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_zipfile node['hashutils']['out_path'] do
  source node['hashutils']['zip_path']
  action :unzip
  not_if {::Dir.exists? node['hashutils']['out_path'] }
end

windows_path File.join(node['hashutils']['out_path'], node['hashutils']['bin_folder']).gsub('/','\\') do
  action :add
end
