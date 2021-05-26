require 'Gosu'
class RedBullet < Bullet


    def initialize(xcoord, ycoord)
        super xcoord, ycoord
        @sprite = Gosu::Image.new('../../sprites/Standard-bullet2.png')
        @soundfx = Gosu::Song.new('../../music/red_bullet_sfx.mp3')
        @@SPEED = 1
    end

    def draw()

    end

    def move()
        @y -= @@SPEED
    end

end