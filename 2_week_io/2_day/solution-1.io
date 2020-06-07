Number / := method(delimeter,
  if(delimeter == 0, 0, Number getSlot("/"))
)

1 / 0 println
4 / 2 println

sumOfArr := method(array,
  result := 0
  while(array isEmpty not, result = result + (array pop sum))
  return(result)
)

testList := list(list(1, 2, 3), list(2, 3, 4))
sumOfArr(testList) println
