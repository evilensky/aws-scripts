#!/usr/bin/env ruby

require 'rubygems'
require 'fog'

require './config.rb'

#Fog.mock!

connection = Fog::Compute.new ({
  :provider              => 'AWS',
  :aws_access_key_id     => @aws_access_key_id,
  :aws_secret_access_key => @aws_secret_access_key,
})


#new_server = connection.servers.create( :image_id => 'ami-1624987f', :key_name => 'evilensky',)

#new_server.wait_for { ready? }

new_server = connection.servers.bootstrap ({
  :image_id         => 'ami-1624987f',
  :key_name         => 'evilensky',
  #:private_key_path => "id_rsa",
})

