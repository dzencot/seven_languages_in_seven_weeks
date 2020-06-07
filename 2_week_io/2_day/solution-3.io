DimList := List clone

DimList dim := method(x, y,
  self setSize(x)
  for(i, 0, (x - 1), 1,
    self atPut(i, (list() setSize(y)));
  );

  return(self);
)

DimList set := method(x, y, value,
  self at(x) atPut(y, value)
)

DimList get := method(x, y,
  self at(x) at(y)
)

testDim := DimList
testDim dim(2, 2)
testDim set(0, 0, "test")

testDim get(0, 0) println
