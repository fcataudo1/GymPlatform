-- Inserimento dati di esempio per la tabella AccountUser
INSERT INTO accountuser (username, nome, cognome, passw, telefono, genere, dataNascita, indirizzo, email)
VALUES 
('utente1', 'Mario', 'Rossi', 'password123', '1234567890', 'Uomo', '1990-05-15', 'Via Roma 1', 'mario@email.com'),
('utente2', 'Giulia', 'Bianchi', 'pass123', '0987654321', 'Donna', '1988-12-10', 'Via Milano 5', 'giulia@email.com'),
('utente3', 'Laura', 'Verdi', 'pswLaura', '3456789012', 'Donna', '1995-08-25', 'Via Garibaldi 12', 'laura@email.com'),
('utente4', 'Luca', 'Gialli', 'lucaPass123', '6789012345', 'Uomo', '1992-03-17', 'Corso Italia 8', 'luca@email.com');

-- Inserimento dati di esempio per la tabella Istruttore 
INSERT INTO istruttore (username, oreLavoro, certificazione)
VALUES 
('utente1', 8, 'Certificazione di Personal Trainer'),
('utente3', 6, 'Certificazione in Yoga');

-- Inserimento dati di esempio per la tabella Programmanutrizionale
INSERT INTO programmanutrizionale (id, pianoAli, obiettivo)
VALUES 
(1, 'Perdita peso', 'Perdere 5 kg in 2 mesi'),
(2, 'Aumento massa muscolare', 'Aumentare muscoli con dieta specifica');

-- Inserimento dati di esempio per la tabella Cliente
INSERT INTO cliente (username, altezza, peso, idprogrammanutrizionale)
VALUES 
('utente2', 175, 70, 1),
('utente4', 165, 65, 2);

INSERT INTO messaggioinchat (codice, username, argomento, orarioinvio, contenuto)
VALUES 
(1, 'utente2', 'allenamento', '2023-12-08 10:00:00', 'Cosa consigliate per migliorare la resistenza?'),
(2, 'utente4', 'nutrizione', '2023-12-08 11:30:00', 'Quali sono gli alimenti migliori per aumentare la massa muscolare?');

-- Inserimento dati di esempio per la tabella Schedaallenamento
INSERT INTO schedaallenamento (codice, tipologia, usernameistruttore)
VALUES 
(1, 'Forza', 'utente1'),
(2, 'Cardio', 'utente3');

-- Inserimento dati di esempio per la tabella Esercizio
INSERT INTO esercizio (codice, codiceschedaallenamento, nome)
VALUES 
(1, 1, 'Panca piana'),
(2, 1, 'Squat'),
(3, 2, 'Corsa su tapis roulant'),
(4, 2, 'Cyclette');



-- Inserimento dati di esempio per la tabella Abbonamento
INSERT INTO abbonamento (id, tipo, tariffa, usernamecliente)
VALUES 
(1, 'Mensile', 50.00, 'utente2'),
(2, 'Trimestrale', 120.00, 'utente4');

-- Inserimento dati di esempio per la tabella Attrezzatura
INSERT INTO attrezzatura (codiceserie, tipo, stato, quantità, nome)
VALUES 
(1, 'Pesi', 'Disponibile', 3, 'Panca inclinata'),
(2, 'Cardio', 'In manutenzione', 2, 'Tapis roulant');

-- Inserimento dati di esempio per la tabella Corso
INSERT INTO corso (nome, descrizione, usernameistruttore)
VALUES 
('Yoga Flow', 'Corso di yoga dinamico e fluido adatto a tutti i livelli.', 'utente3'),
('Total Body Workout', 'Corso ad alta intensità che coinvolge tutti i gruppi muscolari.', 'utente1');

-- Inserimento dati di esempio per la tabella Utilizza
INSERT INTO utilizza (usernamecliente, codiceserieAttrezzatura)
VALUES 
('utente2', 1),
('utente4', 2);
