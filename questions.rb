class Question
  attr_reader :answer

  def initialize
    @answer = -1
  end

  def question_random
    number = Random.new
    first_number = num.rand(150)
    second_number = num.rand(150)
    @answer = first_number + second_number
    puts "what does #{first_number} + #{second_number} equal?"
  end
end