require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  let!(:biker) {Biker.new("Kenny", 30)}

  it 'exists and has attributes' do
    expect(biker).to be_a(Biker)
    expect(biker.name).to eq('Kenny')
    expect(biker.max_distance).to eq(30)
    expect(biker.rides).to eq({})
    expect(biker.acceptable_terrain).to eq([])
  end

  it 'can learn terrain' do
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)

    expect(biker.acceptable_terrain).to eq([:gravel, :hills])
  end

end


# biker.acceptable_terrain
# => [:gravel, :hills]

# ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
# => #<Ride:0x00007fc62ca32a10...>

# ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
# => #<Ride:0x00007fc62cb42ba8...>

# biker.log_ride(ride1, 92.5)

# biker.log_ride(ride1, 91.1)

# biker.log_ride(ride2, 60.9)

# biker.log_ride(ride2, 61.6)

# biker.rides
# => {
#      #<Ride:0x00007fc62ca32a10...> => [92.5, 91.1],
#      #<Ride:0x00007fc62cb42ba8...> => [60.9, 61.6]
#    }

# # biker.personal_record(ride1)
# => 91.1

# # biker.personal_record(ride2)
# => 60.9

# # biker2 = Biker.new("Athena", 15)
# => #<Biker:0x00007fc62cb399e0...>

# biker2.log_ride(ride1, 97.0) #biker2 doesn't know this terrain yet

# biker2.log_ride(ride2, 67.0) #biker2 doesn't know this terrain yet

# biker2.rides
# => {}

# biker2.learn_terrain!(:gravel)

# biker2.learn_terrain!(:hills)

# biker2.log_ride(ride1, 95.0) # biker2 can't bike this distance

# biker2.log_ride(ride2, 65.0) # biker2 knows this terrain and can bike this distance

# biker2.rides
#=> { #<Ride:0x00007fc62cb42ba8...> => [65.0] }

# biker2.personal_record(ride2)
#=> 65.0

# biker2.personal_record(ride1)
#=> false
