class Bullet
    @@SPEED = nil
    @@BULLET_TYPES = {

    }
    @@WEAPON_TYPE = 0;
    @@BULLET_TYPE = ['r','g']
    def initialize(xcoord, ycoord)
        @x = xcoord
        @y = ycoord
        @sprite = nil
        @soundFX = nil
        # @powerLevel = nil
    end

end
