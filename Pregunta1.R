#Binomial -> Enquesta(Bernoulli)
#BinomialNeg -> Resistencia(Numero de fallos hasta N)
#HyperGeometrica
#Poisson
#Exp -> Tiempo entre dos eventos de Poisson
#Normal -> Alturas de personas

#a
Y = function(i){sum(rnorm(4, 95.3, 5.7))}
mean(sapply(1:10000000, Y))

# Suma de mostra de n valors
# E(Y) = nE(X)
# Var(Y) = nVar(X)
# Sd(Y) = sqrt(n)Sd(X)
dnorm(95, 4*95.3, sqrt(4)*95.3)
95.3*4

#b
# Var(X) = Sd(X)^2
# Var(Y) = nVar(X)
100*5.7^2

#c
1-pnorm(103, 95.3, 5.7)

## Media Muetral
#d
Y = function(i){mean(rnorm(4, 95.3, 5.7))}
mean(sapply(1:1000000, Y)<98)

# Probabilidad de la Media de muestras de n valors
# E(Y) = E(X)
# Var(Y) = Var(X)/n
# Sd(Y) = Sd(X)/sqrt(n)
pnorm(98, 95.3, 5.7/sqrt(4))

## Varianza Muestral (Chi^2)
#e
Y = function(i){var(rnorm(100, 95.3, 5.7))}
mean(sapply(1:1000000, Y)>32)

# Probabilidad de la Varianza de muestras de n valors
# chisq(Q, df)
# Q = Var(P)*(N-1)/Var(X) || Var(P) Sobre el numero del que quieres sacar la probabilidad
# df = N-1
1-pchisq(32*(100-1)/5.7^2, 100-1)
