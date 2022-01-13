class Player

    attr_accessor :lives, :name
  
    def initialize name
      @name = name
      @lives = 3
    end
  
    def remove_life
      @lives -= 1
    end
  
    def alive?
      @lives > 0
    end
  
  end