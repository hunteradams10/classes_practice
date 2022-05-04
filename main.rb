require_relative 'bicycle'
require_relative 'motorbike'

def best_vehicle(planned_terrain, distance, vehicles=Vehicle.vehicle_collection) 
    fav_vehicles = vehicles.select do |v| #select only the vehicles that match this statement and save to variable
        v.can_travel_on_terrain?(planned_terrain) && v.has_sufficient_fuel?(distance)
    end

    fav_vehicles.sort_by! do |v|
        v.time_to_travel(distance)
    end

    fav_vehicles.first
end



# You would call the class variable by giving the Class, then its method
# ie. Vehicles.vehicle_collection. Because we don't want to type this in for
# every new instance of a vehicle, we've just added it to the method definition
# so it gets generated every time that method is called.


# Display

victor = Bicycle.new(10, [:road, :dirt])
daisy = Motorbike.new(20, [:road])
pobo = Bicycle.new(10, [:road, :dirt])
tuffle = Motorbike.new(20, [:road])

victor.refuel(50)
daisy.refuel(80)
tuffle.refuel(100)
pobo.refuel(20)

p best_vehicle(:road, 50)

# bob = Vehicle.new(20, [:road], 2, "brum")
# bob.refuel(35)

# p bob.fuel_kms

# victor = Bicycle.new(10, [:road, :dirt])
# p victor
# p victor.noise