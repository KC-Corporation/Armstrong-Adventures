require 'Gosu'
require_relative '../Lives.rb'
class Player < Being

    def initialize(x_coord,y_coord)
        super x_coord,y_coord
        @sprite = Gosu::Image.new('../../sprites/spaceship.png')
        @engine_sfx = Gosu::Song.new('../../sfx/player/red_bullet_sfx.mp3')
        @explosion_sfx = Gosu::Song.new('../../sfx/player/red_bullet_sfx.mp3')
        @lives = Lives.new(5)
        @weapon = Weapon.new()#Vanja will add class weapon at a later stage
        @rocket_count = nil
    end

    def fire(x_coord,y_coord)
        
    end

    def rocket_fire(x_coord,y_coord)
        @rocket_count -= 1
    end

    def decrease_lives()
        @lives.decrease() 
    end

    def increase_lives()
        @lives.increase()
    end

    list_of_bullets = {'redBullet': 'redbullet.png'}

    def fire(bullettype)
        @bullet_sprite = Gosu::Image.new("../bullets/redbullet.png")
        if @@BULLET_Type[@@WEAPON_TYPE] == 'r'
            
        end
            Redbullet
    end
end
