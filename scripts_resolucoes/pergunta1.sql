/*Script de reposta da pergunta 1 sobre o total de estudantes do curso*/

SELECT sum(qtd) as quantidade_total_alunos from (
	select count(estudante_id) as qtd from Estudantes group by estudante_id
) as alunos group by qtd;