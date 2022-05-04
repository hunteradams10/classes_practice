require_relative 'bike'
class Bicycle < Bike
    # FIXME: bicycles don't need fuel!
    attr_reader :noise
    def initialize(speed, terrain, kickstand=true)
        super(speed, terrain, 0, "bring bring SQUIIIK", kickstand=true)
    end

end