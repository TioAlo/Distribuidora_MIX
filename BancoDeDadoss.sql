SELECT * FROM distribuidora_mix.produtos;
ALTER TABLE produtos ADD COLUMN subtipo VARCHAR(100) AFTER tipo_produto;
DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    tipo_produto VARCHAR(50) NOT NULL,
    subtipo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    valor_medida DECIMAL(10,2) NOT NULL,
    unidade_medida VARCHAR(10) NOT NULL,
    estoque INT NOT NULL,
    descricao TEXT,
    imagem VARCHAR(255),
    destaque BOOLEAN DEFAULT FALSE
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    rua VARCHAR(150) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL, -- Recomenda-se usar Hash no futuro
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);