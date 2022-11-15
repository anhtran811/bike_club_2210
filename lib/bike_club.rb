class BikeClub
  attr_reader :name,
              :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_bikers(biker)
    @bikers << biker
  end

  def most_rides
    @bikers.max_by do |biker|
      biker.total_logged_rides
    end
  end

  def fastest_biker
    @bikers.min_by do |biker|
      biker.fastest_time
    end
  end
end
