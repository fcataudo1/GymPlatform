create schema GymPlatform;
use GymPlatform;

create table accountuser (
    username varchar(50) PRIMARY KEY NOT NULL,
    nome varchar(50) NOT NULL,
    cognome varchar(50) NOT NULL,
    passw varchar(50) NOT NULL,
    telefono varchar(20) NOT NULL,
    genere varchar(19) NOT NULL,
    datanascita date,
    indirizzo varchar(50) NOT NULL,
    email varchar(50) NOT NULL
);

create table istruttore (
    username varchar(50) NOT NULL,
    orelavoro int NOT NULL,
    certificazione varchar(50) NOT NULL,
    PRIMARY KEY(username),
    FOREIGN KEY (username) REFERENCES accountuser(username) ON UPDATE cascade ON DELETE cascade
);

create table programmanutrizionale (
    id int PRIMARY KEY NOT NULL,
    pianoali varchar(100) NOT NULL,
    obiettivo varchar(100) NOT NULL
);

create table cliente (
    username varchar(50) NOT NULL,
    idProgrammanutrizionale int NOT NULL,
    altezza int NOT NULL,
    peso int NOT NULL,
	PRIMARY KEY(username),
    FOREIGN KEY (username) REFERENCES accountuser(username) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY (idprogrammanutrizionale) REFERENCES programmanutrizionale(id) ON UPDATE cascade ON DELETE cascade
);

create table messaggioinchat (
    codice int PRIMARY KEY NOT NULL,
    username varchar(50) NOT NULL,
    argomento varchar(100) NOT NULL,
    orarioinvio datetime,
    contenuto text NOT NULL,
    FOREIGN KEY (username) REFERENCES accountuser(username) ON UPDATE cascade ON DELETE cascade
);


create table schedaallenamento (
    codice int PRIMARY KEY NOT NULL,
    tipologia varchar(100) NOT NULL,
    usernameistruttore varchar(50) NOT NULL,
    FOREIGN KEY (usernameistruttore) REFERENCES istruttore(username) ON UPDATE cascade ON DELETE cascade
);


create table esercizio (
    codice int PRIMARY KEY NOT NULL,
    codiceschedaallenamento int NOT NULL,
    nome varchar(100) NOT NULL,
    FOREIGN KEY (codiceschedaallenamento) REFERENCES schedaallenamento(codice) ON UPDATE cascade ON DELETE cascade
);



create table abbonamento (
	usernamecliente varchar(50),
    id int NOT NULL,
    tipo varchar(100) NOT NULL,
    tariffa decimal(10, 2) NOT NULL,
    PRIMARY KEY(usernamecliente, id),
    FOREIGN KEY (usernamecliente) REFERENCES cliente(username) ON UPDATE cascade ON DELETE cascade
);


create table attrezzatura (
    codiceserie int PRIMARY KEY NOT NULL,
    tipo varchar(100) NOT NULL,
    stato varchar(50) NOT NULL,
    quantità int NOT NULL,
    nome varchar(100) NOT NULL
);


create table corso (
	nome varchar(100) PRIMARY KEY NOT NULL,
    descrizione text NOT NULL,
    usernameistruttore varchar(50) NOT NULL,
    FOREIGN KEY (usernameistruttore) REFERENCES istruttore(username)ON UPDATE cascade ON DELETE cascade
);


create table utilizza (
    usernamecliente varchar(50) NOT NULL,
    codiceserieattrezzatura int NOT NULL,
	PRIMARY KEY (usernamecliente, codiceserieattrezzatura),
    FOREIGN KEY (codiceserieattrezzatura) REFERENCES attrezzatura(codiceserie) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY (usernamecliente) REFERENCES cliente(username) ON UPDATE cascade ON DELETE cascade
    
);