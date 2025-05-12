# 🧩 Capítulo 05 – Alinhamento no Grid

> 📘 **Objetivo do capítulo**: Entender como alinhar itens dentro de um Grid, seja de forma individual, coletiva ou global, utilizando as propriedades de alinhamento do CSS Grid.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 🎯 1. O que significa "alinhamento" no CSS Grid?

Ao criar um layout com CSS Grid, os elementos nem sempre se posicionam de maneira visualmente ideal. Por isso, o **alinhamento** é essencial para garantir que os itens estejam bem distribuídos **dentro de suas células**, **dentro do container** ou até mesmo o **grid inteiro na página**.

No CSS Grid, temos três níveis de alinhamento:

1. **Itens dentro de suas células** (nível individual)
2. **Itens dentro do container** (nível coletivo)
3. **Grid dentro do espaço disponível** (nível global)

---

## 📦 2. Alinhamento de Itens no Container

Essas propriedades definem **como os itens do grid se comportam dentro de suas células**, de forma geral:

| Propriedade     | Eixo       | Descrição                                      |
| --------------- | ---------- | ---------------------------------------------- |
| `justify-items` | Horizontal | Alinha o conteúdo dos itens no eixo horizontal |
| `align-items`   | Vertical   | Alinha o conteúdo dos itens no eixo vertical   |
| `place-items`   | Ambos      | Atalho para `align-items` e `justify-items`    |

### 🧪 Exemplo com `justify-items` e `align-items`

```html
<div class="container">
  <div class="item">Centro</div>
</div>
.container {
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 200px;
  justify-items: center; /* Alinha horizontalmente */
  align-items: center;   /* Alinha verticalmente */
  background-color: #f5f5f5;
}

.item {
  background: #3f51b5;
  color: white;
  padding: 20px;
}
```

> ✅ O item será centralizado dentro da célula tanto vertical quanto horizontalmente.

------

## 👤 3. Alinhamento de Itens Individuais

Se quisermos alinhar **apenas um item específico**, usamos:

| Propriedade    | Eixo       | Descrição                         |
| -------------- | ---------- | --------------------------------- |
| `justify-self` | Horizontal | Alinha um item no eixo horizontal |
| `align-self`   | Vertical   | Alinha um item no eixo vertical   |
| `place-self`   | Ambos      | Atalho para os dois               |

### 🧪 Exemplo com `justify-self` e `align-self`

```css
.item {
  justify-self: end; /* Alinha o item à direita da célula */
  align-self: start; /* Alinha o item ao topo da célula */
}
```

> 🎯 Muito útil quando você quer controlar o posicionamento de um item **sem alterar os demais**.

------

## 🌐 4. Alinhamento do Grid como um Todo

Essas propriedades controlam **como o grid inteiro é posicionado** dentro do espaço disponível, especialmente útil em layouts centrais ou responsivos.

| Propriedade       | Eixo       | Descrição                        |
| ----------------- | ---------- | -------------------------------- |
| `justify-content` | Horizontal | Alinha o grid no eixo horizontal |
| `align-content`   | Vertical   | Alinha o grid no eixo vertical   |
| `place-content`   | Ambos      | Atalho para os dois              |

### 🧪 Exemplo com `justify-content` e `align-content`

```css
.container {
  display: grid;
  grid-template-columns: repeat(2, 100px);
  grid-template-rows: repeat(2, 100px);
  justify-content: center;  /* Centraliza o grid horizontalmente */
  align-content: center;    /* Centraliza o grid verticalmente */
  height: 400px;
  background-color: #ddd;
}
```

> ✅ Isso não afeta os itens diretamente, mas sim o **conjunto da grade inteira**.

------

## 🧠 Tabela-Resumo das Propriedades

| Propriedade       | Aplica-se a       | Eixo       | Nível de aplicação    |
| ----------------- | ----------------- | ---------- | --------------------- |
| `justify-items`   | Todos os itens    | Horizontal | Itens no container    |
| `align-items`     | Todos os itens    | Vertical   | Itens no container    |
| `place-items`     | Todos os itens    | Ambos      | Atalho dos dois acima |
| `justify-self`    | Item individual   | Horizontal | Item específico       |
| `align-self`      | Item individual   | Vertical   | Item específico       |
| `place-self`      | Item individual   | Ambos      | Atalho dos dois acima |
| `justify-content` | Grid como um todo | Horizontal | Grade no espaço total |
| `align-content`   | Grid como um todo | Vertical   | Grade no espaço total |
| `place-content`   | Grid como um todo | Ambos      | Atalho dos dois acima |

------

## 💬 Curiosidade: Qual usar?

- Se você quer **alinhamento geral dos itens**, use `justify-items` e `align-items`.
- Se você quer **mexer em um único item**, use `justify-self` e `align-self`.
- Se você quer centralizar o **grid inteiro na página**, use `justify-content` e `align-content`.

------

## 📘 Continuação

👉 No próximo capítulo, veremos como tornar o Grid **adaptável a diferentes tamanhos de tela**, criando layouts que funcionam bem tanto no celular quanto no computador.

➡️ [**Capítulo 06 – Grid Responsivo**](./06-grid-responsivo.md)

