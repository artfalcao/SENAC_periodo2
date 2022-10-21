CREATE DATABASE TODOLIST;

-- Coloca o BD em usos
USE TODOLIST;

-- Cria as tabelas
CREATE TABLE USUARIO (ID_USUARIO INTEGER PRIMARY KEY,
                      NOME       VARCHAR(50),
					  TELEFONE   VARCHAR(20),
					  EMAIL      VARCHAR(50) );
					  
CREATE TABLE CATEGORIA (ID_CATEGORIA INTEGER PRIMARY KEY,
                        DESCRICAO    VARCHAR(20) );

CREATE TABLE STATUS (ID_STATUS INTEGER PRIMARY KEY,
                     DESCRICAO VARCHAR(20) );

CREATE TABLE LISTA (ID_LISTA     INTEGER PRIMARY KEY,
                    TITULO       VARCHAR(50),
					DESCRICAO    VARCHAR(50),
					ID_USUARIO   INTEGER
					             REFERENCES USUARIO(ID_USUARIO),
					ID_CATEGORIA INTEGER
					             REFERENCES CATEGORIA(ID_CATEGORIA) );

CREATE TABLE ATIVIDADE (ID_ATIVIDADE    INTEGER PRIMARY KEY AUTO_INCREMENT,
                        DESCRICAO       VARCHAR(50),
                        HORA_TRABALHO   DECIMAL(4,1),
                        CUSTO_PREVISTO  DECIMAL(10,2),
                        CUSTO_EXECUTADO DECIMAL(10,2),
						DT_PREVISTA     DATE,
						DT_EXECUCAO     DATE,
						ID_USUARIO      INTEGER
						                REFERENCES USUARIO(ID_USUARIO),
						ID_LISTA        INTEGER
						                REFERENCES LISTA(ID_LISTA),
						ID_STATUS       INTEGER
						                REFERENCES STATUS(ID_STATUS) );
                                     
-- Inseri dados nas tabelas

INSERT INTO  USUARIO (ID_USUARIO, NOME, TELEFONE, EMAIL)
       VALUES        ( 101, 'Jorge Lins'          , '81-99999-8888', 'jorge.lins@mail.com.br'),
                     ( 102, 'Valeria Marques'     , '81-88888-7777', 'valeria.marques@mail.com'),
                     ( 103, 'Antonio Pereira'     , '81-77777-8166', 'antoniopereira@xxx.com'),
                     ( 104, 'Silvania Lins'       , '82-66666-5555', 'silvanialins@mail.com.br'),
                     ( 105, 'Marta Melo'          , '81-55555-4481', 'mirta.melo@xxx.com'),
                     ( 106, 'Tito Lins'           , '81-77777-8181', 'tito_lins@mail.com'),
                     ( 107, 'Luciana Lima'        , '83-99999-0000', 'luciana_lima@mail.com.br'),
                     ( 108, 'Jorge Comercial Ltda', '81-99999-8888', 'jorge.com.ltda@mail.com.br'),
                     ( 109, 'Antonio Marciano'    , '83-77777-0000', 'seculo.xxx.21@xxx.com.br'),
                     ( 110, 'Vitor Melo', '83-99999-8888', 'vitor.xxx.melo@xxx.com.br');

INSERT INTO CATEGORIA (ID_CATEGORIA, DESCRICAO)
       VALUES         (10, 'Pessoal'),
	                  (20, 'Academico'),
	                  (30, 'Profissional');


INSERT INTO STATUS (ID_STATUS, DESCRICAO)
       VALUES      (1, 'Pendente'),
	               (2, 'Em andamento'),
				   (3, 'Finalizado'); 


