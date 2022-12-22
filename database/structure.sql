DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS Destination;
DROP TABLE IF EXISTS Do;
DROP TABLE IF EXISTS Airline;
DROP TABLE IF EXISTS Flight;
DROP TABLE IF EXISTS Hotel;
DROP TABLE IF EXISTS Travel;
DROP TABLE IF EXISTS UserProfile;
DROP TABLE IF EXISTS Payment_Method;
DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Partecipant;
DROP TABLE IF EXISTS Image_Activity;
DROP TABLE IF EXISTS Image_Destination;
DROP TABLE IF EXISTS Image_Airline;
DROP TABLE IF EXISTS Image_Hotel;

CREATE TABLE Activity(
    id int primary key AUTO_INCREMENT,
    name varchar(100) not null,
    description TEXT not null,
    price float not null
);
ALTER TABLE Activity AUTO_INCREMENT=00001;

CREATE TABLE Destination(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) not null,
    continent varchar(50) not null,
    description TEXT not null
);
ALTER TABLE Destination AUTO_INCREMENT=00001;

CREATE TABLE Do(
    destination int,
    activity int,
    PRIMARY KEY(destination, activity),
    FOREIGN KEY(destination) REFERENCES Destination(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(activity) REFERENCES Activity(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Airline(
    name varchar(100) PRIMARY KEY
);

CREATE TABLE Flight(
    destination int,
    airline varchar(100),
    PRIMARY KEY(destination, airline),
    FOREIGN KEY(destination) REFERENCES Destination(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(airline) REFERENCES Airline(name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Hotel(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) not null,
    description TEXT not null,
    link varchar(100)
);
ALTER TABLE Hotel AUTO_INCREMENT=00001;

CREATE TABLE Travel(
    destination int,
    start_date DATE,
    end_date DATE, 
    price float not null,
    PRIMARY KEY(destination, start_date, end_date),
    FOREIGN KEY(destination) REFERENCES Destination(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE UserProfile(
    username varchar(50) PRIMARY KEY,
    name varchar(100) not null,
    surname varchar(100) not null,
    gender ENUM('M','W','U') DEFAULT 'U' not null,
    date_of_birth DATE not null,
    pw_hash varchar(100) not null, 
    email varchar(100) not null,
    numero varchar(20) not null,
    permission ENUM('user','admin') DEFAULT 'user' not null
);

CREATE TABLE Payment_Method(
    card_number varchar(16) PRIMARY KEY,
    cvc varchar(3) not null,
    expiration date not null,
    name varchar(100) not null,
    surname varchar(100) not null,
    username varchar(50) not null,
    FOREIGN KEY(username) REFERENCES UserProfile(username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Purchase(
    id int PRIMARY KEY AUTO_INCREMENT,
    moment timestamp not null,
    username varchar(50) not null,
    card varchar(16) not null,
    destination int not null,
    start_date DATE not null,
    end_date DATE not null,
    FOREIGN KEY(username) REFERENCES UserProfile(username) ON DELETE NO ACTION ON UPDATE NO ACTION, 
    FOREIGN KEY(card) REFERENCES Payment_Method(card_number) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(destination, start_date, end_date) REFERENCES Travel(destination, start_date, end_date) ON DELETE NO ACTION ON UPDATE NO ACTION
);
ALTER TABLE Purchase AUTO_INCREMENT=00001;

CREATE TABLE Partecipant(
    document_type varchar(50),
    document_number varchar(50), 
    name varchar(100) not null,
    surname varchar(100) not null,
    gender ENUM('M','W','U') DEFAULT 'U' not null,
    date_of_birth DATE not null,
    email varchar(100) not null,
    numero varchar(20) not null,
    purchase int not null,
    PRIMARY KEY(document_type, document_number),
    FOREIGN KEY(purchase) REFERENCES Purchase(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Image_Activity(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    activity int,
    PRIMARY KEY(id,activity),
    FOREIGN KEY(activity) REFERENCES Activity(id) ON DELETE CASCADE ON UPDATE CASCADE
);
ALTER TABLE Image_Activity AUTO_INCREMENT=00001;

CREATE TABLE Image_Destination(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    destination int,
    PRIMARY KEY(id,destination),
    FOREIGN KEY(destination) REFERENCES Destination(id) ON DELETE CASCADE ON UPDATE CASCADE
);
ALTER TABLE Image_Destination AUTO_INCREMENT=00001;

CREATE TABLE Image_Airline(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    airline varchar(100),
    PRIMARY KEY(id,airline),
    FOREIGN KEY(airline) REFERENCES Airline(name) ON DELETE CASCADE ON UPDATE CASCADE
);
ALTER TABLE Image_Airline AUTO_INCREMENT=00001;

CREATE TABLE Image_Hotel(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    hotel int,
    PRIMARY KEY(id,hotel),
    FOREIGN KEY(hotel) REFERENCES Hotel(id) ON DELETE CASCADE ON UPDATE CASCADE
);
ALTER TABLE Image_Hotel AUTO_INCREMENT=00001;