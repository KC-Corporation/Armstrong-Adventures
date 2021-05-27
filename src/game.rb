require 'Gosu'
class Game < Gosu::Window

    def initialize()
        super 1920,1080,true 
        @backround = Gosu::Image.new("sprites/Backround.jpg")

    end

    def draw()
        @backround.draw(0,0)

    end


end


game = Game.new()
game.show()