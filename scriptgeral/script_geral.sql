create database if not exists Escola;
use Escola;

CREATE TABLE IF NOT EXISTS Estudantes (
    estudante_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(150),
    cpf VARCHAR(11),
    data_nascimento DATE,
    telefone VARCHAR(14),
    email VARCHAR(150)
);

create table if not exists Facilitadores(
	facilitador_id int not null primary key auto_increment,
    nome varchar(150),
    cpf varchar(11),
    data_nascimento date,
    telefone varchar(14),
    email varchar(150),
    area varchar(20)
);

create table if not exists Cursos (
	curso_id int not null primary key auto_increment,
    nome varchar(150)
);

CREATE TABLE IF NOT EXISTS Modulos (
    modulo_id INT not null primary key auto_increment,
    nome VARCHAR(150),
    qtd_aulas INT,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES Cursos (curso_id)
);

CREATE TABLE IF NOT EXISTS Materias (
    materia_id INT not null primary key auto_increment,
    nome VARCHAR(150),
    modulo_id INT,
    FOREIGN KEY (modulo_id)
        REFERENCES Modulos (modulo_id),
    facilitador_id INT,
    FOREIGN KEY (facilitador_id)
        REFERENCES Facilitadores (facilitador_id)
);

create table if not exists Turmas (
	turma_id int not null primary key auto_increment,
    facilitador_id int,
    foreign key (facilitador_id) references Facilitadores(facilitador_id),
    curso_id int,
    foreign key (curso_id) references Cursos(curso_id)
);

CREATE TABLE IF NOT EXISTS Historicos (
    historico_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    aprovacao BOOLEAN,
    turma_id INT,
    desistencia BOOLEAN,
    foreign key (turma_id) references Turmas(turma_id),
	estudante_id INT,
    FOREIGN KEY (estudante_id) REFERENCES Estudantes (estudante_id)
);

create table if not exists Turmas_Alunos (
	turma_aluno int not null primary key auto_increment,
    turma_id int,
    foreign key (turma_id) references Turmas(turma_id),
    estudante_id int,
    foreign key (estudante_id) references Estudantes(estudante_id)
);