INSERT INTO LISTA (ID_LISTA, TITULO, DESCRICAO, ID_USUARIO, ID_CATEGORIA)
       VALUES     (1001, 'Férias 2021'                   , 'Férias 2021 para Gramado'                        , 101, 10),
                  (1002, 'Curso de inglês'               , 'Curso básico de inglês'                          , 105, 10),
                  (1003, 'Tirar carteira de habilitação' , 'Tirar a CNH para comprar um carro'               , 103, 10),
                  (1004, 'Trabalho de conclusão de curso', 'ATIVIDADE do TCC do curso de graduação'          , 102, 20),
                  (1005, 'Projeto 2021.1'                , 'Atividade do semestre 2021.1 - Faculdade'        , 104, 20),
                  (1006, 'Estudo SQL'                    , 'ATIVIDADE para aprender SQL'                     , 101, 20)        ,
				  (1007, 'Elaborar planilha de vendas'   , 'Elaboração da planilha de vendas do mês de março', 102, 30),
				  (1008, 'Inventário do estoque'         , 'Organizar o estoque para o inventário'           , 105, 30),
				  (1009, 'Projeto loja center'           , 'Elaborar o projeto do layout da loja Center'     , 104, 30),
                  (1010, '2021 Solidariedade Emocional'  , 'Edição 2021 da ação social sobre saúde emocional', 105, 10),
                  (1011, 'Reveillon 2021 '               , 'Preparar o Reveillon de 2021'                    , 103, 10),
                  (1015, '2021 Empreendedorismo Social'  , 'Evento de empreendedorismo social'               , 105, 30);


INSERT INTO ATIVIDADE ( DESCRICAO, HORA_TRABALHO, CUSTO_PREVISTO, CUSTO_EXECUTADO, DT_PREVISTA, DT_EXECUCAO, ID_LISTA, ID_STATUS )
       VALUES         ( 'Comprar passagens aérea'                    ,   2, 1000.0, 1200.0, '2021-01-31', '2021-01-31', 1001, 3),  
					  ( 'Reservar hotel'                             ,   2, 2000.0, 1900.0, '2021-02-20', '2021-02-22', 1001, 3),
					  ( 'Comprar ingressos para fábrica de chocolate', 0.5,   80.0,   80.0, '2021-08-10', '2021-08-10', 1001, 3),
					  ( 'Comprar ingresso para café colonial'        , 0.5,  100.0,  120.0, '2021-09-10', '2021-09-08', 1001, 3),
					  ( 'Reservar carro'                             ,   1, 1500.0, 1600.0, '2021-10-10', '2021-09-10', 1001, 3),

					  ( 'Pesquisar cursos'                           ,   2,   0.0, null, '2021-02-20', null, 1002, 1),
					  ( 'Fazer matricula'                            ,   1,   0.0, null, '2021-02-25', null, 1002, 1),
					  ( 'Fazer pagamento'                            , 0.5, 500.0, null, '2021-02-28', null, 1002, 1),
					  ( 'Confirmar acesso ao sistema'                , 0.5,   0.0, null, '2021-03-02', null, 1002, 1),

					  ( 'Pagar taxa do detran'                       , 0.5, 500.0, 500.0, '2021-01-02', null, 1003, 3),
					  ( 'Marcar exame de vista'                      , 0.5,   0.0,   0.0, '2021-01-05', null, 1003, 3),
					  ( 'Realizar exame de vista'                    ,   2,   0.0,   0.0, '2021-01-15', null, 1003, 3),
					  ( 'Marcar exame psicotécnico'                  ,   2,   0.0,   0.0, '2021-01-05', null, 1003, 3),
					  ( 'Realizar exame psicotécnico'                ,   2,   0.0,   0.0, '2021-01-15', null, 1003, 3),
					  ( 'Fazer matricula na auto escola'             ,   1, 800.0, 800.0, '2021-01-20', null, 1003, 3),
					  ( 'Realizar aulas teóricas'                    ,   8,   0.0,  null, '2021-02-20', null, 1003, 1),
					  ( 'Realizar prova teórica'                     ,   1,   0.0,  null, '2021-02-28', null, 1003, 1),
					  ( 'Realizar aula práticas'                     ,   4,   0.0,  null, '2021-03-20', null, 1003, 1),
					  ( 'Realizar prova prática'                     ,   2,   0.0,  null, '2021-03-30', null, 1003, 1),
					  ( 'Pegar CNH'                                  , 0.5,   0.0,  null, '2021-05-05', null, 1003, 1),

					  ( 'Definir o tema'                             ,   2, 0.0, null, '2021-02-28', null, 1004, 1),
					  ( 'Aprovar o tema'                             ,   3, 0.0, null, '2021-03-05', null, 1004, 1),
					  ( 'Finalizar pesquisas'                        ,  40, 0.0, null, '2021-03-30', null, 1004, 1),
					  ( 'Escrever versão inical'                     ,  15, 0.0, null, '2021-04-30', null, 1004, 1),
					  ( 'Escrever introdução'                        ,   2, 0.0, null, '2021-05-15', null, 1004, 1),
					  ( 'Escrever versão final'                      ,  30, 0.0, null, '2021-05-26', null, 1004, 1),
					  ( 'Escrever conclusão'                         ,   5, 0.0, null, '2021-05-30', null, 1004, 1),
					  ( 'Apresentar TCC'                             ,   3, 0.0, null, '2021-06-15', null, 1004, 1),

					  ( 'Sprint 1: Atualização dos artefatos'        ,   8, 0.0, null, '2021-04-15', null, 1005, 1),
					  ( 'Sprint 2: Implementação Front-end desktop'  ,  32, 0.0, null, '2021-04-30', null, 1005, 1),
					  ( 'Sprint 3: Implementação Back-end'           ,  32, 0.0, null, '2021-05-15', null, 1005, 1),
					  ( 'Sprint 4: Integração Front-end e Back=end'  ,   8, 0.0, null, '2021-05-30', null, 1005, 1),
					  ( 'Sprint 5: Ajustes de integração'            ,   4, 0.0, null, '2021-05-15', null, 1005, 1),
					  ( 'Apresentação'                               ,   4, 0.0, null, '2021-06-16', null, 1005, 1),

					  ( 'Assistir aulas-aulas'                       ,   3, 0.0, 0.0, '2021-03-30', '2021-03-30', 1006, 3),
					  ( 'Fazer os exercícios'                        ,   1, 0.0, 0.0, '2021-04-15', '2021-04-15', 1006, 3);

