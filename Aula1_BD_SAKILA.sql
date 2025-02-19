use sakila;	

select actor_id as codigo,
 first_name as primeiro_nome,
 last_name as ultimo_nome, 
 concat(first_name, " ",last_name) as nome_completo																# Contact soma as duas colunas e cria uma nova com ela
from actor as ator;

select * from film where title like '%BLA%';																	# O símbolo % significa não importa o que seja no caso busque o que vier antes ou depois de BLA
select * from film where title like 'AP_C%';																	# O símbolo _ significa um espaço, no caso vai pesquisar o que começa com AP e após uma letra qualquer tenha um C
select * from film where title like 'AL%' and rental_duration > 5;												# AND é para somar condições
select * from film where title like 'RE%' and rental_duration between 3 and 6 and length between 50 and 150;	# BETWEEN é para olhar entre dois valores 
select * from film where title like 'RE%' and rental_duration in (3, 6) and rating in ('NC-17', 'PG-13');		# IN somente os valores que você escolheu, no caso, 3 e 6 ou  NC-17 e PG-13
select format (rental_rate * 1.10, 2) as rental_rate_calcute, rental_rate, film.* from film;					# É possível fazer calculos direto no select como visto no código
select distinct rental_duration from film;																		# O DISTINCT faz mostrar apenas um de cada tipo que exite na coluna selecionada]
select * from film limit 15 offset 4;																			# O LIMIT limita a sua lista para o número que você selecionou. O OFFSET retira os que você selecionou, no caso 3

