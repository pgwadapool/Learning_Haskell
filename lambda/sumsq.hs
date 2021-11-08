
-- lambda function
whSumSqSqSum x y = if wsumSq > wsqSum
                   then wsumSq
                   else wsqSum
 where wsumSq = x^2 + y^2
       wsqSum = (x+y)^2


sumSqOrSqSum x y =(\sumSq sqSum -> 
                  if sumSq > sqSum
                  then sumSq
                  else sqSum) (x^2 + y^2) ((x+y)^2)

