#
# Cookbook Name:: curl
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'curl::dev_tools'
include_recipe 'curl::openssl'
include_recipe 'curl::nghttp2'
include_recipe 'curl::curl'
#include_recipe 'curl::clean_up'










