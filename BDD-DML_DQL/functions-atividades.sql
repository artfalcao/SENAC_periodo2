# Escreva uma função para receber uma hora (inteiro) e um custo (decimal 10,2). A função deve retornar o custo por hora.
DELIMITER $$
CREATE FUNCTION FN_CUSTO_HORA(HORA INT, CUSTO DECIMAL(10,2))
RETURNS DECIMAL(10,2)
NO SQL
BEGIN
	DECLARE CUSTO_HORA DECIMAL(10,2);
    SET CUSTO_HORA = CUSTO / HORA;
    RETURN CUSTO_HORA;
END
$$ DELIMITER ;

# TESTE: Mostrar os seguintes dados das atividades (Banco de dados: TodoList ): id, descrição, hora de trabalho, custo previsto, custo hora previsto, custo executado e custo hora executado
SELECT ID_ATIVIDADE, DESCRICAO, HORA_TRABALHO, CUSTO_PREVISTO, FN_CUSTO_HORA(HORA_TRABALHO, CUSTO_PREVISTO), CUSTO_EXECUTADO, FN_CUSTO_HORA(HORA_TRABALHO, CUSTO_EXECUTADO) 
FROM ATIVIDADE;

# Escreva uma função para receber a data prevista e a data de execução de uma atividade. A função deve retornar:
-- Para as atividades que ainda não foram executadas:
-- Se a data prevista for anterior a data atual: VENCIDA
-- Se a data prevista for igual ou posterior a data atual: VINCENDA

-- Para as atividades que já foram executadas:
 -- Se a data de execução for posterior a data prevista: CONCLUÍDA COM ATRASO
 -- Se a data de execução for anterior ou igual a data prevista: CONCLUÍDA NO PRAZO

 DELIMITER $$
CREATE FUNCTION FN_SITUACAO_ATIVIDADE(DATA_PREV DATE, DATA_EXEC DATE)
RETURNS VARCHAR(30)
NO SQL
BEGIN
	DECLARE RETORNO VARCHAR(30);
    SET RETORNO = "";
    -- Para as atividades que ainda não foram executadas:
    IF DATA_EXEC IS NULL THEN
		IF DATA_PREV < CURDATE() THEN
			SET RETORNO = "VENCIDA";
            
		ELSEIF DATA_PREV >= CURDATE() THEN
			SET RETORNO = "VINCENDA";
            
		END IF;
	-- Para as atividades que já foram executadas:
	ELSEIF DATA_EXEC IS NOT NULL  THEN
		IF DATA_EXEC > DATA_PREV THEN
			SET RETORNO = "CONCLUÍDA COM ATRASO";
			
		ELSEIF DATA_EXEC <= DATA_PREV THEN
			SET RETORNO = "CONCLUÍDA NO PRAZO";
            
		END IF;
	END IF;
    RETURN RETORNO;
END
$$ DELIMITER ;

 # Para testar: Mostrar a data prevista, a data de execução e a situação das atividades
 SELECT DT_PREVISTA, DT_EXECUCAO, FN_SITUACAO_ATIVIDADE(DT_PREVISTA, DT_EXECUCAO) 
 FROM ATIVIDADE;
