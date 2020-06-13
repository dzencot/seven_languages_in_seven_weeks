DimList := List clone

DimList dim := method(x, y,
  self setSize(x)
  for(i, 0, (x - 1), 1,
    self atPut(i, (list() setSize(y)));
  )

  return(self);
)

DimList set := method(x, y, value,
  self at(x) atPut(y, value)
)

DimList get := method(x, y,
  self at(x) at(y)
)

DimList getListStr := method(
  x := self size
  y := self at(0) size
  result := ""
  for(i, 0, (x - 1), 1,
    for(j, 0, (y - 1), 1,
      result = result .. " " .. self get(i, j)
    )
  )
  return(result)
)

transpose := method(dimList,
  newDimList := DimList clone
  y := dimList size
  x := dimList at(0) size
  newDimList dim(x, y)
  for(i, 0, (y - 1), 1,
    for(j, 0, (x - 1), 1,
      newDimList set(j, i, dimList get(i, j))
    )
  )
  return(newDimList)
)

testDim := DimList clone
testDim dim(3, 3)
testDim set(1, 2, "test2")

newDim := transpose(testDim)

(testDim get(1, 2) == newDim get(2, 1)) println

file := File with("test.txt")
file open()
listString := newDim getListStr()
file write(listString)
file close

file1 := File with("test.txt")
file1 open()
file1 contents println
file1 close
