/*Pergunta 06: Qual a porcentagem dos acidentes fatais apenas em Ipatinga?*/
SELECT DISTINCT 
   (SELECT COUNT(*) FROM analise2.demostrativo_acidentes_nova_381 WHERE  km between 226 and 235 AND mortos > 0) as qtd_acidentes_fatais_trecho_ipatinga,
   30 as qtd_acidentes_totais,
   CONCAT(ROUND(((SELECT COUNT(*) FROM analise2.demostrativo_acidentes_nova_381 WHERE  km between 226 and 235 AND mortos > 0)*100)/30,1),'%') as '%'
FROM analise2.demostrativo_acidentes_nova_381;
