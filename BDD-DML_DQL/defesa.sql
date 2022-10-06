#Criação e abertura do banco de dados
CREATE DATABASE DEFESA;
USE DEFESA;

# Criação das tabelas
CREATE TABLE FORCA_ARMADA (
	ID_FORCA_ARMADA INTEGER AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    PRIMARY KEY (ID_FORCA_ARMADA) );

CREATE TABLE PATENTE (
    ID_PATENTE INTEGER AUTO_INCREMENT,
    NOME VARCHAR(40) NOT NULL,
	SIGLA VARCHAR(8) NOT NULL,
	TIPO CHAR(1) NOT NULL,
    PRIMARY KEY (ID_PATENTE),
    CHECK (TIPO="P" OR TIPO="G") );

CREATE TABLE FORCA_PATENTE (
	ID_FORCA_PATENTE INTEGER AUTO_INCREMENT,
	ID_FORCA_ARMADA INTEGER NOT NULL,
	ID_PATENTE INTEGER NOT NULL,
	PRIMARY KEY(ID_FORCA_PATENTE) );

# Aplicação das restrições de integridade referencial
ALTER TABLE FORCA_PATENTE
	ADD FOREIGN KEY(ID_FORCA_ARMADA) REFERENCES FORCA_ARMADA (ID_FORCA_ARMADA),
    ADD FOREIGN KEY(ID_PATENTE) REFERENCES PATENTE (ID_PATENTE);

# Populando o banco de dados

-- Inserindo registros na tabela FORCA_ARMADA
INSERT INTO FORCA_ARMADA (NOME)
      VALUES ("Marinha"),
             ("Exército"),
             ("Aeronáutica");

-- Inserindo registros na tabela FORCA_ARMADA

-- (Patentes do tipo POSTO) 
INSERT INTO PATENTE (NOME, SIGLA, TIPO)
       VALUES ("Almirante"                         , "Alte"    , "P"),
              ("Almirante de Esquadra"             , "Alte Esq", "p"),
              ("Vice-Almirante"                    , "V Alte"  , "P"),
              ("Contra-Almirante"                  , "C Alte"  , "P"),
              ("Capitão de Mar e Guerra"           , "CMG"     , "P"),
              ("Capitão de Mar e Guerra Intendente", "CGM (IM)", "P"),
              ("Capitão de Fragata"                , "CF"      , "P"),
              ("Capitão de Corveta"                , "CC"      , "P"),
              ("Capitão-Tenente"                   , "CT"      , "P"),
              ("1º Tenente"                        , "1º Ten"  , "P"),
              ("2º Tenente"                        , "2º Ten"  , "P"),
              ("Guarda-Marinha"                    , "GM"      , "P"),
              ("Marechal"                          , "Mar"     , "P"),              
              ("General de Exército"               , "Gen Ex"  , "P"),
              ("General de Divisa"                 , "Gen Div" , "P"),
              ("General de Brigada"                , "Gen Bda" , "P"),
              ("Coronel"                           , "Cel"     , "P"),
              ("Tenente-Coronel"                   , "Ten Cel" , "P"),
              ("Major"                             , "Maj"     , "P"),
              ("Capitão"                           , "Cap"     , "P"),
              ("Aspirante a Oficial"               , "Asp"     , "P"),             
              ("Marechal do Ar"                    , "Mar Ar"  , "P"),              
              ("Tenente-Brigadeiro"                , "Ten Brig", "P"),
              ("Major-Brigadeiro"                  , "Maj Brig", "P"),
              ("Brigadeiro"                        , "Brig"    , "P"),
              ("Aspirante"                         , "Asp"     , "P" );
              
-- (Patentes do tipo GRADUAÇÃO)               
INSERT INTO PATENTE (NOME, SIGLA, TIPO)
       VALUES ("Aspirante"                  , "Asp"  , "G"),              
              ("Suboficial"                 , "SO"   , "G"), 
              ("1º Sargento"                , "1º SG", "G"), 
              ("2º Sargento"                , "2º SG", "G"), 
              ("3º Sargento"                , "3º SG", "G"), 
              ("Cabo"                       , "CB"   , "G"), 
              ("Soldado (CFN)"              , "SD"   , "G"),            
              ("Marinheiro"                 , "MN"   , "G"),            
              ("Cadete"                     , "Cad"  , "G"),
              ("Subtenente"                 , "S Ten", "G"), 
              ("Soldado      "              , "SD"   , "G"),            
              ("Taifeiro-mor"               , "TM"   , "G"), 
              ("Taifeiro de Primeira Classe", "T1"   , "G"), 
              ("Taifeiro de Segundo Classe" , "T2"   , "G"),
              ("Soldado de primeira classe" , "S1"   , "G");

