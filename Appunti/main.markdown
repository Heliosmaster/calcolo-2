# Limiti in due variabili[^limit]

Si dice che

$$
\lim_{(x, y) \to (a, b)} f(x, y) = L
$$

se

1. Ogni intorno di $(a, b)$ include punti appartenenti
   al dominio di $f$ diversi da $(a, b)$
2. $\forall \, \varepsilon > 0 \quad \exists \, \delta > 0$
   tale che
   a. $\left| f(x, y) - L \right| < \varepsilon$
   b. $0 < \sqrt{(x - a)^2 + (y - b)^2} < \delta$

Inoltre

$$
\begin{aligned}
\lim_{(x, y) \to (a, b)} f(x, y)
& = \lim_{x \to a} \left( \lim_{y \to b} f(x, y) \right)
= \lim_{x \to a} f(x, y) \\
& = \lim_{y \to b} \left( \lim_{x \to a} f(x, y) \right)
= \lim_{y \to b} f(a, y) \\
\end{aligned}
$$

[^limit]: Adams, Robert; Essex, Christopher. Calculus: A Complete Course
          (7th ed.). \S 12.2, p. 677. 

# Derivate direzionali

Dati un versore $\hat{u} = (a, b)$ e la propria origine $(x, y)$, si
considera sulla retta individuata dal versore $\hat{u}$ un punto mobile
con equazione $(x + ta, y + tb).

La derivata direzionale è

$$
\lim_{t \to 0} \frac{f(x + ta, y + tb) - f(x, y)}{t}
= \frac{df}{d \hat{u}} = f_x a + f_y b
$$
