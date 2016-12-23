# frozen_string_literal: true
#
# Cookbook Name:: opsworks_tko
# Recipe:: phantomjs
#

version = node['phantomjs']['version']

bash "wget https://bitbucket.org/ariya/phantomjs/downloads/#{version}.tar.bz2"
bash "sudo tar xvjf #{version}.tar.bz2"
bash "mv #{version} /usr/local/share"
bash "ln -sf /usr/local/share/#{version}/bin/phantomjs /usr/local/bin"
bash "rm #{version}.tar.bz2"
