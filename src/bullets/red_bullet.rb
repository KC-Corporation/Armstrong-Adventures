require 'Gosu'
class RedBullet < Bullet

    def initialize()
        @sprite = Gosu::Image.new('sprites/Standard-bullet2.png')
        #@sound_sfx = Gosu::Song.new('music/red_bullet_sfx.mp3')
        @@SPEED = 1
    end

    def draw()
    
    end

    def move()
        @y -= @@SPEED # What happens if the ship if facing right?
    end

end