require 'Gosu'
require_relative 'Egg.rb', 'Redbullet.rb'

class Weapon
    @@BULLET_TYPES = [
        RedBullet.new(),
        Egg.new()
    ]

    @@BULLET_TYPES_SPRITES = [
        'standard-bullet2.png',
        'egg-before-landing.png'
    ]

    def initialize()
        @bullet = nil #RedBullet.new()
        @sprite = nil
    end

    def setWeaponType(weapon_choice)
        @bullet = @@BULLET_TYPES[weapon_choice]
        @sprite = Gosu::Image.new("../../sprites/#{@@BULLET_TYPES_SPRITES[weapon_choice]}")
    end

    def fire()
        return @bullet
    end

    
end
        