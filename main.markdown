# Determinare massimi e minimi

È data una funzione $f(x, y)$.

Per individuare i punti critici si calcolano $f_x$ e $f_y$. Le soluzioni
del sistema con $f_x(x, y) = 0$ e $f_y(x, y) = 0$ sono i punti critici.

Per determinare la tipologia di un punto critico si calcolano $f_xx$,
$f_{xy}$ e $f_{yy}$ e con tali derivate parziali si costruisce la relativa
matrice Hessiana.

* Se $det(H(\overline{x}, \overline{y})) < 0$ allora
  $(\overline{x}, \overline{y})$ è un punto di flesso
* Se $det(H(\overline{x}, \overline{y})) > 0$ e
  $f_{xx}(\overline{x}, \overline{y}) < 0$ allora
  $(\overline{x}, \overline{y})$ è un punto di massimo
* Se $det(H(\overline{x}, \overline{y})) > 0$ e
  $f_{xx}(\overline{x}, \overline{y}) > 0$ allora
  $(\overline{x}, \overline{y})$ è un punto di minimo

# Determinare massimi e minimi vincolati

Sono date una funzione $f$ in $n$ incognite e $n-1$ funzioni
$g_1, \dots, g_{n-1}$ vincoli di $f$.

Per individuare i punti critici si costruisce la funzione di Lagrange
del tipo:

$$
\begin{aligned}
&\mathcal{L} = f(x, y) + \lambda \, g(x, y)
&\quad \text{per 2 incognite}
% ----------
\\
% ----------
&\mathcal{L} = f(x, y, z) + \lambda_1 \, g_1(x, y, z)
                          + \lambda_2 \, g_2(x, y, z)
&\quad \text{per 3 incognite}
\end{aligned}
$$

Quindi si calcolano le derivate parziali $\mathcal{L}_x$, $\mathcal{L}_y$,
$\mathcal{L}_{\lambda_n}$ e si risolve il sistema omogeneo composto da tali
derivate.

Individuati i punti critici, per determinarne la tipologia, si procede come
descritto nella sezione precedente.

# Determinare il piano tangente a una funzione

Nel caso in cui, in uno studio di funzione, il determinante della matrice
Hessiana sia 0, va calcolato il piano tangente alla funzione per determinare
la natura del punto.

Per calcolare l'equazione del piano tangente occorre risolvere:

$$
det
\begin{pmatrix}
x - x_p & y - y_p & z - z_p \\
\frac {\partial S_1}{\partial x} & \frac {\partial S_2}{\partial x} &
\frac {\partial S_3}{\partial x} \\
\frac {\partial S_1}{\partial y} & \frac {\partial S_2}{\partial y} &
\frac {\partial S_3}{\partial y}
\end{pmatrix} = 0
$$

# Sostituzione di variabile con coordinate polari in integrali doppi

$$
\begin{cases}
x = \rho cos \theta \\
y = \rho sin \theta
\end{cases}
% ----------
\qquad
% ----------
\iint \limits_D f(x, y) \, dx \, dy =
\iint \limits_{D'} \rho \, g(\rho, \theta) \, d\rho \, d\theta
$$

# Equazioni differenziali del primo ordine non omogenee

$$
a(x) \, y' = b(x) \, y + c(x)
% ----------
\quad \Longrightarrow \quad
% ----------
y' = \underbrace{\frac{b(x)}{a(x)}}_{p(x)} y
     + \underbrace{\frac{c(x)}{a(x)}}_{q(x)}
% ----------
\quad \Longrightarrow \quad
% ----------
y = e^{\int p(x) \, dx} \int e^{- \int p(x) \, dx} \, q(x) \, dx
$$

# Equazioni differenziali del secondo ordine lineari omogenee

$$
\begin{aligned}
& \text{Data una eq. differenziale}
& \quad
& a y'' + b y' + c y = 0
% ----------
\\
% ----------
& \text{Si costruisce una eq. associata}
& \quad
& a \lambda^2 + b \lambda + c = 0
\end{aligned}
$$

1. Se $\lambda_1 \neq \lambda_2$:
   la soluzione è $y = c_1 e^{\lambda_1 x} + c_2 e^{\lambda_2 x}$
2. Se $\lambda_1 = \lambda_2$
   la soluzione è $y = e^{\lambda x} (c_1 + c_2 x)$
3. Se $\lambda_{1,2}$ sono $(\alpha \pm i \beta)$
   la soluzione è $y = e^{\alpha x} (c_1 cos(\beta x) + c_2 sin(\beta x))$

# Equazioni differenziali del secondo ordine lineari non omogenee

$$
\begin{aligned}
& \text{Data una eq. differenziale}
& \quad
& ay'' + by' + cy = d(x)
% ----------
\\
% ----------
& \text{La soluzione è}
& \quad
& y(x) = z(x) + \phi(x)
% ----------
\\
% ----------
& \text{Omogenea associata $g(\lambda)$}
& \quad
& a \lambda^2 + b \lambda + c = 0
\end{aligned}
$$

$z(x)$ è la soluzione individuata dall'applicazione del metodo risolutivo per
equazioni differenziali del secondo ordine lineari omogenee all'equazione
$ay'' + by' + cy = 0$.

Per individuare $\phi(x)$:

1. Se $d(x)$ è un polinomio di grado $n$:

   1. Se $\lambda_{1,2} \neq 0$ allora $\phi(x)$ è un polinomio di grado $n$
   2. Se $\lambda_1 = 0$ e $\lambda_2 \neq 0$ allora $\phi(x) = x p_n$
   3. Se $\lambda_1 = \lambda_2 = 0$ allora $\phi(x) = x^2 p_n$

2. Se $c(x) = p_n(x) e^{\alpha x}$:

   1. Se $\alpha \neq \lambda_{1,2}$ allora $\phi(x) = p_n(x) e^{\alpha x}$
   2. Se $\alpha$ è soluzione di $g(\lambda)$ con molteplicità $r$ allora
      $\phi(x) = x^r p_n(x) e^{\alpha x}$

3. Se $c(x) = p_{1n}(x) e^{\alpha x} cos(\beta x) + 
   p_{2n}(x) e^{\alpha x} sin(\beta x)$:

   1. Se $(\alpha + i \beta) \neq \lambda$ allora
      $\phi(x) = e^{\alpha x} (A(x) cos(\beta x) + B(x) sin(\beta x))$,
      dove $A(x)$ e $B(x)$ sono polinomi di grado NON superiore al grado
      massimo tra $p_1n(x)$ e $p_2n(x)$
   2. Se $(\alpha + i \beta) = \lambda$ allora
      $\phi(x) = x e^{\alpha x} (A(x) cos(\beta x) + B(x) sin(\beta x))$

4. Se $c(x) = c_1(x) + c_2(x)$ si applica uno dei metodi precedenti a
   $c_1(x)$ e uno a $c_2(x)$. Essi produrranno due funzioni, rispettivamente
   $\phi_1(x)$ e $\phi_2(x)$. $\phi(x) = \phi_1(x) + \phi_2(x)$

# Integrale con A e B
Si consideri un integrale del tipo $\int {\frac {k}{(x^2 - 1)} dx}$
$$
\frac {k}{(x^2 - 1)} = \frac {k}{(x-1)(x+1)} = \frac {A}{x-1} + \frac {B}{x+1}
= \frac {A(x + 1) + B(x - 1)}{(x - 1)(x + 1)}
$$
$$
\frac {(A + B)x + A - B}{(x + 1)(x - 1)}
$$
Per trovare le due costanti A e B:
$$
\begin{cases}
A + B = 0\\
A - B = k
\end{cases}
$$
