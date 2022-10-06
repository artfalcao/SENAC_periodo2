# Questão 1
SELECT NOME, EMAIL FROM usuario WHERE instr(email, '@mail') > 0;

# Questão 2
SELECT concat(upper(lpad(nome, instr(nome, ' '), ' ')), ', ',lower(rpad(nome, instr(nome, ' '), ' '))) 'NOME' FROM usuario;

# Questão 3
SELECT EMAIL, replace(email, '@xxx', '@newcom') 'DOMINIO NEWCOM' FROM usuario;

# Questão 4
SELECT abs(custo_previsto - custo_executado) 'DIFERENÇA' 
	FROM atividade 
		WHERE abs(custo_previsto - custo_executado) > 0;

# Questão 5
SELECT CUSTO_PREVISTO, CUSTO_EXECUTADO, greatest(custo_previsto, custo_executado) 'MAIOR CUSTO' 
	FROM atividade
		WHERE CUSTO_PREVISTO <> CUSTO_EXECUTADO;

# Questão 6
SELECT ID_STATUS, truncate(CUSTO_EXECUTADO, 0) 'CUSTO_EXECUTADO' FROM atividade WHERE ID_STATUS = 3;

# Questão 7
SELECT DESCRICAO, DT_PREVISTA, DT_EXECUCAO, datediff(DT_EXECUCAO, DT_PREVISTA) 'DIAS DE ATRASO'
	FROM atividade
		WHERE datediff(DT_EXECUCAO, DT_PREVISTA) > 0;

# Questão 8
SET LC_TIME_NAMES = 'pt_BR';
SELECT date_format(DT_EXECUCAO, '%d.%m.%Y') 'DATA EXECUÇÃO', 
		concat('Recife, ', day(DT_EXECUCAO), ' de ', 
        monthname(DT_EXECUCAO), ' de ', year(DT_EXECUCAO)) 'EXECUÇÃO POR EXTENSO' 
			FROM atividade 
				WHERE DT_EXECUCAO IS NOT NULL;
            
# Questão 9
SET LC_TIME_NAMES = 'pt_BR';
SELECT DESCRICAO, DT_PREVISTA, CUSTO_PREVISTO, dayname(DT_PREVISTA) 'DIA'
	FROM atividade
		WHERE (dayname(DT_PREVISTA) LIKE 'sábado' OR dayname(DT_PREVISTA) LIKE 'domingo')
			AND CUSTO_PREVISTO <> 0;

# Questão 10
SELECT DESCRICAO, date_format(DT_EXECUCAO, '%m-%Y') 'MÊS/ANO', CUSTO_EXECUTADO
	FROM atividade
		WHERE quarter(DT_EXECUCAO) = 3;
