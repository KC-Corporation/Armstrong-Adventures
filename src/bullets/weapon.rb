require 'Gosu'
require_relative 'egg.rb'
require_relative 'red_bullet.rb'

class Weapon
    @@BULLET_TYPES = [
        RedBullet.new(),
        Egg.new()
    ]

    @@BULLET_TYPES_SPRITES = [
        'Standard-bullet2.png',
        'egg-before-landing.png'
    ]

    def initialize(bullet_type = nil)
        @bullet = @@BULLET_TYPES[bullet_type]
        @sprite = bullet_type == nil ? 
                    bullet_type :
                    Gosu::Image.new("sprites/#{@@BULLET_TYPES_SPRITES[bullet_type]}")
    end

    def setWeaponType(weapon_choice)
        @bullet = @@BULLET_TYPES[weapon_choice]
        @sprite = Gosu::Image.new("sprites/#{@@BULLET_TYPES_SPRITES[weapon_choice]}")
    end

    def fire()
        return @bullet
    end


end
        