## Main file it requires all files to run properly

require 'pry'
require './game.rb'
require './player.rb'
require './questions.rb'

print "enter first Players name: "
name1 = gets.chomp.to_s
print "enter second Players name: "
name2 = gets.chomp.to_s

first_player = Player.new(name1)
second_player = Player.new(name2)

game = Game.new(first_player, second_player)

while game.players[0].life > 0 and game.players[1].life > 0 do
  puts "--- NEW TURN ---"
  question = Question.new
  print "#{game.current_player.name}: #{question.question_random}"
  answer = question.answer
  input = gets.chomp.to_i

  if (input != answer)
    game.subtract_life
    puts "you are incorrect you lose a life!\n"
  elsif (input == answer)
    puts "you are correct you retain your lives\n"
  end
  game.report_life

  game.change_player
end