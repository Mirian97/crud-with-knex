CREATE DATABASE database-marketplace;

DROP TABLE IF EXISTS produtos;

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios (
	id SERIAL PRIMARY KEY,
  	nome TEXT NOT NULL,
  	nome_loja TEXT NOT NULL,
  	email TEXT NOT NULL UNIQUE,
  	senha TEXT NOT NULL
);

CREATE TABLE produtos (
	id SERIAL PRIMARY KEY,
  	usuario_id INTEGER NOT NULL,
  	nome TEXT NOT NULL,
  	estoque INTEGER NOT NULL,
  	preco INTEGER NOT NULL,
  	categoria TEXT,
  	descricao TEXT,
  	imagem TEXT,
  	FOREIGN key (usuario_id) REFERENCES usuarios (id)
);