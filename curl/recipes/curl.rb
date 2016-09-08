#
# Cookbook Name:: dcurl
# Recipe:: curl
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

unless File.exist? "/tmp/curl-7.50.0.installed"

	bash 'install_curl' do
	  user 'root'
	  cwd '/tmp'
	  code <<-EOH
	  wget  wget "http://curl.haxx.se/download/curl-7.50.0.tar.gz"
	  tar -xzvf curl-7.50.0.tar.gz
	  cd curl-7.50.0
	  ./configure --with-nghttp2=/usr/local --with-ssl
	  make
	  make install
	  ldconfig
	  EOH
	end

	file '/tmp/curl-7.50.0.installed' do
	  owner 'root'
	  group 'root'
	  mode '0755'
	  action :create
	end

end