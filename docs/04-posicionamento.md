# 🧩 Capítulo 04 – Posicionamento de Itens

> 📘 **Objetivo do capítulo**: Aprender a posicionar manualmente itens dentro do grid utilizando propriedades específicas e atalhos, além de compreender o uso de áreas nomeadas.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 📍 1. Entendendo o Posicionamento Manual

Por padrão, o CSS Grid posiciona os itens **automaticamente** da esquerda para a direita, linha após linha. No entanto, podemos **posicionar qualquer item em qualquer célula da grade** manualmente, utilizando propriedades específicas:

| Propriedade         | Descrição                         |
| ------------------- | --------------------------------- |
| `grid-column-start` | Onde o item **começa** na coluna  |
| `grid-column-end`   | Onde o item **termina** na coluna |
| `grid-row-start`    | Onde o item **começa** na linha   |
| `grid-row-end`      | Onde o item **termina** na linha  |

---

## 🔢 2. Linhas do Grid: Numeração

No CSS Grid, as linhas **são numeradas a partir de 1**, da esquerda para a direita e de cima para baixo. Veja um grid com 3 colunas e 2 linhas:

Colunas:    |1     2     3     4|

 \---------------------
 Linha 1 →  | A |   B   |   C   |

 Linha 2 →  | D |   E   |   F   |
 \---------------------

> Cada "linha de grade" representa uma **divisão entre as células**, não a célula em si. A célula A, por exemplo, vai de `grid-column: 1 / 2` e `grid-row: 1 / 2`.

---

## ✏️ 3. Exemplo com `grid-column-start` e `grid-column-end`

```html
<div class="container">
  <div class="item a">A</div>
  <div class="item b">B</div>
  <div class="item c">C</div>
</div>
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 10px;
}

.item {
  background: #ff9800;
  color: white;
  padding: 20px;
  text-align: center;
  font-weight: bold;
}

.a {
  grid-column-start: 1;
  grid-column-end: 3; /* Ocupa colunas 1 e 2 */
}

.b {
  grid-column: 3 / 5; /* Atalho: começa na 3 e termina na 5 */
}
```

### 🧠 Explicação

- Item A ocupa da **coluna 1 até a coluna 3** (duas colunas).
- Item B ocupa da **coluna 3 até a coluna 5**.
- Item C, sem especificação, ocupa o próximo espaço disponível.

------

## 🛠️ 4. Atalhos: `grid-column` e `grid-row`

Para simplificar a escrita, podemos usar os **atalhos**:

```css
.item {
  grid-column: 1 / 4;  /* coluna inicial / coluna final */
  grid-row: 2 / 3;     /* linha inicial / linha final */
}
```

> O primeiro número indica **onde o item começa**, e o segundo **onde ele termina**. Lembre-se: o número **não é a quantidade**, mas a **linha da grade**.

------

## 🧩 5. Posicionando com `grid-area`

Também podemos usar `grid-area` para definir a posição de um item com a seguinte ordem:

```css
grid-area: linha-início / coluna-início / linha-fim / coluna-fim;
```

### 💡 Exemplo:

```css
.item-a {
  grid-area: 1 / 1 / 3 / 3;
}
```

- Inicia na **linha 1**, **coluna 1**
- Vai até a **linha 3**, **coluna 3**
- Ocupa um **bloco de 2x2** na grade

------

## 🧱 6. `grid-template-areas` e `grid-area`

O uso de **áreas nomeadas** torna o layout **mais semântico e fácil de manter**.

### 📄 Exemplo:

```css
.container {
  display: grid;
  grid-template-columns: 1fr 2fr;
  grid-template-rows: auto auto;
  grid-template-areas:
    "header header"
    "sidebar main";
}

.header {
  grid-area: header;
}

.sidebar {
  grid-area: sidebar;
}

.main {
  grid-area: main;
}
<div class="container">
  <div class="header">Topo</div>
  <div class="sidebar">Menu</div>
  <div class="main">Conteúdo</div>
</div>
```

> 🎯 Esse tipo de layout é ideal para páginas com estrutura clássica: topo, menu lateral e conteúdo principal.

------

## 🧠 7. Posicionamento Automático vs. Manual

| Tipo de Posicionamento | Vantagem                          | Desvantagem                               |
| ---------------------- | --------------------------------- | ----------------------------------------- |
| Automático             | Rápido, simples e organizado      | Pouco controle sobre a posição            |
| Manual                 | Controle total da posição do item | Requer planejamento e pode ser mais longo |

------

## ⚙️ 8. Linhas Implícitas e Explícitas

- **Linhas explícitas**: definidas por `grid-template-columns` ou `grid-template-rows`.
- **Linhas implícitas**: criadas automaticamente pelo navegador quando não há linhas suficientes para acomodar todos os itens.

> Exemplo: Se você define `grid-template-columns: repeat(2, 1fr)` e adiciona 5 itens, o Grid criará uma terceira linha **implícita** para acomodar os itens extras.

------

## 📘 Continuação

👉 No próximo capítulo, vamos entender como **alinhar os itens e o próprio grid** usando `justify-items`, `align-self`, `place-content` e outros.

➡️ [**Capítulo 05 – Alinhamento no Grid**](./05-alinhamento.md)
