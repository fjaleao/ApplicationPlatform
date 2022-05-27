-- making sure there are no conflicts

set define off;

drop sequence tagidN;
drop sequence softwareidN;
drop sequence useridN;
drop sequence transactionidN;

drop table tagTab cascade constraints;
drop table publisherTab cascade constraints;
drop table softwareTab cascade constraints;
drop table tabUser cascade constraints;
drop table transactionTab cascade constraints;
drop table ownsTab cascade constraints;
drop table reviewTab cascade constraints;
drop table hasTab cascade constraints;
drop table friendshipTab cascade constraints;
drop table definedTab cascade constraints;
drop table expandsTab cascade constraints;
drop table threadTab cascade constraints;
drop table commentsTab cascade constraints;
commit;


-- table creation

create table tagTab (
    tagId number(3, 0),
    tagName varchar2(30),
    tagDescription varchar2(400),
    primary key(tagId)
);

create table publisherTab (
    publisherName varchar2(30),
    foundingYear number(4, 0),
    country varchar2(200),
    primary key(publisherName)
);

create table softwareTab (
    softwareId number(3, 0),
    softwareName varchar2(200),
    releaseDate Date,
    price number(6, 2),
    softwareDescription varchar2(1000),
    classification number (2, 1),
    ageRating number(2, 0),
    publisherName varchar2(30),
    primary key(softwareId),
    foreign key(publisherName) references publisherTab(publisherName)
);

create table tabUser (
    userId number(3,0),
    email varchar2(320),
    username varchar2(30),
    fullName varchar2(100),
    birthDate Date,
    region varchar2(30),
    primary key(userId)
);

create table transactionTab (
    transactionId number(3, 0),
    transactionDate Date,
    paymentType varchar2(30),
    recipientId number(3, 0),
    userId number(3, 0),
    primary key(transactionId),
    foreign key(userId) references tabUser(userId)
);

create table ownsTab (
    userId number(3, 0),
    softwareId number(3, 0),
    primary key(userId, softwareId),
    foreign key(userId) references tabUser(userId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table reviewTab (
    userId number(3, 0),
    softwareId number(3, 0),
    reviewDescription varchar2(1000),
    stars number(2,1),
    reviewDate Date,
    primary key(userId, softwareId),
    foreign key(userId) references tabUser(userId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table hasTab (
    transactionId number(3, 0),
    softwareId number(3, 0),
    primary key(transactionId, softwareId),
    foreign key(transactionId) references transactionTab(transactionId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table friendshipTab (
    friend1 number(3, 0),
    friend2 number(3, 0),
    primary key(friend1, friend2),
    foreign key(friend1) references tabUser(userId),
    foreign key(friend2) references tabUser(userId)
);

create table definedTab (
    softwareId number(3, 0),
    tagId number(3, 0),
    primary key(tagId, softwareId),
    foreign key(tagId) references tagTab(tagId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table expandsTab (
    basegame number(3,0),
    dlc number(3,0), 
    primary key(basegame, dlc),
    foreign key(basegame) references softwareTab(softwareId),
    foreign key(dlc) references softwareTab(softwareId)
);

create table threadTab (
    threadId number(3, 0),
    title varchar2(200),
    creationDate Date,
    softwareId number(3, 0), 
    primary key(threadId),
    foreign key (softwareId) references softwareTab(softwareId) 
);


create table commentsTab (
    threadId number(3, 0),
    userId number(3, 0),
    textA varchar2(1000),
    primary key(userId, threadId),
    foreign key(userId) references tabUser(userId),
    foreign key (threadId) references threadTab(threadId)
);

commit;

-- sequence creation

create sequence tagIdN
start with 1
increment by 1;

create sequence softwareIdN
start with 1
increment by 1;

create sequence userIdN
start with 1
increment by 1;

create sequence transactionIdN
start with 1
increment by 1;

create sequence threadIdN
start with 1
increment by 1;

commit;