-- Postos da Marinha              
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (1,  1),              
                   (1,  2),
                   (1,  3),
                   (1,  4),
                   (1,  5),
                   (1,  6),
                   (1,  7),
                   (1,  8),
                   (1,  9),
                   (1, 10),
                   (1, 11),
                   (1, 12);

-- Postos do Exército                                 
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (2,  13),              
                   (2,  14),
                   (2,  15),
                   (2,  16),
                   (2,  17),
                   (2,  18),
                   (2,  19),
                   (2,  20),
                   (2,  10),
                   (2,  11),
                   (2,  21);
                   
-- Postos da Aeronáutica
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (3,  22),              
                   (3,  23),
                   (3,  24),
                   (3,  25),
                   (3,  17),
                   (3,  18),
                   (3,  19),
                   (3,  20),
                   (3,  10),
                   (3,  11),
                   (3,  26);


-- Graduações da Marinha
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (1, 27),              
                   (1, 28),
                   (1, 29),
                   (1, 30),
                   (1, 31),
                   (1, 32),
                   (1, 33),
                   (1, 34);

-- Graduações do Exército
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (2, 35),              
                   (2, 36),
                   (2, 29),
                   (2, 30),
                   (2, 31),
                   (2, 32),
                   (2, 37),
                   (2, 38),
                   (2, 39),
                   (2, 40);

-- Graduações da Aeronáutica
INSERT INTO FORCA_PATENTE (ID_FORCA_ARMADA, ID_PATENTE) 
            VALUES (3, 35),              
                   (3, 28),
                   (3, 29),
                   (3, 30),
                   (3, 31),
                   (3, 32),
                   (3, 41),
                   (3, 37),
                   (3, 38),
                   (3, 39),
                   (3, 40);


CREATE TABLE MILITAR (
	ID_MILITAR INTEGER AUTO_INCREMENT,
	NOME VARCHAR(60) NOT NULL,
	DATA_NASCIM DATE NOT NULL,
	NUM_IDENT_MIL VARCHAR(15),
	FORCA_EMIS_IDENT_MIL CHAR(3),
	DATA_EMISSAO DATE,
	SOLDO DECIMAL(12,2),
	ID_FORCA_PATENTE INTEGER NOT NULL,
    PRIMARY KEY(ID_MILITAR),
	FOREIGN KEY(ID_FORCA_PATENTE) REFERENCES FORCA_PATENTE (ID_FORCA_PATENTE));
    
