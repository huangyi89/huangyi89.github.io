---
sort: 1
---

# Helmholtz decomposition theorem

## Statement  of the theorem 

There is a  bounded domain $$V \subseteq \mathbb{R}^3$$ and $$S$$ is the surface encloses the domain $$V$$. Let $$\mathbf{F}$$ be a vector field on the domain $$V$$, which is twice continuously differentiable inside $$V$$. Then $$\mathbf{F}$$ can be decomposed into a curf-free (longitudinal, diverging, non-curling, irrotational) vector field and a divergence-free (transverse, solenoidal, curling, rotational, non-diverging) vector field.

$$
\mathbf{F}=-\nabla \Phi+\nabla \times \mathbf{A}
$$

where 

$$
\Phi(\mathbf{r})=\frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \cdot \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \cdot \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} S^{\prime}
$$

$$
\mathbf{A}(\mathbf{r})=\frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \times \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \times \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} S^{\prime}
$$

and $$\nabla^{\prime} $$ is the nabla operator with respect to $$\mathbf{r}^{\prime}$$, not $$\mathbf{r}$$. $$\Phi$$ is a scaler field called a scaler potential and $$\mathbf{A}$$ is a vector field called a vector potential.

## Derivation

$$
\nabla^2\left(\frac{1}{R}\right)=-4 \pi \delta(\mathbf{R}) \tag{1} \label{eq1}
$$

where $$ \mathbf{R}=\mathbf{r}-\mathbf{r}^{\prime}$$ with magnitude $$R=|\mathbf{R}| $$ and 

$$
\delta(\mathbf{R})=\delta^3\left(\mathbf{r}-\mathbf{r}^{\prime}\right)=\delta\left(x-x^{\prime}\right) \delta\left(y-y^{\prime}\right) \delta\left(z-z^{\prime}\right)
$$

Proof: Let $$\mathbf{R}$$ be $$\mathbf{R}=x\mathbf{i}+y\mathbf{j}+z\mathbf{k}$$, and $$R=\sqrt{x^2+y^2+z^2}$$ then the gradient of $$\frac{1}{R}$$ is

$$
\nabla\frac{1}{R}=-\frac{\mathbf{R}}{R^3}
$$

when $$R\neq0$$, then taking the divergence of each member of this equation yields

$$
\nabla^2\left(\frac{1}{R}\right)=0
$$

When  $$R=0$$, we integrate the left part of $$\eqref{eq1}$$ over the surface, $$S$$, of a sphere of radius, $$R$$, then applying Gauss's Theorem 

$$
\iiint_R \nabla^2 \frac{1}{R} d V=\iint_{\Delta S}-\frac{\mathbf{R}}{R^3} \cdot d \mathbf{S}
$$

where $$\Delta S$$ is the surface of the sphere, and is outward-facing. Now, $$d \mathbf{S}=\hat{\mathbf{n}} d A$$, where $$d A=R^2 \sin \theta d \phi d \theta$$. Therefore, we may write our surface integral as

$$
\begin{aligned}
\iint_{\Delta S}-\frac{\mathbf{R}}{R^3} \cdot d \mathbf{S} &=-\int_0^\pi \int_0^{2 \pi} \frac{R}{R^3} R^2 \sin \theta d \phi d \theta \\
&=-\int_0^\pi \sin \theta d \theta \int_0^{2 \pi} d \phi \\
&=-2 \cdot 2 \pi=-4 \pi
\end{aligned}
$$

Then

$$
\lim _{R \rightarrow 0}\left\{\nabla^2\left(\frac{1}{R}\right)\right\}=\lim _{R \rightarrow 0}\iiint_R \nabla^2 \frac{1}{R} d V = -4\pi
$$

There we can get the equation  $$\eqref{eq1}$$ .

