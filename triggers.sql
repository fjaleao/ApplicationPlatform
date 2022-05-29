create trigger age_restriction_trigger
    after insert on transactionTab
	for each row
    declare RecipientAge number, AgeRating number;  
	begin
        select  into AgeRating
        from software
        if (RecepientAge < AgeRating)
            then Raise_Application_Error (-20100, 'A idade do destinatário do software é inferior à mínima para utilizá-lo. Transação não efetuada!');
        end if;
    end;
/

create view ageRatingSoftware 
    select ageRating
    from softwareTab inner join hasTab using (softwareId)
                     inner join transactionTab using (transactionId)
   



create or replace view totalCred as
    select numero, anoLetivo, sum(ects) as total
    from inscricoes I natural join cadeiras
    group by numero, anoLetivo;

create or replace trigger verifica_limite
  after insert on inscricoes
  declare NumECTS number;
  begin
    select max(total) into NumECTS from totalCred;
    if (NumECTS >  72)
      then Raise_Application_Error (-20100, 'Atingiu o limite de créditos. Inscrição não aceite!');
    end if;
  end;
/

create trigger publisher_name_trigger

/

create trigger software_name_trigger

/

create trigger payment_type_trigger

/

create trigger game_launched_trigger

/


create or replace trigger inscreve_novo_aluno
	after insert on matriculas
	for each row
	begin
		insert into inscricoes 
      select :new.numero, curso, cadeira, to_number(extract(year from :new.dataMatr)), :new.dataMatr
      from planos
        
  end;
/
