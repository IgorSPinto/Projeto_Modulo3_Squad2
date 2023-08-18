/*Script de reposta da pergunta 5 sobre as materias que cada facilitador ministra e quais facilitadores tem mais matéria*/

select F.nome as facilitador, count(F.nome) as qtd_materias from Facilitadores F 
inner join Materias M on F.facilitador_id = M.facilitador_id
inner join Modulos on M.modulo_id = Modulos.modulo_id
inner join Cursos C on Modulos.curso_id = C.curso_id
group by F.nome order by qtd_materias desc;