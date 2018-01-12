function y = gauss(x,m,S)
  C = 1/sqrt(2*%pi*S)
  y = C * exp(-.5 * (x-m).^2 / S)
endfunction 

// représentation graphique
//x = linspace(-5,5)
//y = gauss(x,0,1)
//clf()
//plot(x,y)
