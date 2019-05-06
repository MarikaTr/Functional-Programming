compress [] = []
compress [x] = [x]
compress ([x,y])
  | x==y = [x]
  | otherwise = [x,y]
compress (x:y:ys)
  |  x /= y = x:compress(y:ys)
  |  otherwise = compress(x:ys)
  