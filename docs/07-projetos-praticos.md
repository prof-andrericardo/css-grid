# 🧩 Capítulo 07 – Projetos Práticos com CSS Grid

> 📘 **Objetivo do capítulo**: Consolidar os conhecimentos de CSS Grid através da aplicação em projetos reais, contextualizados e didáticos.  
> 🎯 **Público-alvo**: Estudantes do 3º ano do Ensino Médio Técnico em Informática.

---

## 🏗️ Projeto 1 – Layout Semântico de Página

### 🎯 Objetivo:
Criar uma estrutura básica de página utilizando elementos HTML semânticos combinados com CSS Grid para organizar o conteúdo.

### 📐 Estrutura esperada:

```mysql
╔════════════════════════════╗
║        Cabeçalho           ║
╠══════╦═════════════╦═══════╣
║ Menu ║   Conteúdo  ║ Info  ║
╚══════╩═════════════╩═══════╝
```

### 🧪 Código HTML + CSS

```html
<div class="container">
  <header class="header">Topo</header>
  <nav class="nav">Menu</nav>
  <main class="main">Conteúdo principal</main>
</div>
```

```css
.container {
  display: grid;
  grid-template-areas:
    "header header"
    "nav main";
  grid-template-columns: 200px 1fr;
  grid-template-rows: auto 1fr;
  height: 100vh;
  gap: 10px;
}

.header {
  grid-area: header;
  background: #3f51b5;
  color: white;
  padding: 20px;
  text-align: center;
}

.nav {
  grid-area: nav;
  background: #607d8b;
  color: white;
  padding: 20px;
}

.main {
  grid-area: main;
  background: #cfd8dc;
  padding: 20px;
}
```

### 💡 Explicação:

- Usamos `grid-template-areas` para nomear e organizar o layout.
- A navegação fica fixa na lateral e o conteúdo se adapta ao restante da largura da tela.

------

## 🖼️ Projeto 2 – Galeria de Imagens Responsiva

### 🎯 Objetivo:

Criar uma galeria de imagens que se adapta automaticamente ao tamanho da tela, utilizando `auto-fit` e `minmax()`.

### 📐 Comportamento Esperado:

- Em telas largas: várias colunas lado a lado.
- Em telas pequenas: as imagens se reorganizam verticalmente.

### 🧪 Código HTML + CSS

```html
<div class="galeria">
  <img src="img1.jpg" alt="Imagem 1" />
  <img src="img2.jpg" alt="Imagem 2" />
  <img src="img3.jpg" alt="Imagem 3" />
  <img src="img4.jpg" alt="Imagem 4" />
</div>
```

```css
.galeria {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 15px;
  padding: 20px;
}

.galeria img {
  width: 100%;
  border-radius: 10px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}
```

### 💡 Explicação:

- `auto-fit` tenta preencher o espaço com o maior número possível de colunas.
- `minmax(200px, 1fr)` garante que cada imagem terá no mínimo 200px e se expandirá conforme o espaço disponível.

------

## 📊 Projeto 3 – Dashboard Simples com Áreas Nomeadas

### 🎯 Objetivo:

Simular um painel de controle com CSS Grid utilizando áreas nomeadas (`grid-template-areas`).

### 📐 Estrutura visual:

```mysql
╔════════════════════════════╗
║        Cabeçalho           ║
╠══════╦═════════════╦═══════╣
║ Menu ║   Conteúdo  ║ Info  ║
╚══════╩═════════════╩═══════╝
```

### 🧪 Código HTML + CSS

```html
<div class="dashboard">
  <header class="top">Cabeçalho</header>
  <aside class="menu">Menu</aside>
  <section class="main">Conteúdo</section>
  <aside class="extra">Info</aside>
</div>
```

```css
.dashboard {
  display: grid;
  grid-template-areas:
    "top top top"
    "menu main extra";
  grid-template-columns: 200px 1fr 200px;
  grid-template-rows: auto 1fr;
  height: 100vh;
  gap: 10px;
}

.top {
  grid-area: top;
  background: #263238;
  color: white;
  padding: 20px;
  text-align: center;
}

.menu {
  grid-area: menu;
  background: #455a64;
  color: white;
  padding: 20px;
}

.main {
  grid-area: main;
  background: #eceff1;
  padding: 20px;
}

.extra {
  grid-area: extra;
  background: #b0bec5;
  padding: 20px;
}
```

### 💡 Explicação:

- A estrutura é totalmente gerenciada por `grid-template-areas`, o que facilita a **manutenção e leitura do layout**.
- Ideal para páginas administrativas ou interfaces de gestão.

------

## 🎨 Desafios e Variações para os Alunos

- 🔄 Inverter a posição do menu lateral (de esquerda para direita).
- 📱 Tornar os três projetos responsivos com media queries.
- 🎨 Customizar as cores, fontes e tamanhos para criar identidades visuais distintas.
- ➕ Adicionar novos elementos (rodapé, notificações, cards, etc.).

------

## 📘 Continuação

👉 No próximo capítulo, vamos explorar **ferramentas online, geradores de grid, extensões úteis e plataformas com desafios práticos**, que ajudarão a aprofundar ainda mais o domínio sobre CSS Grid.

➡️ [**Capítulo 08 – Ferramentas e Recursos**](https://chatgpt.com/g/g-p-67b32319cdf48191b772dac06587dce2-uc15/c/08-ferramentas.md)

