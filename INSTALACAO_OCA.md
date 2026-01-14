# Guia de Instalação OCA - Odoo 16.0 Community (Skysize)

## 🎯 Repositório
https://github.com/projetos2mrp-oss/teste3

## 📋 Pré-requisitos
- Git instalado
- Acesso ao repositório
- Acesso ao painel Skysize

---

## 🚀 PASSO A PASSO - EXECUTE NA ORDEM

### 1️⃣ Clone o Repositório (se ainda não tiver)
```bash
git clone https://github.com/projetos2mrp-oss/teste3.git
cd teste3
```

### 2️⃣ Copie os Arquivos Preparados

**Copie o arquivo `odoo.conf` para:**
```
teste3/odoo/odoo.conf
```

**Copie o script `install_oca.sh` para:**
```
teste3/install_oca.sh
```

### 3️⃣ Execute o Script de Instalação
```bash
chmod +x install_oca.sh
./install_oca.sh
```

Este script vai:
- Criar a estrutura de diretórios
- Adicionar todos os módulos OCA como submodules
- Inicializar os submodules

### 4️⃣ Commit e Push
```bash
git add .
git commit -m "Add OCA modules and configuration for Odoo 16.0"
git push origin main
```

### 5️⃣ Deploy na Skysize

1. Acesse o painel da Skysize
2. Abra seu projeto
3. Vá em **Deployments**
4. Selecione branch **main**
5. Clique em **Deploy**
6. Aguarde:
   - ⏳ Build (pode demorar ~5-10 min)
   - ⏳ Start
   - ✅ Status: Running

**Se houver erro:**
- Abra **Logs**
- Copie a mensagem de erro
- Me envie para análise

---

## 📦 MÓDULOS OCA INSTALADOS

### Repositórios Adicionados:
1. **l10n-brazil** - Localização Brasileira completa
   - NF-e, NFS-e, Fiscal, Contábil
2. **server-tools** - Ferramentas do servidor
3. **web** - Melhorias de interface
4. **account-financial-tools** - Ferramentas financeiras
5. **queue** - Sistema de filas (necessário para NF-e)

---

## 🎯 APÓS O DEPLOY - ATIVAÇÃO NO ODOO

### 1️⃣ Ativar Modo Desenvolvedor
1. Login no Odoo
2. Configurações → Ativar modo desenvolvedor

### 2️⃣ Atualizar Lista de Apps
1. Vá em **Apps**
2. Clique em ⚙️ (menu)
3. **Atualizar lista de Apps**
4. Aguarde processamento

### 3️⃣ ORDEM DE INSTALAÇÃO (CRÍTICA!)

**INSTALE EXATAMENTE NESTA ORDEM:**

#### Etapa 1 - Base
```
1. l10n_br_base
```

#### Etapa 2 - Contábil
```
2. l10n_br_account
```

#### Etapa 3 - Fiscal
```
3. l10n_br_fiscal
```

#### Etapa 4 - Estoque
```
4. l10n_br_stock
```

#### Etapa 5 - Certificado
```
5. l10n_br_fiscal_certificate
```

#### Etapa 6 - Documentos Eletrônicos
```
6. l10n_br_eletronic_document
```

#### Etapa 7 - NF-e
```
7. l10n_br_nfe
```

#### Etapa 8 - NFS-e
```
8. l10n_br_nfs
```

#### Etapa 9 - Integração Focus (quando for emitir)
```
9. l10n_br_fiscal_focus
```

**⚠️ IMPORTANTE:**
- NÃO pule etapas
- NÃO instale fora da ordem
- Aguarde cada módulo instalar completamente antes do próximo

---

## ✅ CHECKLIST DE VALIDAÇÃO

Após instalação completa, verifique:

- [ ] Todos os 9 módulos instalados sem erro
- [ ] Menu **Fiscal** aparece
- [ ] Consegue criar empresas brasileiras
- [ ] Consegue configurar certificado A1
- [ ] Consegue acessar configurações fiscais

---

## ⚠️ ERROS COMUNS E SOLUÇÕES

### Erro: "Módulo não encontrado"
**Causa:** addons_path incorreto
**Solução:** Verificar odoo.conf

### Erro: "Dependência não satisfeita"
**Causa:** Instalação fora da ordem
**Solução:** Desinstalar todos e reinstalar na ordem correta

### Erro: "Build failed" na Skysize
**Causa:** Submodules não inicializados
**Solução:** Execute `git submodule update --init --recursive`

### Erro: JavaScript/CSS quebrado
**Causa:** Versão errada do módulo (ex: 17.0 em vez de 16.0)
**Solução:** Verificar branch dos submodules

---

## 📞 SUPORTE

Se encontrar problemas:
1. Copie o erro completo
2. Tire screenshot se necessário
3. Informe em qual etapa ocorreu

---

## 🎉 PRÓXIMOS PASSOS (após instalação)

1. Configurar empresa brasileira
2. Importar certificado A1
3. Configurar série de documentos
4. Integrar com Focus NFe
5. Emitir primeira NF-e de teste

---

**Data de criação:** 2026-01-14
**Versão Odoo:** 16.0 Community
**Ambiente:** Skysize
