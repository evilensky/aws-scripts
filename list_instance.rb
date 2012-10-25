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


instance_list = connection.servers.all



instance_list.each do |server|
  if server.state['running']
    running = server
    puts running.security_group_ids = 'sg-79603411'
  end
end
