"I want to play a game" println
input := File standardInput()
question := (Random value( 99 ) + 1) floor();
answer := 0
while(question != answer,
  "Your answer:" println
  answer = input readLine() asNumber()
  if(question == answer, "You win!" println)
  if(question > answer, "Larger" println)
  if(question < answer, "Less" println)
)
