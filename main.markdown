# Massimi e minimi

Dopo aver calcolato e rappresentato il dominio della nostra funzione, bisogna
mettere a sistema le derivate parziali.

$$ z = f(x,y) $$

$$
\begin{cases}
\frac{\partial f}{\partial x} = 0\\
\frac{\partial f}{\partial y} = 0
\end{cases}
$$

Da questo sistema, se ammette soluzioni, si otterranno i punti critici della
funzione che occorre studiare attraverso la matrice Hessiana.

Occorre quindi calcolare le derivate seconde della funzione
(per il Teorema di Schwartz le derivate miste sono equivalenti)
e costruire la matrice Hessiana.

$$
\begin{pmatrix}
\frac{\partial^2 f}{\partial x^2} & 
\frac{\partial}{\partial x} \frac{\partial f}{\partial y}\\
\frac{\partial}{\partial y} \frac{\partial f}{\partial x} &
\frac{\partial^2 f}{\partial y^2}
\end{pmatrix}
$$

Arrivati a questo punto occorre studiare la matrice.
1. Se la matrice è DEFINITA POSITIVA, allora il punto in questione è un minimo.
2. Se la matrice è DEFINITA NEGATIVA, allora il punto in questione è un massimo.
3. Se la matrice è INDEFINITA (ovvero non è semidefinita positiva e 
   semidefinita negativa), allora è un punto sella.

# Massimi e minimi vincolati

Si ha una funzione $f(x,y)$ e una funzione vincolo $g(x,y)$.
Per calcolare i punti critici vincolati si agisce in maniera simile al metodo
per i punti critici nelle "normali" funzioni. In questo caso però vanno utilizzati
i moltiplicatori di Lagrange.

$$
\Lambda(x,y) = f(x,y) + \lambda g(x,y)
$$

Vanno a questo punto calcolate le derivate prime rispetto alle varie incognite
(inclusa $\lambda$) e messe a sistema per ricavare i punti critici lungo il 
vincolo.

$$
\begin{cases}
\frac{\partial f}{\partial x} = 0\\
\frac{\partial f}{\partial y} = 0\\
\frac{\partial f}{\partial \lambda} = 0
\end{cases}
$$

Avendo i punti, si agisce esattamente come i regolari punti critici
(matrice Hessiana).

# Piano tangente

Nel caso in cui, in uno studio di funzione, il determinante della matrice
Hessiana sia 0, va calcolato il piano tangente alla funzione per determinare
la natura del punto. Per calcolare l'equazione del piano tangente, occorre
risolvere:

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

# Sostituzione di variabile per integrali doppi

La sostituzione di variabili negli integrali doppi va eseguita facendo
riferimento alla matrice Jacobiana della sosituzione.

Esempio più importante di sostituzione è la sostituzione in
coordinate polari.

$$
\begin{cases}
x = \rho cos \theta\\
y = \rho sin \theta
\end{cases}
$$

con questa sostituzione, il determinante della matrice Jacobiana
è esattamente $\rho$.
A questo punto:
$$
\iint\limits_D f(x,y) dxdy = \iint\limits_{D'} g(\rho,\theta) \rho d\rho d\theta
$$

ovviamente sostituendo il dominio.

# Integrali impropri

Un integrale doppio improprio è un integrale doppio definito che rappresenta
uno spazio infinito.

$$
\iint\limits_k^\infty f(x,y)dxdy = 
\lim_{c \to \infty} \iint\limits_k^c f(x,y) dxdy
$$

Occorre risolvere quindi l'integrale e successivamente il limite in funzione
di $c$.

N.B: Non è necessario avere $\pm \infty$ nei limiti dell'integrale per definirlo
improprio. Bisogna fare attenzione alle discontinuità della funzione integranda.

# Equazioni differenziali del primo ordine omogenee a variabili separabili

Separare i termini $y$ da i termini $x$ e integrare entrambi i membri.

# Equazioni differenziali del primo ordine non omogenee

Formula di Bernoulli:

$$
\begin{aligned}
a(x) y' &= b(x) y + c(x) \\
y' &= \underbrace{\frac{b(x)}{a(x)}}_{p(x)} y + 
\underbrace{\frac{c(x)}{a(x)}}_{q(x)} \\
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
   la soluzione è $y = e^{\alpha x} (c_1 cos(\beta x) + c_2 sin(\beta x))$

# Equazioni differenziali del secondo ordine non omogenee

Un'equazione differenziale del secondo ordine non omogenea ha la forma:
$$
y'' + p(x) y' + q(x) y = c(x)
$$

L'integrale generale dell'equazione ha la forma

$$y(x) = z(x) + \phi(x)$$

dove $z(x)$ è l'integrale generale dell'omogenea associata e 
$\phi(x)$ è una soluzione particolare dell'equazione non omogenea.

Definiamo $g(\lambda)$ l'equazione di secondo grado in $\lambda$ associata
all'equazione di secondo ordine omogenea associata.

Per trovare $z(x)$ va risolta l'equazione omogenea associata dell'equazione
di partenza.

Per trovare $\phi(x)$:

1. Se $c(x)$ è un polinomio di grado $n$:

   1. Se $g(\lambda)$ non ammette come soluzione $0$, $\phi(x)$ è un polinomio 
      di grado $n$.
   2. Se $g(\lambda)$ ammette come soluzione $0$ con molteplicità $1$, cioè $a \neq 0$
      e $b = 0$, allora $\phi(x) = x p_n$
   3. Se $g(\lambda)$ ammette come soluzione $0$ con molteplicità $2$, cioè 
      $a = b = 0$, allora $\phi(x) = x^2 p_n$

2. Se $c(x) = p_n(x) e^{\alpha x}$:

   1. Se $\alpha$ non è soluzione di $g(\lambda)$ allora $\phi(x) = 
      p_n(x) e^{\alpha x}$
   2. Se $\alpha$ è soluzione di $g(\lambda)$ con molteplicità $r$ allora $\phi(x)
      = x^r p_n(x) e^{\alpha x}$

3. Se $c(x) = p_{1n}(x) e^{\alpha x} cos(\beta x) + 
   p_{2n}(x) e^{\alpha x} sin(\beta x)$ allora:

   1. Se $\alpha + i \beta$ non è soluzione di $g(\lambda)$:
      $\phi(x) = e^{\alpha x} (A(x) cos(\beta x) + 
      B(x) sin(\beta x))$, dove $A(x)$ e $B(x)$ sono polinomi di grado non 
      superiore al grado massimo tra $p_1n(x)$ e $p_2n(x)$
   2. Se $\alpha + i \beta$ è soluzione di $g(\lambda)$:
      $\phi(x) = x e^{\alpha x} (A(x) cos(\beta x) + B(x) sin(\beta x))$.

4. Se $c(x) = c_1(x) + c_2(x)$ è possibile applicare uno dei procedimenti 
   precedenti, una volta per $c_1(x)$ e una volta per $c_2(x)$. La risultante 
   funzione $\phi (x)$ sarà la somma delle $\phi$ derivate da $c_1(x)$ e 
   $c_2(x)$.

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
