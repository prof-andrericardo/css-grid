# 🧩 Capítulo 03 – Criando um Grid

> 📘 **Objetivo do capítulo**: Aprender a criar um layout Grid do zero utilizando `display: grid`, definindo colunas, linhas, unidades de medida e funções como `repeat()` e `minmax()`.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 🧱 1. Tornando um elemento um Grid

Para criar um grid, o primeiro passo é aplicar a propriedade `display: grid` a um container.

```css
.container {
  display: grid;
}
```

- `display: grid;` ativa o modelo de layout bidimensional (linhas e colunas).
- Os filhos diretos da `div.container` se tornam **itens do grid**.

Além disso, podemos usar `display: inline-grid` para grids que se comportam como elementos inline, mas esse uso é mais raro em layouts maiores.

------

## 📏 2. Definindo Colunas com `grid-template-columns`

Após ativar o grid, definimos a **quantidade e o tamanho das colunas** com `grid-template-columns`.

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr 2fr;
}
```

### 🧠 Explicação:

- `200px`: Primeira coluna com largura fixa de 200 pixels.
- `1fr`: Segunda coluna ocupa 1 fração do espaço restante.
- `2fr`: Terceira coluna ocupa 2 frações (o dobro da anterior).

### 💡 Exemplo Prático:

```html
<div class="container">
  <div class="item">A</div>
  <div class="item">B</div>
  <div class="item">C</div>
</div>
.container {
  display: grid;
  grid-template-columns: 200px 1fr 2fr;
  gap: 10px;
}

.item {
  background: #00bcd4;
  color: white;
  padding: 20px;
  text-align: center;
}
```

> ✅ O layout terá 3 colunas com larguras proporcionais. Excelente para adaptar-se a diferentes tamanhos de tela.

------

## 📐 3. Definindo Linhas com `grid-template-rows`

Assim como definimos colunas, podemos definir a **altura das linhas** com `grid-template-rows`.

```css
.container {
  grid-template-rows: 100px auto 150px;
}
```

### Explicação:

- `100px`: primeira linha fixa.
- `auto`: segunda linha com altura automática conforme o conteúdo.
- `150px`: terceira linha fixa novamente.

------

## 🧮 4. Usando a Função `repeat()`

A função `repeat()` é usada para evitar repetição manual de valores.

```css
.container {
  grid-template-columns: repeat(3, 1fr);
}
```

### Explicação:

- Cria **3 colunas de tamanho igual** (`1fr` cada).
- Equivalente a `1fr 1fr 1fr`.

------

## 📏 5. Unidades de Medida no Grid

O CSS Grid aceita diversas unidades. As mais comuns são:

| Unidade    | Significado                               | Exemplo              |
| ---------- | ----------------------------------------- | -------------------- |
| `px`       | valor fixo em pixels                      | `200px`              |
| `%`        | percentual relativo ao container          | `50%`                |
| `fr`       | fração do espaço disponível               | `1fr`, `2fr`         |
| `auto`     | tamanho baseado no conteúdo do item       | `auto`               |
| `minmax()` | define um intervalo entre mínimo e máximo | `minmax(100px, 1fr)` |

------

## ⚖️ 6. Usando `minmax()` para Flexibilidade

A função `minmax(min, max)` permite criar colunas **que respeitam um intervalo de tamanho**.

```css
.container {
  grid-template-columns: repeat(3, minmax(150px, 1fr));
}
```

### Explicação:

- Cada coluna terá **no mínimo 150px** e **no máximo 1fr** do espaço disponível.
- Ideal para **responsividade**, pois evita colunas pequenas demais.

------

## 🧪 Exemplo Completo

```html
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
</div>
.container {
  display: grid;
  grid-template-columns: repeat(3, minmax(150px, 1fr));
  grid-template-rows: 100px auto;
  gap: 15px;
  padding: 10px;
  background-color: #eeeeee;
}

.item {
  background: #4caf50;
  color: white;
  font-weight: bold;
  text-align: center;
  padding: 20px;
}
```

### 🖼️ Visualização esperada:

| Coluna 1 | Coluna 2 | Coluna 3 |
| -------- | -------- | -------- |
| Item 1   | Item 2   | Item 3   |

> ✅ As colunas se adaptam ao espaço da tela, mas respeitam um tamanho mínimo.

------

## 🧠 Conclusão

Com o domínio de `grid-template-columns`, `grid-template-rows`, `fr`, `repeat()` e `minmax()`, agora você é capaz de criar estruturas de layout **precisas, flexíveis e responsivas** com CSS Grid.

------

## 📘 Continuação

👉 No próximo capítulo, aprenderemos como **posicionar itens manualmente** dentro da grade, utilizando `grid-column-start`, `grid-row-end`, `grid-area` e áreas nomeadas.

➡️ [**Capítulo 04 – Posicionamento de Itens**](https://chatgpt.com/g/g-p-67b32319cdf48191b772dac06587dce2-uc15/c/04-posicionamento.md)