require 'Gosu'
class Red_bullet < Bullet


    def initialize(xcoord, ycoord,speed)
        super xcoord, ycoord,speed
        @sprite = Gosu::Image.new('../../sprites/Standard-bullet2.png')
        @soundFX = Gosu::Song.new('../../music/red_bullet_sfx.mp3')
        @@SPEED = 1
    end

    def draw()

    end

    def move()
        ycord -= @@SPEED
    end

end