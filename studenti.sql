CREATE TABLE studenti (								#crea tebella
  ids int(11) NOT NULL AUTO_INCREMENT,
  cognome varchar(25) NOT NULL,
  nome varchar(25) NOT NULL,
  classe varchar(10),
  matricola varchar(6) not null unique,  
  data_di_nascita date NOT NULL,
  PRIMARY KEY (ids)
);

CREATE TABLE voti (
  idv int(11) NOT NULL AUTO_INCREMENT,
  voto int(11) NOT NULL,
  data date NOT NULL,
  id_studente int(11) NOT NULL,
  PRIMARY KEY (idv),
  FOREIGN KEY (id_studente) REFERENCES studenti(ids)
);

INSERT INTO studenti VALUES 													#inserisco studenti
(1,'Sponstantin','Lorenzo','5BI','17001','2001-10-09'),
(2,'Versi','Irta','5BI','17005','2001-10-07'),
(3,'Marchigin','Antonio',NULL,'16998','2001-10-09'),
(4,'Negri','Luigi','5BI','18001','2001-10-07');


INSERT INTO voti VALUES #inserisco i voti (comando per 1 voto)
(2,8,'2020-10-09',2);


SELECT  nome,cognome,classe,data,voto FROM  studenti, voti WHERE studenti.ids=voti.idv






