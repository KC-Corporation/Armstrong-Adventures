class Egg < Bullet 

    def initialize(xcoordinate,ycoordinate)
        @@Speed = 2
        @sprite = Gosu::Image.new('../../sprites/egg-before-landing.png')
        @soundFX = Gosu::Song.new('../../music/egg_sfx.mp3')
    end

    def move()
        ycordinate += @@SPEED
    end
end