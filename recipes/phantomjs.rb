# frozen_string_literal: true
#
# Cookbook Name:: opsworks_tko
# Recipe:: phantomjs
#

version = node['phantomjs']['version']

bash 'download' do
  code "wget https://bitbucket.org/ariya/phantomjs/downloads/#{version}.tar.bz2"
end

bash 'extract' do
  "sudo tar xvjf #{version}.tar.bz2"
end

bash 'move' do
  code "mv #{version} /usr/local/share"
end

bash 'link' do
  code "ln -sf /usr/local/share/#{version}/bin/phantomjs /usr/local/bin"
end

bash 'cleanup' do
  code "rm #{version}.tar.bz2"
end
