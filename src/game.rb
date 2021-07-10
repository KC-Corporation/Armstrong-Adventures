require 'Gosu'
require_relative 'being/player.rb'
require_relative 'bullets/bullet.rb'
require_relative 'bullets/egg.rb'
require_relative 'bullets/red_bullet.rb'
require_relative 'bullets/weapon.rb'
require_relative 'bullet_types.rb'

class Game < Gosu::Window

    def initialize()
        super 1920, 1080, true 
        @backround = Gosu::Image.new("../sprites/Backround.jpg")
        #@sprite = Gosu::Image.new('../sprites/spaceship2.png')
        @player = Player.new()
    end

    def draw()
        @backround.draw(0,0)
        @player.draw(mouse_x,mouse_y)
        #@sprite.draw(mouse_x,mouse_y)
    end

end

game = Game.new()
game.show()