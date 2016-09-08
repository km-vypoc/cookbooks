#
# Cookbook Name:: curl
# Recipe:: openssl
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
unless File.exist? "/tmp/openssl-1.0.2h.installed"

	bash 'install_openssl' do
	  user 'root'
	  cwd '/tmp'
	  code <<-EOH
	  wget https://www.openssl.org/source/openssl-1.0.2h.tar.gz 
	  tar -xzvf openssl-1.0.2h.tar.gz
	  cd openssl-1.0.2h
	  ./config
	  make depend
	  make
	  make install
	  ln -sf /usr/local/ssl/bin/openssl /usr/bin/openssl
	  ldconfig
	  EOH
	end

	file '/tmp/openssl-1.0.2h.installed' do
	  owner 'root'
	  group 'root'
	  mode '0755'
	  action :create
	end
end