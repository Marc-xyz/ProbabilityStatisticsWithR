######### Practica 5 #########
### Solució dels exercicis ###
    

## Contrast mitjana - sigma coneguda

# Exercici 1
    
    load("dades1.RData")
    x <- dades1$Nombres
    n <- length(x)
    sigma <- 0.9
    xm <- mean(x)
    
    # TEST D'HIPOTESIS:
    #   H0 : mu = 4
    #   H1 : mu < 4
    
    mu <- 4
    z <- (xm-mu)/sigma*sqrt(n)
    pvalor <- pnorm(z)
    # pvalor > alpha ---> Acceptem H0
    


## Contrast mitjana - sigma desconeguda

# Exercici 2

    load("dades2.RData")
    x <- dades2$Nombres
    alpha <- 0.1
    
## a)
    # TEST D'HIPOTESIS:
    #   H0 : mu = 11
    #   H1 : mu > 11
    # Test d'hp unilateral dret
    
    t.test(dades2, mu = 11, alternative = "greater", conf.level = 1-alpha)
    # pvalor < alpha ---> Acceptem H1
    
## b)
    # TEST D'HIPOTESIS:
    #   H0 : mu = 12
    #   H1 : mu =! 12
    # Test d'hp bilateral
    
    t.test(dades2, mu = 12, alternative = "two.sided", conf.level = 1-alpha)
    # pvalor > alpha ---> Acceptem H0

    
        
## Contrast proporció

# Exercici 3
    
    # TEST D'HIPOTESIS:
    #   H0 : p = 0.4
    #   H1 : mu > 0.4
    # Test d'hp unilateral dret
    
    N <- 135
    n <- 300
    prop.test(N, n, p = 0.4, alternative = "greater", correct = FALSE)
    # pvalor < alpha=0.05 ---> Acceptem H1
    # pvalor > alpha=0.01 ---> Acceptem H0 (Canvia la resposta)
    
    
    
## Contrast sobre varianza
    
# Exercici 4
    
    # TEST D'HIPOTESIS:
    #   H0 : sigma^2 = 1
    #   H1 : sigma^2 =! 1
    # Test d'hp bilateral
    
    library(EnvStats)
    
    sigma2 <- 1
    varTest(x, sigma.squared = sigma2)
    # pvalor > alpha ---> Acceptem H0
    

    
## Problemes
    
# Problema 1
    
    load('kidsfeet.RData')
    
## a)
    # TEST D'HIPOTESIS:
    #   H0 : mu = 8.8
    #   H1 : mu > 8.8
    
    x <- kidsfeet$Longitud
    
    # 5%
    alpha <- 0.05
    t.test(x, mu = 8.8, alternative = "greater", conf.level = 1-alpha)
    # p-value < 2.2e-16 ---> Acceptem H1
    
    # 1%
    alpha <- 0.01
    t.test(x, mu = 8.8, alternative = "greater", conf.level = 1-alpha)
    # p-value < 2.2e-16 ---> Acceptem H1
    
    
## b)
    # TEST D'HIPOTESIS:
    #   H0 : p = 0.3
    #   H1 : p < 0.3
    
    x <- kidsfeet$Lateralitat
    n <- length(x)
    prop_esq <- sum(x == 'L') / n
    p0 <- 0.3
    
    # Condicions necessàries:
    prop_esq*n >= 5
    (1-prop_esq)*n >= 5
    
    z <- (prop_esq-p0) / sqrt(p0*(1-p0)/n)
    p_valor <- pnorm (z)
    p_valor
    # p-value = 0.09802548 > alpha = 0.05 ---> Acceptem H0
    # p-value = 0.09802548 < alpha = 0.1 ---> Acceptem H1 (Canvia la resposta)
    
    
## c)
    # TEST D'HIPOTESIS:
    #   H0 : sigma = 0.56
    #   H1 : sigma < 0.56
    
    x <- kidsfeet$Amplada
    sigma <- 0.56
    sigma2 <- sigma^2
    varTest(x, sigma.squared = sigma2, alternative = "less")
    # p-value = 0.2359 > alpha = 0.05 ---> Acceptem H0
    # p-value = 0.2359 > alpha = 0.03 ---> Acceptem H0 (No canvia la resposta)
    
    
## d)
    # TEST D'HIPOTESIS: 
    #   H0 : sigma_x^2 = sigma_y^2
    #   H1 : sigma_x^2 != sigma_y^2
    
    a <- kidsfeet$Amplada
    l <- kidsfeet$Longitud
    
    var.test (a, l, alternative = "two.sided")
    # p-value = 4.929e-08 < alpha = 0.05 ---> Acceptem H1
    
    
## e) - f)
    # TEST D'HIPOTESIS: 
    #   H0 : mu_D^2 = mu_E^2
    #   H1 : mu_D^2 != mu_E^2
    
    D <- kidsfeet["Longitud"][kidsfeet["Lateralitat"] == "R"]
    E <- kidsfeet["Longitud"][kidsfeet["Lateralitat"] == "L"]
    
    alpha <- 0.03
    t.test (D, E, alternative = "two.sided", conf.level = 1-alpha)
    # p-value = 0.4179 > alpha = 0.03 ---> Acceptem H0
    
    t.test (D, E, alternative = "two.sided", var.equal = TRUE, conf.level = 1-alpha)
    # p-value = 0.444 > alpha = 0.03 ---> Acceptem H0 (No canvia la resposta)
    
    
## g)
    # TEST D'HIPOTESIS: 
    #   H0 : sigma_D^2 = sigma_E^2
    #   H1 : sigma_D^2 != sigma_E^2
    
    var.test(D, E, alternative = "two.sided")
    # p-value = 0.7597 > alpha = 0.03 ---> Acceptem H0 ---> Millor f)
    
     
