/*Pergunta 01: Qual o principal tipo de acidente registrado considerando todos os dados?*/

SELECT 
    tipo_de_acidente, 
    COUNT(*) AS Quantidade_de_acidentes,
    CONCAT(round((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM analise2.demostrativo_acidentes_nova_381)),2),'%') AS '%'
FROM analise2.demostrativo_acidentes_nova_381
GROUP BY tipo_de_acidente
ORDER BY Quantidade_de_acidentes DESC;