-- Atualizando o usuário responsável de atividades concluídas (Id_Status = 3)
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 107 WHERE Id_Atividade = 1;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 109 WHERE Id_Atividade = 2;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 107 WHERE Id_Atividade = 3;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 106 WHERE Id_Atividade = 4;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 109 WHERE Id_Atividade = 5;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 103 WHERE Id_Atividade = 10;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 104 WHERE Id_Atividade = 11;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 107 WHERE Id_Atividade = 12;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 106 WHERE Id_Atividade = 13;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 107 WHERE Id_Atividade = 14;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 109 WHERE Id_Atividade = 15;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 101 WHERE Id_Atividade = 35;
UPDATE Atividade SET Id_Status = 3, Id_Usuario = 101 WHERE Id_Atividade = 36;

-- Atualizando o status e o usuário responsável de atividades em andamento  (Id_Status = 2)
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 102 WHERE Id_Atividade = 21;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 102 WHERE Id_Atividade = 22;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 104 WHERE Id_Atividade = 29;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 104 WHERE Id_Atividade = 30;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 105 WHERE Id_Atividade = 31;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 105 WHERE Id_Atividade = 32;
UPDATE Atividade SET Id_Status = 2, Id_Usuario = 105 WHERE Id_Atividade = 33;

-- Atualizando alguns usuários responsáveis de atividades pendentes (Id_Status = 1)
UPDATE Atividade SET Id_Status = 1, Id_Usuario = 105 WHERE Id_Atividade = 6;
UPDATE Atividade SET Id_Status = 1, Id_Usuario = 103 WHERE Id_Atividade = 16;
UPDATE Atividade SET Id_Status = 1, Id_Usuario = 109 WHERE Id_Atividade = 23;
