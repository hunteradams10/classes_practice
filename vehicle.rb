class Vehicle
    attr_reader :speed, :terrain, :fuel_kms
    def initialize(speed, terrain, max_passengers, noise)
        @speed = speed
        @terrain = terrain 
        @max_passengers = max_passengers
        @noise = noise 
        @fuel_kms = 0
end

    def refuel(fuel_amount)
        @fuel_kms += fuel_amount
    end

    #WE COULD DO

    # def speed 
    #     @speed
    # end

    #but attr_reader means we don't have to make a method every time we want to read an instance variable,
    # which, in bobs case, is 20
end