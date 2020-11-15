# highline_example.rb

require 'highline'

h1  = HighLine.new
friends = h1.ask('Friends?', lambda {|s| s.gsub(' ', '').split(',') })
puts "You're friends with: #{friends.inspect}"