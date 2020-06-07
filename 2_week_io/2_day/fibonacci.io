fibonacciCycle := method(number,
  if(number <= 2, return(1))
  newResult := 1
  previousResult := 1
  i := 2
  while(i < number, temp := newResult; newResult = previousResult + newResult; previousResult = temp; i = i + 1)
  return(newResult);
)

fibonacciRecursion := method(number,
  if(number <= 2, return(1))
  return(fibonacciRecursion(number - 1) + fibonacciRecursion(number - 2))
)

fibonacciCycle(20) println
fibonacciRecursion(20) println
