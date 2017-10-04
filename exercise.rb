class Trip
  @@stops = []

  def initialize
  end

  def self.add_stop(name)
    stop = Location.new(name)
    @@stops << stop
    return stop
  end

  def self.all
    puts "Began trip."
    start = "Toronto"
    @@stops.each do |stop|
      puts "Travelled from #{start} to #{stop.name}."
      start = stop.name
    end
    puts "Ended trip."
  end
end

class Location < Trip

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

Trip.add_stop("Ottawa")
Trip.add_stop("Montreal")
Trip.add_stop("Quebec City")
Trip.add_stop("Halifax")
Trip.add_stop("St. John's")
Trip.all
