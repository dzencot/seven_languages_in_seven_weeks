"I want to play a game" println
input := File standardInput()
question := (Random value( 99 ) + 1) floor();
answer := 0
attempt := 1
while((question != answer) and (attempt < 11),
  ("Attempt: " .. attempt) println
  "Your answer:" println
  answer = input readLine() asNumber()
  if(question == answer, "You win!" println)
  if(question > answer, "Larger" println)
  if(question < answer, "Less" println)
  attempt = attempt + 1
)