INSERT INTO MILITAR (NOME, DATA_NASCIM, NUM_IDENT_MIL, FORCA_EMIS_IDENT_MIL, DATA_EMISSAO, SOLDO, ID_FORCA_PATENTE)
            VALUES
                   ("TADEU AGUIAR"           , "1981/04/25", 404040, "MAR", "2000/11/01", 12000.00,  1),
                   ("VANIA MELO"             , "1972/10/30", 202020, "MAR", "1992/03/23",  9000.00,  2),
				   ('Ednardo José dos Santos', '1986/04/06',  12741, "MAR", "2002/11/11",  8530.80,  3),
                   ("MARCIO PEREIRA"         , "1969/07/08",  12600, "MAR", "1991/12/25",  8000.00,  4),
				   ('Ana Maria das Neves'    , '1975/08/05',  12855, "MAR", "1985/11/11",  7850.10,  5),
				   ('Mauro Silva Guedes'     , '1984/03/02',  12852, "MAR", "2002/11/11",  7850.10,  5),
				   ("MARIO ALVES"            , "1970/05/13", 101010, "MAR", "1990/10/16",  7000.00,  6),
                   ("IVO SALGADO"            , "1968/02/04", 303030, "MAR", "1992/04/04",  7000.00,  6),
                   ("MARIA PEREIRA"          , "1975/11/30", 909090, "MAR", "1996/02/13",  7000.00,  6),
                   ("PAULO LEMOS"            , "1968/06/25", 707070, "MAR", "1988/11/15",  5000.00, 10),
				   ('Silvana Maria Gonçalves', '1988/10/01',  12987, "MAR", "2003/11/11",  5000.00, 10),
				   ('Ana Marisilva do Rego'  , '1963/11/11',  12755, "MAR", "1979/11/11",  4580.50, 35),
                   ("VALTER ASSUNCAO"        , "1969/04/16", 808080, "MAR", "1990/02/28",  4000.00, 37),
                   ("VALTER JUNIOR"          , "1975/02/28",  12344, "MAR", "1998/07/30",  4000.00, 37),
                   ("EDUARDA FONSECA"        , "1970/12/01", 606060, "MAR", "1989/04/30",  3000.00, 40),
                   ("MARCELA LIMA"           , "1994/10/13", 505050, "MAR", "2013/09/30",  2000.00, 42),
                   ("PATRICIA ALVES"         , "2001/12/03",  12455, "MAR", "2021/12/18",  2000.00, 42),

                   ("CARLOS LEMOS"           , "1987/09/08", 111000,  "EX", "2016/06/30", 12000.00, 13),
                   ("JOSE CARLOS"            , "1981/07/31", 222000,  "EX", "2014/09/29",  9000.00, 14),
                   ("BETH FARIAS"            , "1999/12/25", 888000,  "EX", "2021/09/01",  9000.00, 14),
                   ("OTACILIO LIRA"          , "1966/10/15",  12311,  "EX", "1987/02/05",  9000.00, 14),
				   ('Maria Jose da Silva'    , '1980/02/10', 505555,  "EX", "2001/11/11",  8530.80, 15),
                   ("PEDRO MELO"             , "1985/11/03", 444000,  "EX", "2012/10/23",  7000.00, 18),
                   ("SARA PINHEIRO"          , "1967/08/18",  12666, "AER", "1989/11/11",  7000.00, 18),
                   ("LUCAS SILVA"            , "1978/09/11",  12466,  "EX", "1998/03/08",  6000.00, 21),
                   ("EMIDIO LUCENA"          , "1971/05/27",  12599,  "EX", "1995/10/21",  6000.00, 21),
                   ("MARIO NETO"             , "1994/06/18", 555000,  "EX", "2012/12/07",  5000.00, 22),
				   ('Thiago Paulo dos Santos', '1982/06/15', 505555,  "EX", "2003/11/11",  4580.50, 43),
				   ('Ednaldo Carlos da Silva', '1986/06/08', 505555,  "EX", "2005/11/11",  4520.30, 45),
                   ("MARIA JOSE"             , "1983/11/24",  12388, "AER", "2002/11/22",  4000.00, 46),
                   ("CELIO IVO"              , "2001/12/27", 666000,  "EX", "2020/03/16",  3500.00, 47),
                   ("THIAGO ARRUDA"          , "1995/03/18",  12477,  "EX", "2014/04/07",  3000.00, 48),
                   ("VALDIR LIMA"            , "1987/04/21",  12533,  "EX", "2007/05/04",  3000.00, 48),
				   ('Pedro Paulo Marques'    , '1986/06/17', 505555,  "EX", "1995/11/11",  2300.00, 49),
                   ("PAULO SILVA"            , "1998/10/14", 333000,  "EX", "2020/12/21",  2000.00, 52),
                   ("HELIO ANTONIO"          , "2000/07/30", 777000,  "EX", "2020/04/01",  2000.00, 52),
                   ("JOSE MARIA"             , "1998/01/07",  12422, "AER", "2018/09/27",  2000.00, 52),

                   ("JOSE CARLOS"            , "1967/07/27", 200222, "AER", "2000/11/29", 12000.00, 24),
                   ("MARCELA PINHO"          , "1973/05/28", 800888, "AER", "1981/12/24", 10000.00, 25),
                   ("PAULO PINTO"            , "1978/04/04", 900999, "AER", "1998/10/19",  8000.00, 26),
                   ("CARLOS PEREIRA"         , "1983/11/30", 100100, "AER", "2002/01/09",  7000.00, 27),
                   ("JOSE CARLOS"            , "1997/10/08", 600666, "AER", "2018/08/13",  7000.00, 27),
				   ('Maria Cristina '        , '1990/01/25', 444100, "AER", "1999/11/11",  7000.00, 27),
                   ("TALES ARRUDA"           , "1968/08/16", 400444, "AER", "1998/03/06",  5000.00, 34),
                   ("IVSON MOURA"            , "1987/12/12", 500555, "AER", "2007/06/19",  5000.00, 34),
				   ('Edvaldo Trindade'       , '1998/01/25', 444052, "AER", "2003/11/11",  4580.00, 54),
				   ('Tania Alves'            , '1994/12/30', 444001, "AER", "2005/11/11",  5000.00, 34),
                   ("HELIO FERREIRA"         , "1998/06/03", 300333, "AER", "2019/12/02",  3500.00, 57),
				   ('Thyago Melo'            , '1992/07/15', 444753, "AER", "2003/11/11",  2300.00, 61),
                   ("MARCIO LIMA"            , "2002/05/04", 100111, "AER", "2021/07/15",  2000.00, 63),
                   ("MARIA JOSE"             , "2002/08/18", 700777, "AER", "2022/01/09",  2000.00, 63);
