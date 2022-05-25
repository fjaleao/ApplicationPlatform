create trigger age_restriction_trigger
    after insert on transactionA
	for each row
    declare RecipientAge number, AgeRating number;  
	begin
        select  into ageRating
        from software
        if (RecepientAge < AgeRating)
            then Raise_Application_Error (-20100, 'A idade do destinatário do software é inferior à mínima para utilizá-lo. Transação não efetuada!');
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