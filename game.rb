require './player'

class Game

  attr_reader :report_life, :players, :current_player
### Initalize the players
  def initialize (p1, p2)
    @players = [p1, p2]
    @current_index = 0
    @current_player = @players[@current_index]
  end

  ## subtract lives method
  def subtract_life
    @current_player.life -= 1
    if @current_player.life === 0
      puts "#{@current_player.name} is out of lives boohoo you lose"
      puts "--- GAME OVER ---"
    end
  end

  ## reports the lives to console
  def report_life
    puts "life Remaining ==> P1: #{@players[0].life}/3 P2:#{@players[1].life}/3"
  end
  ## changes players
  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
end