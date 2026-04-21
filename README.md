# 👐 Mãos que Ensinam

**Missão:** Uma plataforma web de educação inclusiva, projetada para quebrar barreiras e conectar conhecimento a quem mais precisa. O projeto oferece vitrines de cursos voltados para impacto social, com acessibilidade e suporte de dashboards dinâmicos.

---

## 🛠 Stack Técnica

- **Ruby on Rails 8.1.3** - Motor e orquestração do backend
- **PostgreSQL 16+** - Banco de dados relacional robusto
- **Tailwind CSS v4** - Estilização inteligente e baseada em utilitários
- **Devise** - Autenticação segura

---

## 🚀 Funcionalidades Core

✅ **Login Híbrido (CPF/E-mail):** Os usuários podem acessar a plataforma utilizando tanto o seu CPF (com validação real usando a gem `cpf_cnpj`) quanto o E-mail de cadastro.  
✅ **Separação Inteligente de Perfis:** Modelagem limpa com associações (1:1) separando `Candidato`, `Instrutor` e `Gestor`. Cada perfil acessa apenas o que deve.  
✅ **Sistema de Matrículas e Cursos:** Vitrine de cursos com fluxo de inscrição (`Matricula`), status de publicação e reprodutor de vídeos embutido.  

---

## 🔒 Arquitetura de Segurança e Gatekeeping

A aplicação foi rigorosamente trancada. Nenhuma rota é exposta publicamente a não ser que tenha sido declarada no Controller como uma exceção segura (`skip_before_action`).

- **Rotas Públicas:** Landing Page (`/`), Sobre, Contato e Login/Cadastro.
- **Vitrine de Cursos:** Disponível apenas para usuários autenticados (qualquer nível).
- **Dashboard Aluno:** Restrito a usuários com perfil associado de Candidato.
- **Dashboard Admin:** Restrito a usuários com perfil de Gestor.
- **Criação/Edição de Cursos:** Apenas Instrutores donos dos seus cursos ou o próprio Administrador podem gerenciar esse conteúdo.

---

## ⚙️ Guia de Instalação

1. Clone o repositório em sua máquina:
```bash
git clone https://github.com/gabriel-rocha16/M-os-que-ensinam-WEBSITE.git
cd M-os-que-ensinam-WEBSITE
```

2. Instale as dependências Ruby:
```bash
bundle install
```

3. Configure o Banco de Dados, rode as migrações e popule o projeto com as Seeds iniciais usando o super comando:
```bash
rails db:drop db:create db:migrate db:seed
```

4. Suba o servidor com o watcher do Tailwind rodando simultaneamente:
```bash
./bin/dev
```

Acesse no navegador: **http://localhost:3000**

---

## 🔑 Credenciais de Teste

Para facilitar o desenvolvimento inicial, o comando de `db:seed` já popula o banco de dados e imprime no seu terminal o CPF dinâmico gerado. Mas, graças ao login híbrido, você pode acessar usando os e-mails:

| Perfil | E-mail de Acesso | Senha |
| --- | --- | --- |
| **Admin Gestor** | `admin@maos.com` | `password123` |
| **Candidato 1** | `joao@teste.com` | `password123` |
| **Candidato 2** | `maria@teste.com` | `password123` |

*(O seed também gera Cursos teste para você visualizar a vitrine logo de cara!)*