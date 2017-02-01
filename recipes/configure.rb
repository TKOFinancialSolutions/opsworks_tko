# frozen_string_literal: true
#
# Cookbook Name:: tko
# Recipe:: configure
#

include_recipe 'opsworks_ruby::configure'

logrotate_app 'tko' do
  path      '/srv/www/tko/shared/log/*.log'
  frequency 'daily'
  rotate    3
end

include_recipe 'logrotate::global'
include_recipe 'cloudwatch-logs::default'
