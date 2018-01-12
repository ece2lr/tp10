epsi=.5
x = linspace(epsi,5)
y = 1/sqrt(2*%pi) ./ x .* exp(-.5 * x.^2)

// représentation de la fonction de répartition
clf()
x = linspace(-5,5)
[p,q] = cdfnor("PQ",x,zeros(x),ones(x))
plot(x,p)

//// intervalle de fluctuation : retourne 1.96
//disp(cdfnor("X",0,1,.975,.025))

//// majoration de la fonction d'antirépartition
//clf()
//[p,q] = cdfnor("PQ",x,zeros(x),ones(x))
//plot(x,[q;y])
