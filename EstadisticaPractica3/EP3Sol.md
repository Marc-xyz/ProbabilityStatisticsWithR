######### Practica 3 #########
### Solució dels exercicis ###


# Exercici 1

# Definim el paràmetre de la variable
  l <- 2

## a)
  # Funció de densitat
    x <- c(0:10)
    prob <- dpois(x, l)
    plot(x, prob, type = "p", main = "Funció de densitat de X", xlab = "Valors", ylab = "Probabilitats", ylim = c(0,0.3))
    
  # Funció de distribució
    probcum <- cumsum(prob)
    s <- stepfun(x, c(0, probcum))
    plot(s, verticals = FALSE, main = "Funció de distribució de X", xlab = "Valors", ylab = "F(x)")

## b)
  # P(X=6)
    dpois(6, l)
  # P(X>2)
    1 - ppois(1, l)
  # P(1<=X<=4)
    ppois(4, l) - ppois(0, l)

## c)
    N <- 400
  # Generem els nombre aleatoris
    A <- matrix(rpois(N, l), nrow = 40)
  
  # Calculem la mitjana de cada fila
    apply(A, 1, mean) # Fa mitjanes per files
    # OBS: La instrucció apply(A, 2, mean) Fa mitjanes per columnes
  
  # Definim una funció que ens calcula la variància (no corregida) i calculem la variància de cada fila
    varp <- function(x){
      n <- length(x)
      varx <- var(x)*(n-1)/n
      varx
    }
    apply(A, 1, varp)



# Exercici 2
  
  # Definim els paràmetres de la variable
    a <- -2
    b <- 2

## a)
  # Funció de densitat
    x <- seq(a, b, by = 0.05)
    f <- dunif(x, a, b)
    plot(x, f, type = "l", main = "Funció de densitat de U(-2,2)", xlab = "x", ylab = "f(x)")
  
  # Funció de distribució    
    x <- seq(a-1, b+1, by = 0.05)
    F <- punif(x, a, b)
    plot(x, F, type = "l", main = "Funció de distribució de U(-2,2)", xlab = "x", ylab = "F(x)")
    
## b)
  # Per la teoria sabem que P(X=0.5)=0.
  # Per la teoria sabem que P(X<=0.7)=P(X<0.7):
    punif(0.7, a, b)
  # P(X>=1.2)
    1 - punif(-1.2, a, b)
  # P(X<=-2)
    punif(-2, a, b)
  # P(X<1.2)
    punif(2, a, b)



# Exercici 3
    
  # Definim els valors i les probabilitats de la variable
    valors <- c(3, 5, 7, 9)
    probs <- c(0.1, 0.3, 0.2, 0.4)

## a)
  # Funció de densitat
    plot(valors, probs, type = "p", main = "Funció de densitat de X", xlab = "Valors", ylab = "Probabilitats")

  # Funció de distribució
    probcum <- cumsum(probs)
    s <- stepfun(valors, c(0, probcum))
    plot(s, verticals = FALSE, main = "Funció de distribució de X", xlab = "x", ylab = "F(x)")

## b)
    n <- 1000
    mostra <- sample(valors, n, prob = probs, replace = TRUE)

## c)
  # Freqüències absolutes
    freq_abs <- table(mostra)
    freq_abs
  # Freqüències relatives
    freq_rel <- table(mostra)/n
    freq_rel
  
## d)
  # Esperanza teòrica
    E <- sum(valors * probs)
    E
  # Variància teòrica
    Var <- sum(valors^2 * probs) - E^2
    Var
  # Esperanza empírica
    m <- mean(mostra)
    m
  # Variància empírica
  # OBS: Utilitzo la funció varp definida a l'Exercici 1
    s2 <- varp(mostra)
    s2



# Exercici 4
    
    N <- 500

  # Funció de densitat
    f <- function(x){
      fdd <- 5 / 32 * x^4
      fdd
    }
  
  # Funció de distribució
    F <- function(x){
      Fdd <- x^5 / 32
      Fdd
    }

  # Inversa de la funció de distribució
    F_inv <- function(x){
      Fddi <- (32*x)^(1/5)
      Fddi
    }

## a)
  # Genero la mostra amb el mètode vist a la pràctica i en dibuixo l'histograma
    u <- runif(N)
    mostra <- F_inv(u)
    hist(mostra, freq = FALSE)
    t <- seq(0, 2, by = 0.01)
    lines(t, f(t))

## b)
  # Estimadors teòrics
    Mean <- 5 / 32 * 2^6 / 6
    Var <- ( 5 / 32 * 2^7 / 7 ) - Mean^2
    Mean; Var

  # Estimadors empírics
    mx <- mean(mostra)
    varx <- var(mostra) * (N-1) / N
    mx; varx
  
  # Aproximació
    Mean-mx; Var-varx



# Exercici 5

    p <- 0.5
    N <- 200
    B <- 400

  # Generem la mostra en forma de matriu
    A <- matrix(rbinom(N*B, 1, p), N)
  
  # Mitjanes de A
    a <- apply(A, 1, mean)
  
  # Estadístics teòrics
    mu <- p
    sigma <- sqrt(p*(1-p))
    mu; sigma
  
  # Estandardització
    E <- (a - mu) / sigma * sqrt(B)
  
  # Histograma
    hist(E, freq = FALSE, main = "Histograma", xlim = c(-4, 4), ylim = c(0, 0.5))
    x <- seq(-10, 10, by = 0.001)
    y <- dnorm(x)
    lines(x, y)



 
