CREATE TABLE empresa (
    id        			bigint PRIMARY KEY,
    cnpj       			varchar(20) NOT NULL,
    data_atualizacao	timestamp without time zone NOT NULL,
    data_criacao  		timestamp without time zone NOT NULL,
    razao_social        varchar(255)
);

CREATE TABLE funcionario (
    id        				bigint PRIMARY KEY,
    cpf       				varchar(20) NOT NULL,
    data_atualizacao		timestamp without time zone NOT NULL,
    data_criacao  			timestamp without time zone NOT NULL,
    email        			varchar(255) NOT NULL,
    nome        			varchar(255) NOT NULL,
    perfil        			varchar(255) NOT NULL,
    qtd_horas_almoco        			numeric(10,2) NOT NULL,
    qtd_horas_trabalho_dia        			numeric(10,2) NOT NULL,
    senha        			varchar(255) NOT NULL,
    valor_hora        			numeric(10,2) NOT NULL,
    empresa_id        			bigint NOT NULL references empresa (id)
);

CREATE TABLE lancamento (
    id        				bigint PRIMARY KEY,
    data       				timestamp without time zone NOT NULL,
    data_atualizacao		timestamp without time zone NOT NULL,
    data_criacao  			timestamp without time zone NOT NULL,
    descricao        	varchar(255) NOT NULL,
    localizacao        	varchar(255) NOT NULL,
    tipo        	varchar(255) NOT NULL,
    funcionario_id        	bigint NOT NULL references funcionario(id)
);

