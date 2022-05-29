-- Quais os usernames dos utilizadores que ofereceram um jogo com um dado nome? (nome = 'Grand Theft Auto V')
SELECT username
FROM userTab inner join transactionTab using (userId) 
           inner join hasTab using (transactionId)
           inner join softwareTab using (softwareId)
WHERE softwareName = 'Grand Theft Auto V' and recipientId != userId;


-- Quais os nomes e classificações dos jogos da plataforma categorizados como compatíveis para Windows 
--(tag), de simulação (tag) e com uma dada classificação etária? (classificação etária = 12) (mostra
-- apenas aqueles que ja se encontram classsificados)  
 
(select softwareName, classification
from softwareTab inner join classifications using(softwareId)
                 inner join definedTab using (softwareId)
                  inner join tagTab using (tagId)
where tagName = 'Compatible with Windows' and ageRating <= 12)
intersect
(select softwareName, classification
from softwareTab inner join classifications using(softwareId)
                 inner join definedTab using (softwareId)
                 inner join tagTab using (tagId)
where tagName = 'Simulation' and ageRating <= 12);
 

-- Qual o nome e e-mail do utilizador com mais transações feitas na plataforma?

with transactions_num as (
    select userId, count(transactionId) as num
    from transactionTab 
    group by userId
)
select fullName, email, num
from transactions_num inner join userTab using (userId)
where num in (select max(num) from transactions_num)
;

-- Qual o nome do jogo associado à DLC com a melhor classificação na plataforma?

create view classifications as
    with reviewed as (
        select softwareId, avg(stars) as classification
        from reviewTab
        group by softwareId
    )
;


create view dlcs as (
    select dlc
    from expandsTab
);

create view bestDlc as (
    select dlc, softwareName as dlcName, classification
    from dlcs inner join softwareTab on dlcs.dlc = softwareTab.softwareId
              inner join classifications on dlcs.dlc = classifications.softwareId
    where classification in (select max(classification) from (dlcs inner join classifications on dlcs.dlc = classifications.softwareId))
);


select softwareTab.softwareName as basegameName, dlcName, classification 
from bestDlc inner join expandsTab using(dlc)
             inner join softwareTab on softwareTab.softwareId = expandsTab.basegame
;
           
commit;


-- Quais os nomes, descrições, preços e datas de lançamento dos jogos lançados por editoras
-- portuguesas que já foram comprados pelo menos uma vez? 
with transactions_num as (
    select softwareId, count(transactionId) as num
    from transactionTab inner join hasTab using (transactionId)
    group by softwareId
)
select softwareName, softwareDescription, price, releaseDate
from softwareTab inner join transactions_num using (softwareId)
                 inner join publisherTab using (publisherName)
where country = 'Portugal' and num > 0;
