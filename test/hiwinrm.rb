#!/usr/bin/ruby

require 'HTTPClient'

port = ARGV[0]
user = ARGV[1]
password = ARGV[2]

puts "Port #{port}"
puts "User #{user}"
puts "Password #{password}"

getme = "http://127.0.0.1:#{port}/wsman"

puts "URL #{getme}"
clnt = HTTPClient.new(getme)

clnt.set_basic_auth(getme, user, password)


puts clnt.get_content(getme)
