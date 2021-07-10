require 'Gosu'
class Egg < Bullet 

    def initialize()
        super
        @@SPEED = 2
        @sprite = Gosu::Image.new('../sprites/egg-before-landing.png')
        # @egg_spawn_sfx = Gosu::Song.new('../../music/egg_spawn_sfx.mp3')
        # @egg_break_sfx = Gosu::Song.new('../../music/egg_break_sfx.mp3')
    end

    def move()
        @y += @@SPEED
    end
end