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
testDim set(1, 2, "test")

newDim := transpose(testDim)

(testDim get(1, 2) == newDim get(2, 1)) println
