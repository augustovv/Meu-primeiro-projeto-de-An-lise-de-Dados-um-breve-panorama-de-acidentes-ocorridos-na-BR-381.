/*Pergunta 03: Qual o km que mais registrou acidentes E qual a quantidade de acidentes registrados em cada km?*/
SELECT km, COUNT(*) as Quantidade_de_acidentes_nesse_km, CONCAT(ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC),'° LUGAR') as Ranking
FROM analise2.demostrativo_acidentes_nova_381
group by km 
order by count(*) desc;
