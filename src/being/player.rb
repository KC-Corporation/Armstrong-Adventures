require 'Gosu'
require_relative '../Lives.rb'
require_relative '../bullet_types.rb'
require_relative 'being.rb'
class Player < Being

    def initialize()
        super
        @sprite = Gosu::Image.new('sprites/spaceship2.png')
        #@engine_sfx = Gosu::Song.new('sfx/player/red_bullet_sfx.mp3')
        #@explosion_sfx = Gosu::Song.new('sfx/player/red_bullet_sfx.mp3')
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
    
    def draw(x_coord,y_coord)
        @sprite.draw(x_coord,y_coord)
    end
end
