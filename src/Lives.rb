require 'Gosu'
class Lives

    def initialize(lives)
        @lives = lives
        @lives_increase_sfx = Gosu::Song.new('../../music/lives-increase-sfx.mp3')
    end
    
    def increase()
        @lives += 1
    end
    
    def decrease()
        @lives -= 1
    end

end