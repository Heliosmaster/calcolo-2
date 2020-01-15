# Massimi e minimi

# Massimi e minimi vincolati

# Sostituzione di variabile per integrali doppi

# Equazioni differenziali del primo ordine omogenee a variabili separabili

Separare i termini $y$ da i termoini $x$ e integrare entrambi i membri.

# Equazioni differenziali del primo ordine non omogenee

Formula di Bernoulli

$$
\begin{aligned}
a(x) y' &= b(x) y + c(x) \\
y' &= \underbrace{\frac{b(x)}{a(x)}}_{p(x)} y + \underbrace{\frac{c(x)}{a(x)}}_{q(x)} \\
\end{aligned}
$$

$$
P(x) = \int p(x) dx \, \, \text{È un integrale particolare, consideriamo c = 0}
$$

$$
y = e^{P(x)} \int e^{-P(x)} q(x) dx
$$

# Equazioni differenziali del secondo ordine omogenee

$$
y'' + p(x) y' + q(x) y = 0
$$

Ammesso che p(x) e q(x) sono costanti

$$
\begin{aligned}
a y'' + b y' + c y &= 0 \\
a \lambda^2 + b \lambda + c &= 0
\end{aligned}
$$

Si calcolano i valori di $\lambda_{1,2}$

1. Se $\lambda_1 \neq \lambda_2$:
   la soluzione è $y = c_1 e^{\lambda_1 x} + c_2 e^{\lambda_2 x}$
2. Se $\lambda_1 = \lambda_2$
   la soluzione è $y = e^{\lambda x} (c_1 + c_2 x)$
3. Se $\lambda_{1,2}$ sono complessi e coniugati
   la soluzione è $y = e^{\alpha x} (c_1 e^{i \beta x} + c_2 e^{-i \beta x})$

# Equazioni differenziali del secondo ordine non omogenee

$$
y'' + p(x) y' + q(x) y = c(x)
$$

L'integrale generale ha la forma

$$y(x) = z(x) + \phi(x)$$

Dove $z(x)$ è l'integrale generale dell'omogenea associata.

Dove $\phi(x)$ è una soluzione particolare dell'equazione non omogenea.

Si usa il metodo risolutivo delle eq. diff. omogenee per trovare $z(x)$.

Per trovare $\phi(x)$:

1. Se $c(x)$ è un polinomio di grado $n$:

   1. Se $g(x)$ non ammette come soluzione $0$, quindi $\phi(x)$ è un polinomio di grado $n$.
   2. Se $g(x)$ ammette come soluzione $0$ con molteplicità $1$, cioè $a \neq 0$ e $b = 0$, allora $\phi(x) = x p_n$
   3. Se $g(x)$ ammette come soluzioine $0$ con molteplicità $2$, cioè $a = b = 0$, allora $\phi(x) = x^2 p_n$

2. Se $c(x) = p_n(x) e^{\alpha x}$:

   1. Se $\alpha$ non è soluzione di $g(x)$ allora $\phi(x) = p_n(x) e^{\alpha x}$
   2. Se $\alpha$ è soluzione di $g(x)$ con molteplicità $r$ allora $\phi(x) = x^r p_n(x) e^{\alpha x}$

3. Se $c(x) = p_{1n}(x) e^{\alpha x} cos(\beta x) + p_{2n}(x) e^{\alpha x} sin(\beta x)$ allora:

   1. Se $\alpha + i \beta$ non è soluzione di $g(x)$:
      $\phi(x) = e^{\alpha x} (A(x) cos(\beta x) + B(x) sin(\beta x))$.
      Dove $A(x)$ e $B(x)$ sono polinomi di grado non superiore al grado massimo tra $p_1n(x)$ e $p_2n(x)$
   2. Se $\alpha + i \beta$ è soluzione di $g(x)$:
      $\phi(x) = x e^{\alpha x} (A(x) cos(\beta x) + B(x) sin(\beta x))$.

4. Se $c(x) = c_1(x) + c_2(x)$ è possibile applicare uno dei procedimenti precedenti, una volta per
   $c_1(x)$ e una volta per $c_2(x)$. La risultante funzione $\phi (x)$ sarà la somma delle $\phi$ derivate
   da $c_1(x)$ e $c_2(x)$.

# Integrale con A e B
Si consideri un integrale del tipo $\int {\frac {k}{(x^2 - 1)} dx}$
$$
\frac {k}{(x^2 - 1)} = \frac {k}{(x-1)(x+1)} = \frac {A}{x-1} + \frac {B}{x+1}
= \frac {A(x + 1) + B(x - 1)}{(x - 1)(x + 1)}
$$
$$
\frac {(A + B)x + A - B}{(x + 1)(x - 1)}
$$
In sistema $A + B = 0$,  $A - B = k$
