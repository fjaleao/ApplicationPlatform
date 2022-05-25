-- Quais os usernames dos utilizadores que ofereceram um jogo com um dado nome? (nome = 'Grand Theft Auto V')
SELECT username
FROM userA inner join transactionA using (transactionId) 
           inner join has using (transactionId)
           inner join software using (softwareId)
WHERE softwareName = 'Grand Theft Auto V' and recipientId != userId;


-- Quais os nomes e classificações dos jogos da plataforma categorizados como compatíveis para Windows (tag), de simulação (tag) e com uma dada classificação etária? 
select softwareName, classification
from software inner join defined using(softwareId) inner join tag using(tagId)


where tagName = 'Compatible with Windows' and tagName = 'Simulation'

-- Qual o nome e e-mail do utilizador com mais transações feitas na plataforma?
SELECT fullName, email
FROM

-- Qual o nome do jogo associado à DLC com a melhor classificação na plataforma?
SELECT softwareName, softwareName, MAX(classification)
FROM software inner join expands using (softwareId)

--FETCH FIRST 1 ROWS ONLY;

-- Quais os nomes, descrições, preços e datas de lançamento dos jogos lançados por editoras portuguesas que já foram comprados pelo menos uma vez? 

 




 
softwareId  tagId  tagName
    1         1    windowss
    1         2    simulation 