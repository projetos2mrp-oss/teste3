# 🚀 GUIA RÁPIDO DE EXECUÇÃO

## 📥 1. BAIXE O PACOTE
Baixe o arquivo `teste3-oca-setup.tar.gz` que contém todos os arquivos necessários.

## 📦 2. EXTRAIA NO SEU REPOSITÓRIO

### No Windows:
1. Extraia o arquivo `.tar.gz` usando 7-Zip ou WinRAR
2. Copie todos os arquivos para a pasta do seu repositório `teste3`

### No Linux/Mac:
```bash
cd teste3
tar -xzf /caminho/para/teste3-oca-setup.tar.gz
```

## ⚡ 3. EXECUTE O SCRIPT (3 COMANDOS)

```bash
# Tornar o script executável
chmod +x install_oca.sh

# Executar instalação dos módulos OCA
./install_oca.sh

# Commit e push
git add .
git commit -m "Add OCA modules and configuration for Odoo 16.0"
git push origin main
```

## 🚀 4. DEPLOY NA SKYSIZE

1. Acesse: https://skysize.dev (ou sua URL)
2. Abra seu projeto
3. Vá em **Deployments**
4. Clique em **Deploy**
5. Aguarde conclusão (~5-10 minutos)

## ✅ 5. ATIVE OS MÓDULOS NO ODOO

**Ordem exata de instalação:**

1. `l10n_br_base`
2. `l10n_br_account`
3. `l10n_br_fiscal`
4. `l10n_br_stock`
5. `l10n_br_fiscal_certificate`
6. `l10n_br_eletronic_document`
7. `l10n_br_nfe`
8. `l10n_br_nfs`
9. `l10n_br_fiscal_focus` (quando for emitir)

## 📋 ARQUIVOS INCLUÍDOS

- `odoo/odoo.conf` - Configuração otimizada para Skysize
- `.gitmodules` - Configuração dos submodules OCA
- `install_oca.sh` - Script automático de instalação
- `README.md` - Documentação do projeto
- `INSTALACAO_OCA.md` - Guia completo passo a passo
- `CHECKLIST_VALIDACAO.md` - Checklist de validação

## ⚠️ ATENÇÃO

- NÃO pule a ordem de instalação dos módulos
- NÃO instale módulos Enterprise com OCA
- AGUARDE cada módulo instalar completamente

## 📞 PROBLEMAS?

Use o arquivo `CHECKLIST_VALIDACAO.md` para identificar em qual etapa ocorreu o erro.

---

**Tempo estimado total:** 30-45 minutos
**Dificuldade:** Média
