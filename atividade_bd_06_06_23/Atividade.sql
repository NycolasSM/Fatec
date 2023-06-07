DROP DATABASE ecovision;

CREATE DATABASE ecovision;

USE ecovision;

CREATE TABLE usuario
(
	cpf_usuario VARCHAR (14) NOT NULL PRIMARY KEY,
    nome_usuario VARCHAR (100) NOT NULL,
    rua_usuario VARCHAR (100),
    bairro_usuario VARCHAR (100),
    numero_usuario INT (5),
    cep_usuario VARCHAR(9),
    data_nascimento DATE,
    celular_usuario VARCHAR (100),
    email_usuario VARCHAR (100),
    foto_usuario BLOB,
    senha_usuario VARCHAR (100) NOT NULL,
    usuario VARCHAR (100) NOT NULL
);

CREATE TABLE plantas_ornamentais
(
	nome_cientifico VARCHAR (200) NOT NULL PRIMARY KEY,
	nome_popular VARCHAR (100) NOT NULL,
	data_fim_florescimento DATE,
	data_inicio_florescimento DATE,
	idade_minima_florescimento INT (5),
    quantidade_agua_regacao FLOAT (10) NOT NULL,
    temperatura_ideal FLOAT (10),
    umidade_ideal FLOAT (10),
    foto_planta VARCHAR (300) NOT NULL,
    dicas_planta VARCHAR (1000),
    iluminacao_ideal FLOAT (10)
);

CREATE TABLE informacao
(
	id_informacao INT (5) NOT NULL PRIMARY KEY,
    umidade FLOAT (10) NOT NULL,
    temperatura_vaso FLOAT (10),
    reserva_agua FLOAT (10),
    data_minuto DATETIME,
    iluminacao FLOAT (10)
);

CREATE TABLE irrigacao
(
	id_irrigacao INT (5) NOT NULL,
    quantidade_irrigacao FLOAT (10),
    irrigacao BOOLEAN NOT NULL,
    tempo_irrigacao TIME,
    data_irrigacao DATE
);

CREATE TABLE bugs
(
	cod_bug INT (5) NOT NULL,
    descricao VARCHAR (300) NOT NULL,
    data_contato DATE NOT NULL,
    data_correcao DATE
);

CREATE TABLE produtos
(
	cod_produto INT (5) NOT NUll,
    nome_produto VARCHAR (100) NOT NUll,
    altura_produto FLOAT (10) NOT NUll,
    largura_produto FLOAT (10) NOT NUll,
    profundidade_produto FLOAT (10) NOT NUll,
    peso_produto FLOAT (10) NOT NUll,
    descricao_produto VARCHAR (300) NOT NUll,
    tipo_produto VARCHAR (50) NOT NUll,
    cor_produto VARCHAR (15) NOT NUll,
    valor_produto FLOAT (10) NOT NUll
);

CREATE TABLE minhas_plantas
(
	id_planta INT (5) NOT NULL PRIMARY KEY,
	nome_cientifico VARCHAR (200) NOT NULL,
	data_nascimento_planta DATE NOT NULL,
	fk_usuario_cpf VARCHAR (14) NOT NULL,
	nome_planta VARCHAR (100),
    cor_planta VARCHAR (50),
    florescer_inicio DATE,
    florescer_fim DATE,
    fk_plantas_ornamentais_nome_cientifico VARCHAR (200) NOT NULL,
	CONSTRAINT fk_usuario_cpf FOREIGN KEY (fk_usuario_cpf) REFERENCES usuario (cpf_usuario),
	CONSTRAINT fk_plantas_ornamentais_nome_cientifico FOREIGN KEY (fk_plantas_ornamentais_nome_cientifico) REFERENCES plantas_ornamentais (nome_cientifico)
);

CREATE TABLE compra
(
	id_compra INT (5) NOT NULL PRIMARY KEY,
    data_compra_inicio DATETIME NOT NULL,
	data_entrega DATETIME,
    forma_pagamento VARCHAR (50) NOT NULL,
    fk_usuario_cpf VARCHAR (14) NOT NULL,
	CONSTRAINT fk_usuario_cpf FOREIGN KEY (fk_usuario_cpf) REFERENCES usuario (cpf_usuario)
);

CREATE TABLE historico
(
	fk_minhas_plantas_id_planta INT (5) NOT NULL,
    fk_irrigacao_id_irrigacao INT (5) NOT NULL,
    fk_informacao_id_informacoes INT (5),
    id_historico INT (5) PRIMARY KEY,
	CONSTRAINT fk_minhas_plantas_id_planta FOREIGN KEY (fk_minhas_plantas_id_planta) REFERENCES minhas_plantas (id_planta),
	CONSTRAINT fk_irrigacao_id_irrigacao FOREIGN KEY (fk_irrigacao_id_irrigacao) REFERENCES irrigacao (id_irrigacao),
	CONSTRAINT fk_informacao_id_informacoes FOREIGN KEY (fk_informacao_id_informacoes) REFERENCES informacao (id_informacao)
);

CREATE TABLE interacao
(
	id_interacao INT (5) NOT NULL PRIMARY KEY,
    fk_bugs_cod INT (5) NOT NULL,
    fk_usuario_cpf VARCHAR (14) NOT NULL,
	CONSTRAINT fk_usuario_cpf FOREIGN KEY (fk_usuario_cpf) REFERENCES usuario (cpf_usuario),
	CONSTRAINT fk_bugs_cod FOREIGN KEY (fk_bugs_cod) REFERENCES bugs (cod_bug)
);

CREATE TABLE produtos_vendido
(
	id_produto_vendido INT (5) NOT NULL PRIMARY KEY,
    fk_produtos_cod_produto INT (5) NOT NULL,
    quantidade_produto INT (5),
    valor_produto FLOAT (10),
	nome_produto_vendido FLOAT (10),
    total_produto_vendido FLOAT (10),
    fk_compra_id INT (5) NOT NULL,
	CONSTRAINT fk_compra_id FOREIGN KEY (fk_compra_id) REFERENCES compra (id_compra)
);

CREATE TABLE valor_total
(
	fk_compra_id INT (5) NOT NUll,
    fk_produto_vendido INT (5) NOT NULL,
    id_valor FLOAT (10) NOT NULL PRIMARY KEY,
    valor_total FLOAT (10) NOT NULL,
	CONSTRAINT fk_compra_id FOREIGN KEY (fk_compra_id) REFERENCES compra (id_compra),
	CONSTRAINT fk_produto_vendido FOREIGN KEY (fk_produto_vendido) REFERENCES produtos_vendido (id_produto_vendido)
);
