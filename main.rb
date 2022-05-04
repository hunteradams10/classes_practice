require_relative 'bicycle'
require_relative 'motorbike'

def best_vehicle(planned_terrain, distance, vehicles=Vehicle.vehicle_collection) 
    vehicles.each do |v|
        p v.can_travel_on_terrain?(planned_terrain) && v.has_sufficient_fuel?(distance)
    end
end



# You would call the class variable by giving the Class, then its method
# ie. Vehicles.vehicle_collection. Because we don't want to type this in for
# every new instance of a vehicle, we've just added it to the method definition
# so it gets generated every time that method is called.


# Display

victor = Bicycle.new(10, [:road, :dirt])
daisy = Motorbike.new(20, [:true])

p best_vehicle(:dirt, 50)

# bob = Vehicle.new(20, [:road], 2, "brum")
# bob.refuel(35)

# p bob.fuel_kms

# victor = Bicycle.new(10, [:road, :dirt])
# p victor
# p victor.noise