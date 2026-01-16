#!/bin/bash
# Script de instalação dos módulos OCA para Odoo 16.0
# Execute este script na raiz do seu repositório

set -e

echo "=========================================="
echo "Instalação OCA para Odoo 16.0 - Skysize"
echo "=========================================="

# Criar estrutura de diretórios
echo "📁 Criando estrutura de diretórios..."
mkdir -p odoo/oca_addons
mkdir -p odoo/addons

# Navegar para diretório OCA
cd odoo/oca_addons

echo ""
echo "📦 Adicionando módulos OCA como submodules..."

# Adicionar l10n-brazil (Localização Brasileira)
echo "  ✓ Adicionando l10n-brazil..."
git submodule add -b 16.0 https://github.com/OCA/l10n-brazil.git

# Adicionar server-tools (Ferramentas do servidor)
echo "  ✓ Adicionando server-tools..."
git submodule add -b 16.0 https://github.com/OCA/server-tools.git

# Adicionar web (Melhorias de interface)
echo "  ✓ Adicionando web..."
git submodule add -b 16.0 https://github.com/OCA/web.git

# Adicionar account-financial-tools (Ferramentas financeiras)
echo "  ✓ Adicionando account-financial-tools..."
git submodule add -b 16.0 https://github.com/OCA/account-financial-tools.git

# Adicionar queue (Sistema de filas para jobs assíncronos)
echo "  ✓ Adicionando queue..."
git submodule add -b 16.0 https://github.com/OCA/queue.git

# Voltar para raiz
cd ../..

echo ""
echo "🔄 Inicializando e atualizando submodules..."
git submodule update --init --recursive

echo ""
echo "✅ Instalação concluída!"
echo ""
echo "📋 Próximos passos:"
echo "  1. git add ."
echo "  2. git commit -m 'Add OCA modules for Odoo 16.0'"
echo "  3. git push"
echo "  4. Deploy na Skysize"
echo ""
