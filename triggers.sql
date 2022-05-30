--not working
create or replace trigger age_restriction_trigger
    before insert on transactionTab
	for each row
    declare 
        recipientAge number;
        ageRating number;
	begin
		--select months_between(trunc(sysdate), birthDate)/12 into recipientAge
		--from transactionTab inner join userTab using(userId)
		--where :new.recipientId = userTab.userId; 

		select max(ageRating), months_between(trunc(sysdate), birthDate)/12
        into ageRating, recipientAge
		from transactionTab inner join userTab using(userId) join hasTab ht on(transactionTab.transactionId = ht.transactionId) using(transactionId) inner join softwareTab using(softwareId)
		where :new.recipientId = userTab.userId and hasTab.softwareId = softwareTab.softwareId;

        if (recipientAge < ageRating)
            then Raise_Application_Error (-20100, 'The recipient''s age is smaller than the software''s minimum recommended age. Transaction failed!');
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
      then Raise_Application_Error (-20100, '');
    end if;
  end;
/

-- A funcionar! :)
create or replace trigger publisher_name_trigger
	before insert on publisherTab
    for each row
    declare repeatedTimes number;
	begin
		select count(publisherName) into repeatedTimes
		from publisherTab
		where :new.publisherName = publisherName;

		if (repeatedTimes > 0)
			then Raise_Application_Error (-20101, 'There''s already a publisher with that name. Publisher not added!');
		end if;
	end;
/

-- A funcionar! :)
create or replace trigger software_name_trigger
	before insert on softwareTab
    for each row
    declare repeatedTimes number;
	begin
		select count(softwareName) into repeatedTimes
		from softwareTab
		where :new.softwareName = softwareName;

		if (repeatedTimes > 0)
			then Raise_Application_Error (-20102, 'There''s already a software/game/dlc with that name. Product not added!');
		end if;
	end;
/

-- A funcionar! :)
create or replace trigger payment_type_trigger
	before insert on transactionTab
    for each row
    declare repeatedTimes number;
	begin
		select count(paymentType) into repeatedTimes
		from transactionTab
		where :new.paymentType not in('PayPal', 'MBWay', 'MasterCard', 'Visa', 'PaySafeCard', 'ATM', 'Payshop');

		if (repeatedTimes > 0)
			then Raise_Application_Error (-20103, 'Invalid payment type. Transaction failed!');
		end if;
	end;
/

-- (nao testado)
create or replace trigger software_not_launched_trigger
	before insert on transactionTab
    for each row
    declare repeatedTimes number;
	begin
		select count(*) into repeatedTimes
		from transactionTab inner join ownsTab using(userId) inner join softwareTab using(softwareId)
		where :new.transactionDate > releaseDate;

		if (repeatedTimes > 0)
			then Raise_Application_Error (-20104, 'Software not launched yet. Transaction failed!');
		end if;
	end;
/

commit;
