class Biker
  attr_reader :name,
              :max_distance,
              :rides,
              :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(ride, times)
    if ride.distance < @max_distance && @acceptable_terrain.include?(ride.terrain)
      if @rides[ride].nil? 
        @rides[ride] = [times]
      else
        @rides[ride] << times
      end
    end
  end

  #will not ride if terrain doesn't match
  # will not ride distance is > max distance
end

