/*Pergunta 04: Qual o total de acidentes registrados apenas no trecho de Ipatinga?*/
SELECT km, COUNT(*) as Quantidade_de_acidentes_nesse_trecho
FROM analise2.demostrativo_acidentes_nova_381
WHERE  km between 226 and 235 
group by km;
