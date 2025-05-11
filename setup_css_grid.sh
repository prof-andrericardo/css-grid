#!/bin/bash

echo "🎯 Iniciando a estrutura do repositório 'css-grid'..."

# Diretórios principais
mkdir -p docs
mkdir -p atividades
mkdir -p professor
mkdir -p exemplos/projeto-layout-semântico
mkdir -p exemplos/projeto-galeria-responsiva
mkdir -p exemplos/projeto-dashboard
mkdir -p imagens

# Arquivos Markdown de conteúdo
touch README.md
touch LICENSE
touch .gitignore

# Arquivos por seção
touch docs/01-introducao.md
touch docs/02-conceitos-basicos.md
touch docs/03-criando-grid.md
touch docs/04-posicionamento.md
touch docs/05-alinhamento.md
touch docs/06-grid-responsivo.md
touch docs/07-projetos-praticos.md
touch docs/08-ferramentas.md
touch docs/09-boas-praticas.md
touch docs/10-referencias.md

# Atividades e gabarito
touch atividades/modelo-atividade-css-grid.md
touch professor/gabarito-orientativo.md

echo "✅ Estrutura criada com sucesso!"
