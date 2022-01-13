class Question

    attr_accessor :x, :y, :answer
  
    def initialize
      @x = rand(1..20)
      @y = rand(1..20)
      @answer = @x + @y
    end
  
  end