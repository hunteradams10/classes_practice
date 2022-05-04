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
        @@vehicle.collection 
    end

    #WE COULD DO

    # def speed 
    #     @speed
    # end

    #but attr_reader means we don't have to make a method every time we want to read an instance variable,
    # which, in bobs case, is 20
end