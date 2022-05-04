require_relative 'vehicle'
class Bike < Vehicle 
    attr_reader :kickstand
    def initialize(speed, terrain, max_passengers, noise, kickstand=true)
        super(speed, terrain, max_passengers, noise)
        @kickstand = kickstand 
    end
end