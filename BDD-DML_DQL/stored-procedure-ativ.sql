# Fazer um procedimento para mostrar o nome da patente de um militar cuja id seja informado por parâmetro
DELIMITER $$
CREATE PROCEDURE SPC_NOME_PATENTE(IN ID_MILITAR INT)
BEGIN
SELECT P.NOME "PATENTE"
FROM MILITAR M, PATENTE P, FORCA_PATENTE FP
WHERE M.ID_FORCA_PATENTE = FP.ID_FORCA_PATENTE 
AND   P.ID_PATENTE = FP.ID_FORCA_PATENTE
AND   M.ID_MILITAR = ID_MILITAR;
END
$$ DELIMITER ;

# Fazer um procedimento para mostrar os nomes dos militares que tem uma determinada patente. O id da patente deve ser informada via parâmetro
DELIMITER $$
CREATE PROCEDURE SPC_NOMES_MILITARES_PATENTE(IN ID_PATENTE INT)
BEGIN
SELECT M.NOME
FROM MILITAR M, PATENTE P, FORCA_PATENTE FP
WHERE M.ID_FORCA_PATENTE = FP.ID_FORCA_PATENTE 
AND   P.ID_PATENTE = FP.ID_FORCA_PATENTE
AND   P.ID_PATENTE = ID_PATENTE;
END
$$ DELIMITER ;

# Fazer um procedimento para mostrar os nomes dos militares de duas forças armadas. Os nomes das forças devem ser informadas via parâmetros
DELIMITER $$
CREATE PROCEDURE SPC_EXIBE_MILITARES_FORCA(IN NOME1 VARCHAR(30), NOME2 VARCHAR(30))
BEGIN
SELECT M.NOME
FROM MILITAR M, FORCA_ARMADA FA, FORCA_PATENTE FP
WHERE M.ID_FORCA_PATENTE = FP.ID_FORCA_PATENTE 
AND   FA.ID_FORCA_ARMADA = FP.ID_FORCA_ARMADA
AND   (FA.NOME = NOME1 OR FA.NOME = NOME2);
END
$$ DELIMITER ;

# TESTE
CALL SPC_NOME_PATENTE(1);
CALL SPC_NOMES_MILITARES_PATENTE(10);
CALL SPC_EXIBE_MILITARES_FORCA("Exército", "Aeronáutica");
