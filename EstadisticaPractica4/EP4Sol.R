######### Practica 4 #########
### Solució dels exercicis ###


## IC mitjana amb variància coneguda

# Exercici 1
  
  # Definim les variables
    N <- 300
    n <- 20
    p <- 0.4
    sigma <- n*p*(1-p)
    alpha <- 0.01
  
  # Generem la mostra
    x <- rbinom(N, n, p)
  
  # Calculem l'interval de confiança
    m <- mean(x)
    err <- qnorm(1-alpha/2) * sigma / sqrt(n)
    A <- m - err
    B <- m + err
    A; B
  
    
    
# Exercici 2
  
  # Definim les variables
    N <- 1000
    n <- 20
    m <- 3
    sigma <- 1
    alpha <- 0.1
    
  # Generem la mostra
    x <- rnorm(N*n, m, sigma)
    dim(x) <- c(N,n)

  # Calculem els intervals de confiança
    M <- apply(x, 1, mean)
    err <- qnorm(1-alpha/2) * sigma / sqrt(n)
    A <- M - err
    B <- M + err
    
  # Calculem la proporció d0intervals que contenen el valor m
    u <- (A<m) & (B>m)
    sum(u)/N


    
# Ex IC mitjana amb variància desconeguda
    
# Exercic 3

  # Introduim la mostra
    x <- c(5.2, 4.8, 5.3, 5.7, 5.0, 4.7, 4.3, 5.5, 5.4, 5.1, 4.9, 5.8)
  # IC del 95%
    t.test(x)$conf.int
  # IC del 99%
    t.test(x, conf.level = 0.99)$conf.int
    


# IC proporció
    
# Exercici 4

  # Definim les variables
    p <- 0.08
    n <- 200
    x <- p*n
    
  # Calculem l'interval
    prop.test(x, n, conf.level = 0.92)$conf.int

  

# IC variància
    
# Exercici 5
    
  # Introduim la mostra i definim les variables
    alpha <- 0.07
    x <- c(7.9, 8.3, 4.8, 8.4, 7.9, 5.2, 5.6, 3.2, 9.1, 7.7, 6.5, 4.4)
    n <- length(x)
    a <- qchisq(alpha/2, n-1)
    b <- qchisq(1-alpha/2, n-1)
    
  # Calculem l'interval
    linf <- (n-1) / b * var(x)
    lsup <- (n-1) / a * var(x)
    linf; lsup
    
    

# IC diferencia de mitjanes per dades aparellades
    
# Exercici 6

  # Introduim les mostres i definim les variables
    abans <- c(93, 106, 87, 92, 102, 95, 88, 110)
    despres <- c(92, 102, 89, 92, 101, 96, 88, 105)
    niv_conf <- 0.97
  
  # Calculem l'interval
    t.test(abans, despres, paired = TRUE, conf.level = niv_conf)$conf.int

    

# IC diferencia de mitjanes per mostres indep i variàncies conegudes
    
# Exercici 7

  # Introduim les mostres i definim les variables
    L <- c(6.7, 1.9, 6.4, 4.8, 2.6, 4.9, 6.7, 3.6, 1.5, 1.2, 2.4, 2.4, 4.6, 4.9, 4.8)
    S <- c(6.2, 3.7, 4.5, 6.2, 6.0, 5.3, 3.5, 3.6, 3.1, 0.3, 5.3, 4.5, 4.5, 3.6, 4.5)
    n <- length(L)  # OBS: En aquest cas n=nx=ny
    sigma2_L <- 3.5
    sigma2_S <- 2.2
    mean_L <- mean(L)
    mean_S <- mean(S)
    z <- qnorm(0.975)
  
  # Calculem l'interval
    err <- z * sqrt( (sigma2_L/n) + (sigma2_S/n) )
    linf <- mean_L - mean_S - err
    lsup <- mean_L - mean_S + err
    linf; lsup


# IC diferencia de mitjanes per mostres indep i variàncies desconegudes

# Execici 8
  
  # Introduim les mostres
    L <- c(6.7, 1.9, 6.4, 4.8, 2.6, 4.9, 6.7, 3.6, 1.5, 1.2, 2.4, 2.4, 4.6, 4.9, 4.8)
    S <- c(6.2, 3.7, 4.5, 6.2, 6.0, 5.3, 3.5, 3.6, 3.1, 0.3, 5.3, 4.5, 4.5, 3.6, 4.5)
  
  # IC suposant que les variàncies són iguals
    t.test(L, S, var.equal = TRUE)$conf.int
  
  # IC suposant que les variàncies són diferents
    t.test(L, S, var.equal = FALSE)$conf.int

