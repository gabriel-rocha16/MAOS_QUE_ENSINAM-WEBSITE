👐 WEBSITE: Mãos que Ensinam

O Mãos que Ensinam é uma plataforma de gestão de cursos desenvolvida com foco em performance e modernidade, utilizando a stack mais recente do ecossistema Ruby em 2026.
🛠️ Tecnologias Principais

    Linguagem: Ruby 4.0.2

    Framework: Rails 8.1.3

    Banco de Dados: PostgreSQL 16+

    CSS: Tailwind CSS (nativo via Rails 8)

🚀 Como Preparar o Ambiente

Para que o projeto rode perfeitamente, siga os passos abaixo de acordo com o seu sistema operacional.
1. Pré-requisitos

    Linux (Zorin/Ubuntu): Ter rbenv ou rvm instalado.

    Windows: Obrigatório o uso de WSL2 com Ubuntu. Rodar Ruby diretamente no Windows não é recomendado para este projeto.

    Banco de Dados: Ter o PostgreSQL instalado e o serviço rodando.

2. Configuração Inicial (O pulo do gato)

O projeto utiliza variáveis de ambiente para proteger suas senhas pessoais.

    Clone o repositório:
    Bash

    git clone https://github.com/seu-usuario/maos-que-ensinam.git
    cd maos-que-ensinam

    Rode o Setup Automático:
    Executamos um script que instala as bibliotecas e prepara o banco de dados:
    Bash

    bin/setup

3. "Deu erro de conexão com o banco?"

Se o comando acima falhar no passo de Preparing database, não entre em pânico!

    O script criou um arquivo chamado .env na raiz do seu projeto.

    Abra esse arquivo e coloque o seu usuário e a sua senha do PostgreSQL:
    Plaintext

    DB_USER=seu_usuario_aqui
    DB_PASSWORD=sua_senha_aqui

    Salve o arquivo e rode bin/setup novamente.

🏗️ Estrutura de Desenvolvimento
Comandos Essenciais
Comando	O que faz
bin/dev	Inicia o servidor e compila o CSS em tempo real
bin/rails c	Abre o console interativo para testar códigos Ruby
bin/rails db:migrate	Aplica novas alterações no banco de dados
bundle install	Instala novas Gems (bibliotecas) adicionadas
🤝 Regras de Colaboração

    Proteção de Segredos: Nunca remova o arquivo .env do .gitignore. Senhas pessoais nunca devem ir para o GitHub.

    Novas Features: Sempre crie uma branch nova para suas alterações:
    git checkout -b feat/nome-da-funcionalidade

    Documentação: Se adicionar uma Gem nova, atualize o README se for necessário configurar algo extra.

👥 Equipe


💡 Dica de Ouro

Sempre que baixar atualizações do GitHub (git pull), rode o bundle install e bin/rails db:migrate para garantir que sua máquina está em dia com o que os outros fizeram.