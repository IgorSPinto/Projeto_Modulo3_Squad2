/*Script de reposta da pergunta 4 sobre os estudantes que fazem mais de um curso na instituição*/

select T.estudante_id, nome, COUNT(T.estudante_id) as qtd_cursos
from Turmas_Alunos T inner join Estudantes E on T.estudante_id = E.estudante_id group by estudante_id having qtd_cursos > 1;