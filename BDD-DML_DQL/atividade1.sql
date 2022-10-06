# Questão 1
SELECT CONCAT(titulo, " / ", descricao) AS "Título / Descrição"  FROM lista;

# Questão 2
SELECT titulo FROM lista WHERE INSTR(titulo, '2021') > 0 ;

# Questão 3
SELECT nome, telefone FROM usuario WHERE LOCATE("81", telefone, 10) > 0;
