require 'Gosu'
require_relative '../Lives.rb', '../bulletTypes.rb'
class Player < Being

    def initialize(x_coord,y_coord)
        super x_coord, y_coord
        @sprite = Gosu::Image.new('../../sprites/spaceship.png')
        @engine_sfx = Gosu::Song.new('../../sfx/player/red_bullet_sfx.mp3')
        @explosion_sfx = Gosu::Song.new('../../sfx/player/red_bullet_sfx.mp3')
        @lives = Lives.new(5)
        @weapon = Weapon.new(RED_BULLET)
        @rocket_count = 0
    end

    def rocket_fire(x_coord,y_coord)
        @rocket_count -= 1 if @rocket_count > 0
    end

    def decrease_lives()
        @lives.decrease() 
    end

    def increase_lives()
        @lives.increase()
    end

    def fireWeapon()
        @weapon.fire
    end
end
