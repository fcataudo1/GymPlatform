-- Operazione 1
INSERT INTO accountuser(username, nome, cognome, passw, telefono, genere, dataNascita, indirizzo, email)
VALUES
	(
        ? , ? , ? , ? , ? , ? ,  ? , ? , ?  
    ); 
-- Inserire anche :
INSERT INTO istruttore(username, oreLavoro, certificazione)    
VALUES 
(
 ? , ? , ?
);
-- entrambi o non 
INSERT INTO Cliente(username, altezza, peso, idprogrammanutrizionale) 
VALUES 
( 
? , ? , ? , ?
);


-- Operazione 2
INSERT INTO messaggioinchat(codice, username, argomento, orarioinvio, contenuto)               
VALUES(
 ? , ? , ? , ? , ? , ?
   );


-- Operazione 3
INSERT INTO schedaallenamento(codice, esercizi, tipologia)  
VALUES
(
? , ? , ?
);

-- Inserire anche

INSERT INTO esercizio(codice, codiceschedaallenamento, nome)  
VALUES
(
? , ? , ?
);

-- Operazione 4

INSERT INTO corso (nome, descrizione, usernameistruttore)  VALUES
(
? , ?, ?
);


-- Operazione 5


INSERT INTO attrezzatura (codiceserie, tipo, stato, quantità, nome)  
VALUES
(
? , ? , ? , ? , ?
);

-- Inserire anche

INSERT INTO utilizza (usernamecliente, codiceserieattrezzatura)  
VALUES
(
? , ? 
);

-- Operazione 6

INSERT INTO abbonamento (id, tipo, tariffa, usernamecliente)  
VALUES
(
? , ? , ? , ?
);

-- Operazione 7

INSERT INTO programmanutrizionale (id, pianoali, obiettivo)  
VALUES
(
      ? , ? , ?
);

-- Operazione 8

SELECT COUNT(*) as NumCorsi
FROM istruttore as i, corso as c
WHERE i.username=? AND i.username=c.usernameistruttore;

-- Operazione 9

SELECT SUM(a.tariffa) as TariffeTot
FROM cliente as c, abbonamento as a
WHERE c.username=a.usernamecliente;

-- Operazione 10
DELETE FROM attrezzatura
WHERE stato ='In manutenzione';

-- Operazione 11
use GymPlatform;
SELECT p.id
FROM programmanutrizionale as p
WHERE pianoali = 'Aumento massa muscolare';

-- Operazione 12

SELECT i.username
FROM istruttore as i
WHERE i.oreLavoro > 3
ORDER BY i.username DESC;

-- Operazione 13

SELECT m.contenuto, m.username
FROM messaggioinchat as m
WHERE m.contenuto LIKE '%?%';

-- Operazione 14

SELECT a.nome, a.tipo
FROM attrezzatura as a
WHERE a.codiceserie IN  (
  SELECT  u.codiceserieAttrezzatura
		  FROM utilizza as u
		  WHERE  u.usernamecliente IN (
				   	SELECT c.username
				   	FROM cliente as c
				 	WHERE  c.altezza= '?'
				           )
 		);

-- Operazione 15


SELECT  i.username
FROM     istruttore as i
WHERE  i.username IN  (
  SELECT c.usernameistruttore
  FROM corso as c
  );

-- Operazione 16


SELECT 	*
FROM 		abbonamento as a
WHERE		usernamecliente IN (
    		SELECT 	username
   		FROM 	accountuser as acc
  	  	WHERE 	genere = 'Donna'
);

-- Operazione 17

INSERT INTO utilizza (usernamecliente, codiceserieattrezzatura)
VALUES 
(
		? , ?
); 

-- Operazione 18

SELECT *
FROM messaggioinchat
WHERE argomento = 'allenamento'
ORDER BY orarioinvio;


