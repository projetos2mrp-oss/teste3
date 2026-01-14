# Projeto Odoo 16.0 Community - MRP (Skysize)

## 📋 Sobre o Projeto
Sistema ERP Odoo 16.0 Community Edition com módulos OCA (Odoo Community Association) para localização brasileira completa.

## 🏢 Ambiente
- **Plataforma:** Skysize
- **Versão Odoo:** 16.0 Community
- **Localização:** Brasil (NF-e, NFS-e)

## 📦 Módulos OCA Instalados

### Localização Brasileira (l10n-brazil)
Módulos fiscais e contábeis para operação no Brasil:
- NF-e (Nota Fiscal Eletrônica)
- NFS-e (Nota Fiscal de Serviço Eletrônica)
- SPED Fiscal
- Contabilidade brasileira
- Certificados digitais A1

### Ferramentas do Servidor (server-tools)
Utilitários e melhorias para o servidor Odoo

### Interface Web (web)
Melhorias e widgets para interface do usuário

### Ferramentas Financeiras (account-financial-tools)
Recursos avançados para gestão financeira

### Sistema de Filas (queue)
Processamento assíncrono (necessário para NF-e)

## 🚀 Instalação

Consulte o arquivo [INSTALACAO_OCA.md](INSTALACAO_OCA.md) para instruções detalhadas.

## 📂 Estrutura do Projeto

```
teste3/
├── odoo/
│   ├── addons/                          # Módulos customizados
│   ├── oca_addons/                      # Módulos OCA (submodules)
│   │   ├── l10n-brazil/                # Localização BR
│   │   ├── server-tools/               # Ferramentas
│   │   ├── web/                        # Interface
│   │   ├── account-financial-tools/    # Financeiro
│   │   └── queue/                      # Filas
│   └── odoo.conf                       # Configuração
├── .gitmodules                         # Configuração dos submodules
├── install_oca.sh                      # Script de instalação
├── INSTALACAO_OCA.md                   # Guia completo
└── README.md                           # Este arquivo
```

## 🔧 Configuração

O arquivo `odoo/odoo.conf` está pré-configurado para Skysize com:
- Addons path incluindo todos os módulos OCA
- Configurações de performance otimizadas
- Proxy mode habilitado
- Workers configurados

## 📖 Documentação

- [Guia de Instalação Completo](INSTALACAO_OCA.md)
- [OCA l10n-brazil](https://github.com/OCA/l10n-brazil)
- [Documentação Odoo](https://www.odoo.com/documentation/16.0/)

## ⚙️ Configurações Importantes

### Certificado Digital A1
Necessário para emissão de NF-e:
1. Obtenha certificado A1 (.pfx)
2. Importe em Fiscal → Certificados
3. Configure senha

### Integração Focus NFe
Para homologação e produção de NF-e:
1. Crie conta no Focus NFe
2. Configure API token
3. Instale módulo `l10n_br_fiscal_focus`

## 🐛 Solução de Problemas

### Módulos não aparecem
Verifique se o deploy foi concluído com sucesso na Skysize

### Erro ao instalar módulo
Verifique a ordem de instalação no guia

### Erro de dependência
Instale módulos na ordem especificada

## 📞 Suporte

Para questões técnicas:
- Abra uma issue neste repositório
- Consulte logs da Skysize
- Verifique documentação OCA

## 📄 Licença

Este projeto utiliza módulos sob licença AGPL-3.0 (OCA)

## 🤝 Contribuindo

Para contribuir com o projeto:
1. Fork o repositório
2. Crie uma branch para sua feature
3. Commit suas mudanças
4. Push para a branch
5. Abra um Pull Request

---

**Última atualização:** 2026-01-14
