# Guia de Configuração Manual da Skysize para OCA

## 📋 Problema Identificado

A Skysize NÃO está inicializando os submodules Git automaticamente durante o deploy.
Por isso os módulos OCA não aparecem no Odoo.

## 🔧 Soluções Possíveis (em ordem de preferência)

---

## SOLUÇÃO 1: Configurar Build Command na Skysize

### Onde configurar:
1. Acesse o projeto na Skysize
2. Vá em **Settings** (Configurações)
3. Procure por uma dessas seções:
   - **Build Settings**
   - **Deploy Configuration**
   - **Custom Commands**
   - **Hooks**

### O que configurar:

**Pre-deploy Hook / Build Command:**
```bash
bash init_oca_submodules.sh && pip install --break-system-packages -r requirements.txt
```

**OU (se o script não funcionar):**
```bash
git submodule update --init --recursive && pip install --break-system-packages -r requirements.txt
```

---

## SOLUÇÃO 2: Usar Console/SSH da Skysize

Se a Skysize oferece acesso via console/terminal/SSH:

### Passo 1: Acessar o console
1. No painel da Skysize, procure por:
   - **Console**
   - **Terminal**
   - **SSH Access**
   - **Shell**

### Passo 2: Executar comandos
```bash
# Navegar para o diretório do projeto
cd /app  # ou /opt/odoo ou onde o código está

# Inicializar submodules
git submodule update --init --recursive

# Verificar se funcionou
ls -la odoo/oca_addons/l10n-brazil/

# Reiniciar Odoo (pode ser necessário)
# O comando varia por plataforma
```

---

## SOLUÇÃO 3: Contact Skysize Support

Se nenhuma das opções acima estiver disponível:

### Abra um ticket com a Skysize perguntando:

```
Olá,

Estou usando Odoo 16.0 com módulos OCA como Git submodules.
Os submodules estão configurados no .gitmodules, mas não são
inicializados durante o deploy.

Perguntas:
1. Como posso configurar um build hook para executar 
   "git submodule update --init --recursive" antes do deploy?
2. A Skysize suporta Git submodules automaticamente?
3. Existe alguma configuração que preciso ativar?

Obrigado!
```

---

## SOLUÇÃO 4: Alternativa - Copiar Módulos Diretamente

Se NADA funcionar, última alternativa:

### Baixar módulos OCA localmente e fazer commit direto

**No seu PC:**

```bash
# Remover submodules
git rm -rf odoo/oca_addons/*
rm .gitmodules

# Criar pasta novamente
mkdir -p odoo/oca_addons

# Clonar cada módulo diretamente (NÃO como submodule)
cd odoo/oca_addons
git clone -b 16.0 --depth 1 https://github.com/OCA/l10n-brazil.git
git clone -b 16.0 --depth 1 https://github.com/OCA/server-tools.git
git clone -b 16.0 --depth 1 https://github.com/OCA/web.git
git clone -b 16.0 --depth 1 https://github.com/OCA/account-financial-tools.git
git clone -b 16.0 --depth 1 https://github.com/OCA/queue.git

# Remover pastas .git de dentro (para fazer commit normal)
find . -name ".git" -type d -exec rm -rf {} +

# Voltar para raiz
cd ../..

# Commit tudo (vai ser GRANDE, ~250MB)
git add odoo/oca_addons/
git commit -m "Add OCA modules directly (not as submodules)"
git push
```

**⚠️ DESVANTAGEM:** Arquivos grandes no repositório, difícil de atualizar módulos.

---

## 🎯 Próximos Passos Recomendados

### AGORA (ordem):

1. ✅ Substituir `requirements.txt` pela versão otimizada
2. ✅ Adicionar o script `init_oca_submodules.sh` ao repositório
3. 🔍 Explorar Settings da Skysize procurando por "Build Command"
4. 📞 Se não encontrar, contatar suporte da Skysize
5. 🔄 Se o suporte não ajudar, usar SOLUÇÃO 4 (copiar diretamente)

---

## 📞 Informações para o Suporte Skysize

**Repositório:** https://github.com/projetos2mrp-oss/teste3
**Branch:** main
**Problema:** Git submodules não são inicializados durante deploy
**Arquivo de configuração:** .gitmodules (presente na raiz)
**Comando necessário:** `git submodule update --init --recursive`

---

## ✅ Como Saber se Funcionou

Após configurar corretamente, no próximo deploy você DEVE ver nos logs:

```
Initializing Git submodules...
Submodule 'odoo/oca_addons/l10n-brazil' registered
Cloning into 'odoo/oca_addons/l10n-brazil'...
✅ Submodules downloaded successfully
```

E no Odoo:
- Apps → Buscar "l10n_br"
- Devem aparecer 9+ módulos brasileiros

---

Data de criação: 16/01/2026
Versão: 2.0
