CREATE VIEW PorcentagemEvasaoPorTurma AS
SELECT
    turma_id,
    COUNT(*) AS total_estudantes,
    SUM(CASE WHEN desistencia = TRUE THEN 1 ELSE 0 END) AS total_evasao,
    (SUM(CASE WHEN desistencia = TRUE THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS porcentagem_evasao
FROM Historicos
GROUP BY turma_id;

SELECT * FROM PorcentagemEvasaoPorTurma;