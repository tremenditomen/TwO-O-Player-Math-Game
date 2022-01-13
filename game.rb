require './player'
require './turn'

class Game

  def initialize
    @p1 = Player.new('PLAYER 1')
    @p2 = Player.new('PLAYER 2')
    @curr_player = @p1

  end
  
  def start

    while @p1.alive? && @p2.alive? do
      turn = Turn.new(@curr_player.name)
      turn.new_turn

      if !turn.eval

        if turn.curr_player == 'PLAYER 2'
          turn_player = @p2
        elsif turn.curr_player == 'PLAYER 1'
          turn_player = @p1
        end

        turn_player.remove_life
      end
      live_score()
      next_turn()
    end
    final_score()
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end

  def next_turn
    if @curr_player == @p1
      @curr_player = @p2
    elsif @curr_player == @p2
      @curr_player = @p1
    end
  end

  def live_score
    puts "#{@p1.name}: #{@p1.lives}/3 ❤️  VS #{@p2.name}: #{@p2.lives}/3 ❤️"
  end

  def final_score
    puts "#{@curr_player.name} wins with #{@p1.lives}/3 ❤️  remaining!"
  end

end