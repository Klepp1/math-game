require './game.rb'


class Question
  attr_reader :answer

  def initialize
    @answer = -1
  end

  def question_random
    number = Random.new
    first_number = number.rand(100)
    second_number = number.rand(100)
    @answer = first_number + second_number
    puts "what does #{first_number} + #{second_number} equal?"
  end
end