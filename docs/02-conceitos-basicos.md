# 🧩 Capítulo 02 – Conceitos Básicos do CSS Grid

> 📘 **Objetivo do capítulo**: Compreender os principais conceitos estruturais do CSS Grid, como containers, itens, linhas, colunas, células, áreas e espaçamentos.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 🧱 1. Grid Container e Grid Items

No CSS Grid, o primeiro passo para criar uma grade é definir um **container**. Este container irá controlar todo o comportamento da grade. Todos os elementos filhos diretos desse container se tornam **itens do grid** (grid items).

```css
.container {
  display: grid;
}
```

- `display: grid;` transforma o elemento em **Grid Container**.
- Todos os filhos diretos se tornam **Grid Items**.

### 💡 Exemplo Prático

```html
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
</div>
.container {
  display: grid;
  grid-template-columns: 1fr 1fr; /* duas colunas iguais */
}

.item {
  background-color: #2196f3;
  color: white;
  padding: 20px;
  text-align: center;
}
```

### 🧠 Explicação

- O `display: grid` define o container.
- `grid-template-columns: 1fr 1fr` cria **duas colunas de tamanho igual**.
- Cada `.item` ocupa automaticamente uma **célula** da grade.

------

## ➖ 2. Eixos do Grid: Linhas e Colunas

O CSS Grid é **bidimensional**, ou seja, organiza o layout **em dois eixos**:

| Eixo            | Direção         | Exemplo de Propriedade  |
| --------------- | --------------- | ----------------------- |
| Eixo horizontal | Linha (row)     | `grid-template-rows`    |
| Eixo vertical   | Coluna (column) | `grid-template-columns` |

Com isso, conseguimos construir grades **com controle total** sobre **linhas e colunas simultaneamente**.

------

## 🔲 3. Células e Áreas

### 📦 Célula (Cell)

Uma **célula** é a **interseção entre uma linha e uma coluna**. Cada item ocupa uma ou mais células dependendo do seu posicionamento e tamanho definido.

### 🗺️ Área (Area)

Uma **área** é uma **região composta por uma ou mais células**. Podemos nomear essas áreas para facilitar o layout.

### 💡 Exemplo Visual

```css
.container {
  display: grid;
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer";
}
```

| Linha | Coluna 1 | Coluna 2 |
| ----- | -------- | -------- |
| 1     | header   | header   |
| 2     | sidebar  | main     |
| 3     | footer   | footer   |

> 📌 As áreas nomeadas facilitam a organização semântica do layout.

------

## 🪟 4. Espaçamentos com `gap`

O `gap` (anteriormente `grid-gap`) é utilizado para **definir espaçamento entre linhas e colunas** do grid, sem a necessidade de usar margens.

```css
.container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: auto auto;
  gap: 20px;
}
```

### 💬 Explicação:

- `gap: 20px;` define um espaçamento de 20px **entre todas as linhas e colunas**.
- Podemos também usar `row-gap` e `column-gap` separadamente.

------

## 🖼️ Ilustração do Conceito

![Visualização de Grid com Áreas e Gaps](https://chatgpt.com/g/g-p-67b32319cdf48191b772dac06587dce2-uc15/imagens/conceitos-grid-estrutura.png)

> Imagem representando um layout com `grid-template-areas` e `gap` aplicado.

------

## 💡 Resumo Rápido dos Conceitos

| Conceito       | Descrição                             |
| -------------- | ------------------------------------- |
| Grid Container | Elemento com `display: grid`          |
| Grid Item      | Elemento filho direto do container    |
| Linha          | Eixo horizontal do grid               |
| Coluna         | Eixo vertical do grid                 |
| Célula         | Interseção entre linha e coluna       |
| Área           | Grupo de células nomeadas             |
| Gap            | Espaçamento entre as linhas e colunas |

------

## 🧪 Exercício Rápido

Crie uma grade com 3 colunas e 2 linhas, onde os itens sejam distribuídos automaticamente. Use `gap` para separar visualmente os itens.

```html
<div class="container">
  <div class="item">1</div>
  <div class="item">2</div>
  <div class="item">3</div>
  <div class="item">4</div>
  <div class="item">5</div>
  <div class="item">6</div>
</div>
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
}

.item {
  background: #673ab7;
  color: white;
  padding: 20px;
  text-align: center;
}
```

> ✅ Este exercício reforça a criação de um grid com múltiplas colunas e a aplicação de espaçamento entre os elementos.

------

## 📘 Continuação

👉 No próximo capítulo, vamos aprender a **criar o nosso próprio grid do zero**, definindo manualmente colunas, linhas e tamanhos com `grid-template-columns` e `grid-template-rows`.

➡️ [**Capítulo 03 – Criando um Grid**](./03-criando-grid.md)

