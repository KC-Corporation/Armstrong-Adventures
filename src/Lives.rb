require 'Gosu'
class Lives

    def initialize(hp)
        @hp = hp
        @lives_increase_sfx = Gosu::Song.new('../../music/lives-increase-sfx.mp3')
    end
    
    def increase()
        @hp += 1
    end
    
    def decrease()
        @hp -= 1
    end

end