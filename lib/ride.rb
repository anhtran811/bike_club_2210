class Ride
  attr_reader :name,
              :distance,
              :terrain,
              :info

  def initialize(info) 
    @name = info[:name]
    @distance = info[:distance]
    @terrain = info[:terrain]
    @loop = info[:loop]
  end

  def loop?
    @loop
  end

  def total_distance
    @distance * 2
  end
end