require "pry"
class Event
    attr_reader :name, :total_cost, :ticket_price
    @@all = []

    def initialize(name, total_cost, ticket_price)
        @name = name
        @total_cost = total_cost.to_i 
        @ticket_price = ticket_price.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def selected_attendees
       Ticket.all.select{|soiree|soiree.event == self}
    end

    def sell_to_break_even
         #needs clarification
         event1.total_cost/event1.ticket_price
    end

    def average_age
        rtnd_age = 0 
        selected_attendees.each do |party_ppl|
        # binding.pry
        rtnd_age += party_ppl.attendee.age
        end
        rtnd_age = rtnd_age.to_f/self.selected_attendees.length
    end

end


# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
