create table tag (
    tagId number(3, 0),
    tagName varchar2(30),
    tagDescription varchar2(200),
    primary key(tagId)
);

create table publisher (
    publisherName varchar2(30),
    foundingYear number(4, 0),
    country varchar2(200),
    primary key(publisherName)
);

create table software (
    softwareId number(3, 0),
    softwareName varchar2(200),
    releaseDate Date,
    price number(6, 2),
    softwareDescription varchar2(1000),
    classification number (2, 1),
    ageRating number(2, 0),
    publisherName varchar2(30),
    primary key(softwareId),
    foreign key(publisherName) references publisher(publisherName)
);

create table userA (
    userId number(3,0),
    email varchar2(320),
    username varchar2(30),
    fullName varchar2(100),
    birthDate Date,
    region varchar2(30),
    primary key(userId)
);

create table transactionA (
    transactionId number(3, 0),
    transactionDate Date,
    paymentType varchar2(30),
    recipientId number(3, 0),
    userId number(3, 0),
    primary key(transactionId),
    foreign key(userId) references userA(userId)
);

create table owns (
    userId number(3, 0),
    softwareId number(3, 0),
    primary key(userId, softwareId),
    foreign key(userId) references userA(userId),
    foreign key(softwareId) references software(softwareId)
);

create table review (
    userId number(3, 0),
    softwareId number(3, 0),
    reviewDescription varchar2(1000),
    stars number(2,1),
    reviewDate Date,
    primary key(userId, softwareId),
    foreign key(userId) references userA(userId),
    foreign key(softwareId) references software(softwareId)
);

create table has (
    transactionId number(3, 0),
    softwareId number(3, 0),
    primary key(transactionId, softwareId),
    foreign key(transactionId) references transactionA(transactionId),
    foreign key(softwareId) references software(softwareId)
);

create table friendship (
    friend1 number(3, 0),
    friend2 number(3, 0),
    primary key(friend1, friend2),
    foreign key(friend1) references userA(userId),
    foreign key(friend2) references userA(userId)
);

create table defined (
    softwareId number(3, 0),
    tagId number(3, 0),
    primary key(tagId, softwareId),
    foreign key(tagId) references tag(tagId),
    foreign key(softwareId) references software(softwareId)
);
