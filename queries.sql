-- Quais os usernames dos utilizadores que ofereceram um jogo com um dado nome? (nome = 'Grand Theft Auto V')
SELECT username
FROM userA inner join transactionA using (transactionId) 
           inner join has using (transactionId)
           inner join software using (softwareId)
WHERE softwareName = 'Grand Theft Auto V' and recipientId != userId;


-- Quais os nomes e classificações dos jogos da plataforma categorizados como compatíveis para Windows 
--(tag), de simulação (tag) e com uma dada classificação etária? (classificação etária = 12)

(select softwareName, classification
from software inner join defined using (softwareId)
              inner join tag using (tagId)
where tagName = 'Compatible with Windows' and ageRating <= 12)
intersect
(select softwareName, classification
from software inner join defined using (softwareId)
              inner join tag using (tagId)
where tagName = 'Simulation' and ageRating <= 12);
 

-- Qual o nome e e-mail do utilizador com mais transações feitas na plataforma?


-- Qual o nome do jogo associado à DLC com a melhor classificação na plataforma?4
with dlcs as (
    select dlc
    from expands
)
with bestDlc as (
    select dlc, softwareName as dlcName, classification
    from dlcs inner join software using (dlc)
    where classification in (select max(classification) from software)
)
select sofwareName as basegameName, dlcName, classification 
from bestDlc inner join expands using(dlc)
             inner join software using(basegame);





-- Quais os nomes, descrições, preços e datas de lançamento dos jogos lançados por editoras portuguesas que já foram comprados pelo menos uma vez? 

 

-- 12.
-- Qual o nome do candidato à FCT com maior média do secundário, e qual essa média? 
select nome, mediaSec/10
from candidatos, (select max(mediaSec) as mediaMax from candidatos) A
where A.mediaMax = mediaSec;

-- ou
select nome, mediaSec/10
from candidatos
where mediaSec = all (select max(mediaSec) from candidatos);

-- ou
select nome, mediasec/10
from candidatos 
where mediaSec in (select max(mediaSec) from candidatos);


 
softwareId  tagId  tagName
    1         1    windowss
    1         2    simulation 
