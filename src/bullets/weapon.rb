require 'Gosu'
require_relative 'egg.rb'
require_relative 'red_bullet.rb'

class Weapon

    def initialize bullet_type = nil
        @bullet = (bullet_type == nil)? nil: bullet_types(bullet_type)
    end

    def bullet_types bullet_type
        return RedBullet.new() if bullet_type == 0
        return Egg.new() if bullet_type == 1
    end

    def setWeaponType weapon_choice
        @bullet = bullet_types(weapon_choice)
    end

    def fire
        return @bullet
    end

end
        