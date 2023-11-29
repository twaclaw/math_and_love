---
theme: night
---
# This would be bigger
## A meta-presentation

---

Some tools 🔨 I find useful.

### Outline

* Turning Jupyter notebooks into slides
* [Reveal.js: the HTML presentation framework](https://revealjs.com)
    * [VSCode mode](https://marketplace.visualstudio.com/items?itemName=evilz.vscode-reveal)
* A short example
* Future presentations

---

### RevealJS mode

* Show presentation
    * Side by side
    * Open in browser
* Edit / Blackboard
* Export
* Host

---

### Images

![chomsky](https://upload.wikimedia.org/wikipedia/commons/c/cf/Noam_Chomsky_portrait_2017_retouched.png)

---

<img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Noam_Chomsky_portrait_2017_retouched.png" width="400px">

---


### [Fragments](https://revealjs.com/fragments/)

grow {.fragment .grow}

shrink {.fragment .shrink}

fade-out {.fragment .fade-out}

fade-right {.fragment .fade-right}

fade-up {.fragment .fade-up}

fade-down {.fragment .fade-down}

fade-left {.fragment .fade-left}

---

fade-in-then-out {.fragment .fade-in-then-out}

fade-in-then-semi-out {.fragment .fade-in-then-semi-out}

current-visible {.fragment .current-visible}

Highlight red{.fragment .highlight-red}

Highlight blue{.fragment .highlight-blue} 

Highlight green{.fragment .highlight-green}

---

### [Math](https://revealjs.com/math/)

* Inline $\alpha_i = 4$ 

* Block:

$$
\begin{align*}
& \min_{\color{red}{\mathbf{\beta}}} & & \sum_{i=1} ^{n} \big(y_i - f(x_i, \mathbf{\beta})\big)^2
\end{align*}
$$

---

### Maxwell's equations

$$
\begin{align*}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\\\   \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\\
\nabla \cdot \vec{\mathbf{B}} & = 0
\end{align*}
$$

---

### Isoperimetric problem


What is the <span style="color: red;">maximum</span>  area that can be bounded with a curve of fixed length $L$?


$$
A \le \frac{L^{2}}{4\pi}
$$ {.fragment .fade-in-then-semi-out}

$$
A = \frac{L^{2}}{4\pi}?
$$ {.fragment .fade-in-then-semi-out}

$$
\iff A_{\bullet} = \frac{L_{\circ} ^{2}}{4\pi}
$$ {.fragment .fade-in-then-semi-out}

---

### [Presenting code](https://revealjs.com/code/)

```python
def model(weight, height):
    b0 = numpyro.sample("b0", dist.Normal(178, 20))
    b1 = numpyro.sample("b1", dist.LogNormal(0, 1))
    sigma = numpyro.sample("sigma", dist.Uniform(0, 50))
    mu = b0 + b1 * (weight - jnp.mean(weight))
    numpyro.sample("height", dist.Normal(mu, sigma), obs=height)
```

---

<pre class="python"><code data-line-numbers>
def model(weight, height):
    b0 = numpyro.sample("b0", dist.Normal(178, 20))
    b1 = numpyro.sample("b1", dist.LogNormal(0, 1))
    sigma = numpyro.sample("sigma", dist.Uniform(0, 50))
    mu = b0 + b1 * (weight - jnp.mean(weight))
    numpyro.sample("height", dist.Normal(mu, sigma), obs=height)
</code></pre>

---

$$
\begin{aligned}
&  \max_{\ell, w} & & \ell w \\\\
& \text{subject to} &  & 2w + 2\ell = L
\end{aligned}
$$

<pre class="jump"><code class="fragment fade-in" data-line-numbers="1-2|3|4">@variable(model, w  >= 0)
@variable(model, ℓ  >= 0)
@objective(model, Max, ℓ*w)
@constraint(model, 2w + 2ℓ == L)
</code></pre>

---

<section data-background-gradient="radial-gradient(#2E8B57, #DDA0DD)">

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Julia_Programming_Language_Logo.svg/2560px-Julia_Programming_Language_Logo.svg.png" width="150px"> 

$\mathbf{Q} = \mathbf{Q} - \frac{\mathbf{Q\gamma \gamma^{T} Q}}{\mathbf{\gamma^{T}Q\gamma}} + \frac{\mathbf{\delta \delta^{T}}}{ \mathbf{\delta^{T} \gamma}}$

<pre class="python"><code>
Q = Q - (Q @ gamma @ gamma.T @ Q)/(gamma.T @ Q @ gamma)\
  + (delta @ delta.T)/(delta.T @ gamma)
</code></pre>

<pre class="julia"><code class="fragment fade-in">
Q = Q - Q*γ*γ'*Q / (γ'*Q*γ) + δδ' / (δ'γ)
</code></pre>

<div class="r-stack">

<pre class="julia"><code class="fragment">
function euclid(α, β)
	return √(α^2 + β^2)
end

euclid(3, 4)
5
</code></pre>

<pre class="julia"><code class="fragment">
function 🦄(α, β)
	return √(α^2 + β^2)
end

🦄(3, 4)
5
</code></pre>
</div>
</section>

---

### Speaker notes

<aside class="notes">
Pappus of Alexandria (325-265 BC) argued that the hexagon in honeycomb is the optimal regular polygon for storing honey; its hexagonal structure uses the least material to create a lattice of cells over a plane.
</aside>


[The Honeycomb conjecture 🐝](https://en.wikipedia.org/wiki/Honeycomb_conjecture)

---


















### Installing and configuring RISE

> The RISE extension is another popular JupyterLab extension that is being ported to work with Notebook 7. It allows you to turn your Jupyter Notebooks into a slideshow.
>
>The extension is still under active development. When ready, it will be possible to install it with
[Check the docs](https://jupyter-notebook.readthedocs.io/en/stable/notebook_7_features.html)



####  Workaround: downgrade `notebook`

```bash
pip install notebook==6.5.6
pip install RISE
```

