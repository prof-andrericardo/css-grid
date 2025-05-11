# 🧩 Capítulo 06 – Grid Responsivo

> 📘 **Objetivo do capítulo**: Aprender como tornar layouts com CSS Grid adaptáveis a diferentes tamanhos de tela, utilizando funções como `minmax()`, `auto-fill`, `auto-fit` e `media queries`.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 🌐 1. O que é um Grid Responsivo?

Um layout responsivo é aquele que **se adapta automaticamente ao tamanho da tela** — seja em um celular, tablet ou monitor ultrawide.

Com o CSS Grid, é possível construir **grades fluídas** que se reorganizam conforme o espaço disponível, sem precisar escrever um novo HTML ou duplicar blocos de CSS.

---

## ⚙️ 2. Tornando o Grid Fluído com `minmax()`

A função `minmax(min, max)` define uma **largura mínima e máxima** para as colunas do grid.

```css
grid-template-columns: repeat(3, minmax(150px, 1fr));
```

### 🧠 Explicação:

- `150px`: valor mínimo — evita que a coluna fique pequena demais.
- `1fr`: valor máximo — ocupa o espaço restante proporcionalmente.

Isso faz com que **cada coluna cresça ou encolha**, mas nunca fique menor que 150px.

------

## 🔁 3. `auto-fill` vs `auto-fit`: Diferenças e Aplicações

As duas funções são usadas para preencher o espaço disponível com o **maior número possível de colunas**, mas se comportam de maneira diferente:

| Função      | Comportamento                                                |
| ----------- | ------------------------------------------------------------ |
| `auto-fill` | **Mantém colunas vazias** se não houver conteúdo suficiente  |
| `auto-fit`  | **Colapsa as colunas vazias**, permitindo que as colunas preenchidas ocupem mais espaço |

### 💡 Exemplo prático com `auto-fit`:

```css
grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
```

> ✅ Esse padrão é amplamente utilizado para criar **galerias, cards ou layouts adaptativos**, pois se ajusta automaticamente à tela.

------

## 🧪 4. Exemplo Completo de Grid Responsivo

```html
<div class="container">
  <div class="item">1</div>
  <div class="item">2</div>
  <div class="item">3</div>
  <div class="item">4</div>
  <div class="item">5</div>
</div>
.container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 20px;
  padding: 20px;
}

.item {
  background-color: #009688;
  color: white;
  padding: 40px;
  text-align: center;
  font-size: 1.2rem;
}
```

### 🔍 O que acontece?

- Em telas largas: 3 ou 4 colunas aparecem lado a lado.
- Em telas médias: as colunas se reorganizam.
- Em telas pequenas: as colunas se empilham, respeitando o mínimo de 150px.

------

## 📱 5. Adicionando `Media Queries` para maior controle

Em alguns casos, é interessante aplicar regras específicas com `@media`.

```css
@media (max-width: 768px) {
  .container {
    grid-template-columns: 1fr;
  }
}
```

### Explicação:

- Quando a tela for menor que 768px, o layout **passa a ter apenas 1 coluna**, facilitando a leitura em dispositivos móveis.

------

## 🖼️ 6. Visualização Conceitual

### Layout com `auto-fit` e `minmax(150px, 1fr)`

```
╔═════════╦═════════╦═════════╗
║   1     ║   2     ║   3     ║ → Desktop (3 colunas)
╚═════════╩═════════╩═════════╝

╔═════════╦═════════╗
║   1     ║   2     ║         → Tablet (2 colunas)
╠═════════╩═════════╣
║        3          ║
╚═══════════════════╝

╔═════════╗
║   1     ║             → Mobile (1 coluna)
╠═════════╣
║   2     ║
╠═════════╣
║   3     ║
╚═════════╝
```

> Essa estrutura acontece **sem a necessidade de modificar o HTML ou duplicar CSS**. O grid se reorganiza sozinho com base no espaço disponível.

------

## 🧠 7. Boas Práticas para Grid Responsivo

- ✅ Use `minmax()` com `auto-fit` ou `auto-fill` sempre que possível.
- ✅ Evite usar `px` fixos demais em colunas, pois quebram a fluidez.
- ✅ Combine Grid com `media queries` para controle fino.
- ✅ Teste em múltiplos dispositivos e use o modo responsivo do navegador.

------

## 📘 Continuação

👉 No próximo capítulo, aplicaremos todos os conhecimentos adquiridos em **projetos reais com CSS Grid**, incluindo layout de página, galeria de imagens e um dashboard simples.

➡️ [**Capítulo 07 – Projetos Práticos**](https://chatgpt.com/g/g-p-67b32319cdf48191b772dac06587dce2-uc15/c/07-projetos-praticos.md)

