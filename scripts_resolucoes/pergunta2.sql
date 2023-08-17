select nome, count(Turmas.facilitador_id) as qtd_turmas 
from Facilitadores 
inner join Turmas on Facilitadores.facilitador_id = Turmas.facilitador_id 
group by nome having qtd_turmas > 1;