<div>

## Banco de Dados Instituto BD (Brasil Didática)

<p>
Este é o projeto em grupo do terceiro módulo do curso WebDev Resilia / Códigos do Amanhã. Foi proposta a modelagem de um banco de dados MySQL para armazenar registros acerca de alunos, facilitadores, cursos, módulos e matérias, a fim de responder perguntas estratégicas com as informações obtidas.
</p>

## Estruturação de tabelas

<p>
As tabelas são criadas, caso não existam, e contém colunas com tipos definidos conforme a necessidade específica. Por exemplo, a tabela Estudantes possui a coluna estudante_id do tipo int e está configurada para não receber valores nulos e incrementar automaticamente (auto_increment), enquanto a coluna data_nascimento atribui-se ao tipo date, e as colunas nome, CPF, telefone e email são do tipo varchar, com quantidade de caracteres definida conforme o contexto de cada coluna. Cada tabela tem chaves primárias e estrangeiras para gerar os relacionamentos pertinentes ao projeto.
</p>

## Consultas e perguntas estratégicas  

<p>
Utilizando consultas com métodos select, inner join, create view, foi possível obter informações para responder as seguintes perguntas:

- Qual é a quantidade total de alunos?

- Quais pessoas facilitadoras atuam em mais de uma turma?

- Como criar uma tabela temporária com a porcentagem de evasão de estudantes agrupados por turma? 

- Quantos alunos optaram por fazer mais de um curso?

- Quais facilitadores dão qual matéria, em qual curso e em módulo respectivamente?
</p>

## Stacks

Foi utilizado no projeto as stacks a seguir:

- [Modelagem][https://dbdiagram.io/home]
- [Docker][https://www.docker.com/]
- [MySql - Docker][https://hub.docker.com/_/mysql]
- [Workbench][https://www.mysql.com/products/workbench/]

## Como executar o projeto
```bash
# Clone este repositório
$ git clone https://github.com/IgorSPinto/Projeto_Modulo3_Squad2.git

# Acesse a pasta do projeto no terminal/cmd
$ cd Projeto_Modulo3_Squad2
$ cd mysql_populado
# Agora você ira executar os comandos do docker para para poder gerar a imagem e o container
$ docker build -t docker_populado .\
$ docker-compose up
# Pronto, você já tem seu banco populado pronto para ser acessado no workbench, não se esqueça de conferir a porta utilizada na conexão, aqui utilizamos as portas 3306:3306
```
Desenvolvido por: Ana Oliveira, Caroline Alves, Igor Pinto e Victor Vechi
</div>
