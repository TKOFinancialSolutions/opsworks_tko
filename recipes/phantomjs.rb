# frozen_string_literal: true
#
# Cookbook Name:: opsworks_tko
# Recipe:: phantomjs
#

node[:deploy].each do |application, deploy|
  deploy = node['defaults'].merge(deploy)
  version = deploy['phantomjs']['version']

  bash 'download' do
    cwd '~/'
    code "wget https://bitbucket.org/ariya/phantomjs/downloads/#{version}.tar.bz2"
  end

  bash 'extract' do
    cwd '~/'
    bash "sudo tar xvjf #{version}.tar.bz2"
  end

  bash 'move' do
    cwd '~/'
    bash "mv #{version} /usr/local/share"
  end

  bash "ln -sf /usr/local/share/#{version}/bin/phantomjs /usr/local/bin"

  bash 'cleanup' do
    cwd '~/'
    code "rm ~/#{version}.tar.bz2"
  end
end
