correctNumber = rand(100)
steps = 0
userAnswer = nil

while correctNumber != userAnswer
  steps += 1
  puts 'Your answer?'
  userAnswer = gets().to_i
  if userAnswer
    if userAnswer > correctNumber
      puts 'Your number is greater'
    elsif userAnswer < correctNumber
      puts 'Your number is less'
    else
      puts "Gongratutlations! You win! Attempts: #{steps}"
    end
  end
end
