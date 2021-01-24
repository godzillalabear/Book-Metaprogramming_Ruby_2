def setup(&block)
  @setups << block
end

def event(description, &block)
  @events << { description: description, condition: block }
end

@setups = []
@events = []

# load 'ch4_blocks/event1.rb'
load 'ch4_blocks/event3.rb'

@events.each do |event|
  @setups.each(&:call)
  puts "ALERT: #{event[:description]}" if event[:condition].call
end