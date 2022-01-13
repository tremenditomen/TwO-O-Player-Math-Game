require './question'

class Turn

  attr_accessor :curr_player, :question, :eval

  def initialize name
    @curr_player = name
    @question = Question.new
    @eval = true
  end

  def new_turn

    puts '----- NEW TURN -----'
    puts "#{@curr_player}: What does #{@question.x} plus #{@question.y} equal?"
    player_answer = gets.chomp.to_i

    if (@question.answer) == player_answer
      puts "#{@curr_player} has it CORRECT!"
      @eval = true
    else
      puts "#{@curr_player} has it WRONG!"
      @eval = false
    end

  end

end