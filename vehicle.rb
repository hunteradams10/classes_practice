class Vehicle
    attr_reader :speed, :terrain, :fuel_kms

    @@vehicle_collection = []


    def initialize(speed, terrain, max_passengers, noise)
        @speed = speed
        @terrain = terrain 
        @max_passengers = max_passengers
        @noise = noise 
        @fuel_kms = 0
        # this is to append to the array @@vehicle_collection above ^^
        @@vehicle_collection << self
end

    def refuel(fuel_amount)
        @fuel_kms += fuel_amount
    end

    # You need this method in order to access the array above. Much like how you need a method
    # or attr_reader/writer/accessor to access other instance variables in the Vehicle class.
    def self.vehicle_collection
        @@vehicle_collection 
    end

    #WE COULD DO

    # def speed 
    #     @speed
    # end

    #but attr_reader means we don't have to make a method every time we want to read an instance variable,
    # which, in bobs case, is 20

    # If your method returns a boolean, put a question mark in the method name. 
    # In this method we are asking if the terrain that is passed in when the method is called
    # is included in the @terrain instance variable for the vehicle. It is inherited from the 
    # vehicle class, but it's specific to each vehicle because you pass it in when you initialize each
    # instance of a vehicle (not all vehicles can travel on all terrain).
    def can_travel_on_terrain?(terrain)
        @terrain.include?(terrain)
    end

    # Does this instance of this vehicle have enough fuel to go the distance we need?
    def has_sufficient_fuel?(distance)
        @fuel_kms >= distance 
    end

    def time_to_travel(distance)
        distance / @speed 
    end
end