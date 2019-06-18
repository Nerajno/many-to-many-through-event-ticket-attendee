require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:
event1 = Event.new("Party 1", 7000, 50)
event2 = Event.new("Party 2", 6000, 70)
event3 = Event.new("Party 3", 5500, 65)
Event.all

lucy = Attendee.new("Lucy", 22)
frank = Attendee.new("Frank", 19)
mary = Attendee.new("Mary", 44)
marshall = Attendee.new("M&M", 43)
Attendee.all

ticket1 = Ticket.new(lucy,event1)
ticket2 = Ticket.new(lucy,event3)
ticket3 = Ticket.new(mary, event2)
ticket4 =  Ticket.new(marshall,event1)
Ticket.all

lucy.events #// lucy.my_events
lucy.money_spent
event1.average_age
#extra attendee & ticket







#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
