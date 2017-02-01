# frozen_string_literal: true
#
# Cookbook Name:: opsworks_tko
# Recipe:: setup
#

prepare_recipe

# Create swap
swap_file '/mnt/swap' do
  size    2048 # MBs
  persist true
end

package 'nodejs'
package 'htop'
package 'tmux'
package 'imagemagick'

# capybara/phantomjs dependencies
package 'chrpath'
package 'libssl-dev'
package 'libxft-dev'
package 'libfreetype6'
package 'libfreetype6-dev'
package 'libfontconfig1'
package 'libfontconfig1-dev'
package 'libqt4-dev'
package 'libqtwebkit-dev'

# docsplit dependencies
package 'poppler-utils'
package 'graphicsmagick'

include_recipe 'tko::phantomjs'
include_recipe 'opsworks_ruby::setup'