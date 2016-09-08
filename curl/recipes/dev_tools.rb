#
# Cookbook Name:: curl
# Recipe:: dev_tools
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package ['g++', 'make', 'binutils', 'autoconf', 'automake', 'autotools-dev', 'libtool', 'pkg-config', 'zlib1g-dev', 'libcunit1-dev', 'libssl-dev', 'libxml2-dev', 'libev-dev', 'libevent-dev', 'libjansson-dev', 'libjemalloc-dev', 'cython', 'python3-dev', 'python-setuptools', 'git'] do
	action :install
end