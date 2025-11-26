CREATE TABLE Autor (
    IdAutor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Editora (
    IdEditora INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Livro (
    IdLivro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(200) NOT NULL,
    AnoPublicacao INT NOT NULL,
    IdAutor INT NOT NULL,
    IdEditora INT NOT NULL,
    FOREIGN KEY (IdAutor) REFERENCES Autor(IdAutor),
    FOREIGN KEY (IdEditora) REFERENCES Editora(IdEditora)
);

CREATE TABLE Usuario (
    IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE Emprestimo (
    IdEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    IdLivro INT NOT NULL,
    DataEmprestimo DATE NOT NULL,
    DataDevolucao DATE,
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    FOREIGN KEY (IdLivro) REFERENCES Livro(IdLivro)
);

CREATE TABLE Multa (
    IdMulta INT PRIMARY KEY AUTO_INCREMENT,
    IdEmprestimo INT NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    DataPagamento DATE,
    FOREIGN KEY (IdEmprestimo) REFERENCES Emprestimo(IdEmprestimo)
);
