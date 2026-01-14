# Checklist de Validação - Instalação OCA

## ✅ FASE 1: PREPARAÇÃO DO REPOSITÓRIO

- [ ] Repositório clonado localmente
- [ ] Estrutura de diretórios criada (`odoo/oca_addons`)
- [ ] Arquivo `odoo.conf` copiado para `odoo/odoo.conf`
- [ ] Script `install_oca.sh` copiado para raiz
- [ ] Arquivo `.gitmodules` criado na raiz

## ✅ FASE 2: INSTALAÇÃO DOS SUBMODULES

- [ ] Script `install_oca.sh` executado com sucesso
- [ ] Submodule `l10n-brazil` adicionado
- [ ] Submodule `server-tools` adicionado
- [ ] Submodule `web` adicionado
- [ ] Submodule `account-financial-tools` adicionado
- [ ] Submodule `queue` adicionado
- [ ] Comando `git submodule update --init --recursive` executado

## ✅ FASE 3: COMMIT E PUSH

- [ ] `git add .` executado
- [ ] Commit criado com mensagem descritiva
- [ ] Push realizado para branch main
- [ ] Commit aparece no GitHub

## ✅ FASE 4: DEPLOY NA SKYSIZE

- [ ] Acesso ao painel Skysize realizado
- [ ] Projeto selecionado
- [ ] Deploy iniciado
- [ ] Build concluído sem erros
- [ ] Start concluído sem erros
- [ ] Status "Running" atingido
- [ ] URL do Odoo acessível

**Se houver erro no deploy:**
- [ ] Logs da Skysize verificados
- [ ] Erro documentado
- [ ] Correção aplicada

## ✅ FASE 5: VALIDAÇÃO NO ODOO

### Acesso Inicial
- [ ] Login no Odoo realizado
- [ ] Modo desenvolvedor ativado
- [ ] Menu Apps acessível

### Atualização de Apps
- [ ] "Atualizar lista de Apps" executado
- [ ] Nenhum erro na atualização
- [ ] Lista de apps carregada

### Busca por Módulos OCA
- [ ] Pesquisa por "l10n_br" retorna resultados
- [ ] Módulo `l10n_br_base` aparece
- [ ] Módulo `l10n_br_fiscal` aparece
- [ ] Módulo `l10n_br_nfe` aparece

## ✅ FASE 6: INSTALAÇÃO DOS MÓDULOS

### Etapa 1 - Base
- [ ] `l10n_br_base` instalado sem erro
- [ ] Instalação concluída

### Etapa 2 - Contábil
- [ ] `l10n_br_account` instalado sem erro
- [ ] Instalação concluída

### Etapa 3 - Fiscal
- [ ] `l10n_br_fiscal` instalado sem erro
- [ ] Menu "Fiscal" apareceu
- [ ] Instalação concluída

### Etapa 4 - Estoque
- [ ] `l10n_br_stock` instalado sem erro
- [ ] Instalação concluída

### Etapa 5 - Certificado
- [ ] `l10n_br_fiscal_certificate` instalado sem erro
- [ ] Menu "Certificados" apareceu em Fiscal
- [ ] Instalação concluída

### Etapa 6 - Documentos Eletrônicos
- [ ] `l10n_br_eletronic_document` instalado sem erro
- [ ] Instalação concluída

### Etapa 7 - NF-e
- [ ] `l10n_br_nfe` instalado sem erro
- [ ] Opções de NF-e aparecem
- [ ] Instalação concluída

### Etapa 8 - NFS-e
- [ ] `l10n_br_nfs` instalado sem erro
- [ ] Opções de NFS-e aparecem
- [ ] Instalação concluída

### Etapa 9 - Focus (quando necessário)
- [ ] `l10n_br_fiscal_focus` instalado sem erro
- [ ] Configurações Focus disponíveis
- [ ] Instalação concluída

## ✅ FASE 7: VALIDAÇÃO FUNCIONAL

### Menu Fiscal
- [ ] Menu "Fiscal" existe
- [ ] Submenu "Configuração" acessível
- [ ] Submenu "Documentos" acessível
- [ ] Submenu "Certificados" acessível

### Criação de Empresa Brasileira
- [ ] Consegue criar nova empresa
- [ ] Consegue definir CNPJ
- [ ] Consegue definir Inscrição Estadual
- [ ] Consegue definir regime tributário

### Certificado Digital
- [ ] Menu Certificados acessível
- [ ] Consegue criar novo certificado
- [ ] Formulário de upload aparece

### Documentos Fiscais
- [ ] Consegue criar documento fiscal
- [ ] Tipos de documento disponíveis
- [ ] Séries de documentos configuráveis

## ✅ FASE 8: TESTES BÁSICOS

- [ ] Sistema responde sem lentidão
- [ ] Nenhum erro JavaScript no console
- [ ] Nenhum erro 500 nas requisições
- [ ] Menus carregam normalmente
- [ ] Formulários funcionam

## ⚠️ REGISTRO DE PROBLEMAS

### Problemas Encontrados:
1. ___________________________________________
   - Solução: ___________________________________

2. ___________________________________________
   - Solução: ___________________________________

3. ___________________________________________
   - Solução: ___________________________________

## 📊 RESULTADO FINAL

- **Data da instalação:** ___/___/______
- **Tempo total:** ______ minutos
- **Status final:** [ ] Sucesso [ ] Com problemas [ ] Falhou
- **Notas adicionais:**
  _________________________________________________
  _________________________________________________
  _________________________________________________

## 📞 PRÓXIMOS PASSOS

Após validação completa:
1. [ ] Configurar empresa principal
2. [ ] Importar certificado A1 de produção
3. [ ] Configurar séries de documentos
4. [ ] Integrar com Focus NFe
5. [ ] Realizar emissão de teste em homologação
6. [ ] Emitir primeira NF-e real

---

**Responsável pela instalação:** ___________________
**Data:** ___/___/______
**Assinatura:** ___________________
