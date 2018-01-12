exec("histcFix.sci",-1)
n = 20
x = linspace(0,n+3*sqrt(n))
y = exp(-x)
N=10^4
S = grand(1,N,"exp",1)

clf()
e=[]
for k=0:n
  drawlater()
  delete(e)
  plot(x,y)
  histplot(0:.2:n+3*sqrt(n),S)
  e = gce()
  S = S+grand(1,N,"exp",1)
  y = y .* x / (k+1)
  drawnow()
  sleep(200)
end
