/*Pergunta 05: Qual a porcentagem dos acidentes fatais? */
SELECT 
   (SELECT COUNT(*) FROM analise2.demostrativo_acidentes_nova_381 WHERE mortos > 0) as qtd_acidentes_fatais,
   count(*) as qtd_acidentes_totais,
   CONCAT(ROUND(((SELECT COUNT(*) FROM analise2.demostrativo_acidentes_nova_381 WHERE  mortos > 0)*100)/COUNT(*),1),'%') as '%'
FROM analise2.demostrativo_acidentes_nova_381;
