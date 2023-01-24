## How to index in lapply:
x=1:100

lapply(1:length(x), function(i) {
  t = x[i]*3
  t2 = t *10
  t2

})
