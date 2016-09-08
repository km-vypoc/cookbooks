#
# Cookbook Name:: curl
# Recipe:: nghttp2
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
unless File.exist? "/tmp/nghttp2.installed"

	git '/tmp/nghttp2' do
	  repository 'https://github.com/nghttp2/nghttp2.git'
	  revision 'master'
	  action :sync
	end

	bash 'install_nghttp2' do
	  user 'root'
	  cwd '/tmp/nghttp2'
	  code <<-EOH
	  autoreconf -i
	  automake
	  autoconf
	  ./configure
      make
	  make install
	  ldconfig
	  EOH
	end

	file '/tmp/nghttp2.installed' do
	  owner 'root'
	  group 'root'
	  mode '0755'
	  action :create
	end
end
