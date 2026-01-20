📦 Distribuidora Mix - Sistema de Gestão de Bebidas
Sistema web completo para venda e gerenciamento de estoque de distribuidoras, focado em performance e facilidade de uso para o administrador.

🚀 Funcionalidades Principais
🛒 Área do Cliente
Catálogo Dinâmico: Listagem de produtos integrada ao banco de dados MySQL.

Carrinho Interativo: Adição de itens com seleção de quantidade via popup.

Carrinho Flutuante: Resumo de pedidos sempre acessível com contador em tempo real.

Emissão de Nota Fiscal: Geração automática de NF em estilo ERP após a finalização da compra.

⚙️ Painel Administrativo (SPA)
Gestão de Estoque: Cadastro, edição e exclusão de produtos sem recarregar a página (AJAX).

Upload de Imagens: Atualização de fotos de produtos com limpeza automática de arquivos órfãos.

Sistema de Destaques: Controle de quais itens aparecem na vitrine principal com um clique.

Filtros Avançados: Busca inteligente por nome e categoria.

🛠️ Tecnologias Utilizadas
O projeto foi construído utilizando as seguintes tecnologias:

Linguagem: Java (JSP/Servlets)

Banco de Dados: MySQL 8.0

Front-end: HTML5, CSS3, JavaScript (ES6+), Bootstrap 3.x

Comunicação: AJAX (Fetch API) para operações assíncronas no Admin.

📋 Pré-requisitos
Antes de começar, você vai precisar ter instalado:

JDK 8+

Apache Tomcat 9.0+



🔧 Configuração e Instalação
Clone o repositório:

Bash

git clone https://github.com/seu-usuario/distribuidora-mix.git
Configure o Banco de Dados: Importe o script SQL disponível em /database/schema.sql ou crie a tabela:

SQL

CREATE DATABASE distribuidora_mix;
USE distribuidora_mix;
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    marca VARCHAR(50),
    tipo_produto VARCHAR(50),
    imagem VARCHAR(255),
    destaque INT DEFAULT 0
);
Configure a conexão: No arquivo ListarProdutos.jsp e AcoesProduto.jsp, ajuste as credenciais do MySQL:

Java

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/distribuidora_mix", "root", "SUA_SENHA");
Deploy: Mova a pasta do projeto para o diretório webapps do seu Tomcat e inicie o servidor.

📸 Demonstração do Fluxo de Venda
🤝 Contribuição
Faça um Fork do projeto.

Crie uma Branch para sua Feature (git checkout -b feature/NovaFeature).

Faça o Commit das alterações (git commit -m 'Adicionando nova funcionalidade').

Faça o Push para a Branch (git push origin feature/NovaFeature).

Abra um Pull Request.

🟢 Funcionalidades Finalizadas (Recentemente)
Gestão de Imagens Inteligente: Implementada a lógica de substituição de arquivos. Ao atualizar a foto de um produto, o sistema identifica a imagem antiga e a remove fisicamente do servidor, economizando espaço em disco.

Controle Sequencial: Adicionada numeração de sequência (1, 2, 3...) na listagem administrativa para facilitar a contagem rápida de itens em tela, independente do ID do banco de dados.

Navegação Rápida: Botões de atalho integrados para alternar instantaneamente entre a visão do cliente (Index) e o Dashboard administrativo.

Simulador de Nota Fiscal ERP: Módulo de geração de NF com layout profissional (estilo list-group) que consolida os dados do carrinho e do cliente em um documento pronto para impressão.

🛠️ O que pode ser melhorado (Backlog)
Como todo projeto de software vivo, aqui estão as sugestões de melhorias para as próximas versões:

Persistência de Vendas: Criar uma tabela pedidos e itens_pedido para que, ao gerar a Nota Fiscal, os dados sejam gravados permanentemente no banco de dados para relatórios futuros.

Dashboard com Gráficos: Integrar a biblioteca Chart.js para exibir um gráfico de "Produtos Mais Vendidos" ou "Faturamento por Categoria".

Sistema de Login Seguro: Implementar filtros de sessão (Filters) para garantir que apenas administradores autenticados possam acessar o arquivo AcoesProduto.jsp.

Preview de Imagem em Tempo Real: Adicionar um script no modal para que, ao selecionar uma nova foto, o usuário veja uma prévia da imagem antes de clicar em salvar.

Notificações Toast: Substituir os alert() padrões do navegador por notificações mais modernas e elegantes (como o SweetAlert2).

🏗️ Arquitetura do Sistema
O diagrama abaixo resume como o usuário interage com o sistema e como os dados fluem entre o navegador e o servidor Java:

Como usar este README
Salve este conteúdo em um arquivo chamado README.md na raiz do seu projeto.

Se estiver usando o GitHub, essas seções aparecerão formatadas automaticamente com títulos e listas.

📝 Licença
Este projeto foi desenvolvido para fins acadêmicos (SENAC). Sinta-se à vontade para usar e estudar!

Desenvolvido com ❤️ por ALO e GEMINI
