require "pry"
class Attendee
    attr_reader :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end


    def self.all
        @@all
    end

    #helper method
    def my_events
        attended_events = Ticket.all.select{|event|event.attendee == self}
    end

    def events
        my_events.map{|soiree|soiree.event.name}
    end

    def money_spent
        spent = 0
        my_events.each do |soiree|
            #  binding.pry
            spent +=soiree.event.ticket_price
        end
        "$#{spent}"
    end
end


# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events