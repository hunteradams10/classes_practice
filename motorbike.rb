class Motorbike < Bike
    def initialize(speed, terrain, kickstand=true)
        super(speed, terrain, 1, "BROOOM", kickstand=true)
    end

    def wheelie
        puts "WOOOOO"
    end
end