$$
\begin{aligned}
\mathbf{F}(\mathbf{r}) &=\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right) \delta^3\left(\mathbf{r}-\mathbf{r}^{\prime}\right) \mathrm{d} V^{\prime} \\
&=\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right)\left(-\frac{1}{4 \pi} \nabla^2 \frac{1}{R}\right) \mathrm{d} V^{\prime}=-\frac{1}{4 \pi} \nabla^2 \int_V \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime} \\
&=-\frac{1}{4 \pi}\left[\nabla\left(\nabla \cdot \int_V \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}\right)-\nabla \times\left(\nabla \times \int_V \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}\right)\right] \\
&=-\frac{1}{4 \pi}\left[\nabla\left(\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right) \cdot \nabla \frac{1}{R} \mathrm{d} V^{\prime}\right)+\nabla \times\left(\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right) \times \nabla \frac{1}{R} \mathrm{d} V^{\prime}\right)\right] \\
&=-\frac{1}{4 \pi}\left[-\nabla\left(\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right) \cdot \nabla^{\prime} \frac{1}{R} \mathrm{d} V^{\prime}\right)-\nabla \times\left(\int_V \mathbf{F}\left(\mathbf{r}^{\prime}\right) \times \nabla^{\prime} \frac{1}{R} \mathrm{d} V^{\prime}\right)\right]
\end{aligned}
$$

where we have used the definition of the vector Laplacian

$$
\nabla^2 \mathbf{a}=\nabla(\nabla \cdot \mathbf{a})-\nabla \times(\nabla \times \mathbf{a})
$$

differentiation/integration with respect to $$\mathbf{r}^{\prime}$$ by $$\nabla^{\prime} / \mathrm{d} V^{\prime}$$, and in the last line, linearity of function arguments

$$
\nabla \frac{1}{R}=-\nabla^{\prime} \frac{1}{R}
$$

Then using the vectorial identities

$$
\mathbf{a} \cdot \nabla \psi=-\psi(\nabla \cdot \mathbf{a})+\nabla \cdot(\psi \mathbf{a})
$$

$$
\mathbf{a} \times \nabla \psi=\psi(\nabla \times \mathbf{a})-\nabla \times(\psi \mathbf{a})
$$

we get

$$
\begin{aligned}
\mathbf{F}(\mathbf{r})=-\frac{1}{4 \pi}[&-\nabla\left(-\int_V \frac{\nabla^{\prime} \cdot \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}+\int_V \nabla^{\prime} \cdot \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}\right) \\
&\left.-\nabla \times\left(\int_V \frac{\nabla^{\prime} \times \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}-\int_V \nabla^{\prime} \times \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}\right)\right]
\end{aligned}
$$

Then using Gauss's Theorem, the equation can be rewritten as

$$
\begin{aligned}
\mathbf{F}(\mathbf{r})=&-\frac{1}{4 \pi}\left[-\nabla\left(-\int_V \frac{\nabla^{\prime} \cdot \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}+\oint_S \hat{\mathbf{n}}^{\prime} \cdot \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} S^{\prime}\right)\right.\\
&\left.-\nabla \times\left(\int_V \frac{\nabla^{\prime} \times \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}-\oint_S \hat{\mathbf{n}}^{\prime} \times \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} S^{\prime}\right)\right] \\
=&-\nabla\left[\frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \cdot \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \cdot \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} S^{\prime}\right] \\
&+\nabla \times\left[\frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \times \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \times \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{R} \mathrm{d} S^{\prime}\right]
\end{aligned}
$$

with outward surface normal $$\hat{n}^{\prime}$$.

Defining 

$$
\Phi(\mathbf{r}) \equiv \frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \cdot \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \cdot \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} S^{\prime}
$$

$$
\mathbf{A}(\mathbf{r}) \equiv \frac{1}{4 \pi} \int_V \frac{\nabla^{\prime} \times \mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} V^{\prime}-\frac{1}{4 \pi} \oint_S \hat{\mathbf{n}}^{\prime} \times \frac{\mathbf{F}\left(\mathbf{r}^{\prime}\right)}{\left|\mathbf{r}-\mathbf{r}^{\prime}\right|} \mathrm{d} S^{\prime}
$$

we finally obtain

$$
\mathbf{F}=-\nabla \Phi+\nabla \times \mathbf{A}
$$

## Solution space

