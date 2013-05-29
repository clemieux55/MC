#!/usr/bin/env ruby

require_relative './mission_control.rb'

cmd = MissionControlCommand.new(ARGV[0])
puts cmd.output