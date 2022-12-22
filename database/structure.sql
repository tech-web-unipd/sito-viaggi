DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS Destination;
DROP TABLE IF EXISTS Do;
DROP TABLE IF EXISTS Airline;
DROP TABLE IF EXISTS Flight;
DROP TABLE IF EXISTS Hotel;
DROP TABLE IF EXISTS Travel;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Payment_Method;
DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Turist;
DROP TABLE IF EXISTS Image_Activity;
DROP TABLE IF EXISTS Image_Destination;
DROP TABLE IF EXISTS Image_Travel;
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
    FOREIGN KEY(destination) REFERENCES Destination(id),
    FOREIGN KEY(activity) REFERENCES Activity(id)
);

CREATE TABLE Airline(
    name varchar(100) PRIMARY KEY
);

CREATE TABLE Flight(
    destination int,
    airline varchar(100),
    PRIMARY KEY(destination, airline),
    FOREIGN KEY(destination) REFERENCES Destination(id),
    FOREIGN KEY(airline) REFERENCES Airline(name)
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
    /* id int PRIMARY KEY AUTO_INCREMENT,
    destination int not null,
    start_date date not null,
    end_date date not null,
    PROBLEMA POSSIAMO AVERE IDEALMENTE TANTI VIAGGI CON LA STESSA DATA D'INIZIO, A MENO CHE NON METTIAMO ANCHE GLI ALTRI 
    TRE ATTRIBUTI PER FARE UNA SUPERCHIAVE MA POI NON SO SE BASTA PASSARE SOLO L'ID PER LE IMMAGINI
    */
    PRIMARY KEY(destination, start_date, end_date),
    FOREIGN KEY(destination) REFERENCES Destination(id)
);
/*ALTER TABLE Travel AUTO_INCREMENT=00001;*/

CREATE TABLE User(
    username varchar(50) PRIMARY KEY,
    name varchar(100) not null,
    surname varchar(100) not null,
    gender char not null,
    date_of_birth DATE not null,
    pw_hash varchar(100) not null,
    email varchar(100) not null,
    numero varchar(20) not null,
    admin boolean not null
);

CREATE TABLE Payment_Method(
    card_number varchar(16) PRIMARY KEY,
    cvc varchar(3) not null,
    expiration
    name varchar(100) not null,
    surname varchar(100) not null,
);

CREATE TABLE Purchase(
    id int PRIMARY KEY AUTO_INCREMENT,
    moment timestamp not null,
    username varchar(50) not null,
    card varchar(16) not null,
    FOREIGN KEY(username) REFERENCES User(username),
    FOREIGN KEY(card) REFERENCES Payment_Method(card_number)
);
ALTER TABLE Purchase AUTO_INCREMENT=00001;

CREATE TABLE Turist(
    fiscal_code varchar(16) PRIMARY KEY, 
    name varchar(100) not null,
    surname varchar(100) not null,
    gender char not null,
    date_of_birth DATE not null,
    email varchar(100) not null,
    numero varchar(20) not null.
    purchase int not null,
    FOREIGN KEY(purchase) REFERENCES Purchase(id)
);

CREATE TABLE Image_Activity(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    activity int,
    PRIMARY KEY(id,activity),
    FOREIGN KEY(activity) REFERENCES Activity(id)
);
ALTER TABLE Image_Activity AUTO_INCREMENT=00001;

CREATE TABLE Image_Destination(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    destination int,
    PRIMARY KEY(id,destination),
    FOREIGN KEY(destination) REFERENCES Destination(id)
);
ALTER TABLE Image_Destination AUTO_INCREMENT=00001;

CREATE TABLE Image_Travel(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    destination int,
    start_date date,
    end_date date,
    /* travel int, */
    PRIMARY KEY(id,destination, start_date, end_date),
    FOREIGN KEY(destination) REFERENCES Destination(id),
    FOREIGN KEY(start_date) REFERENCES Travel(start_date),
    FOREIGN KEY(end_date) REFERENCES Travel(end_date)
    /*PRIMARY KEY (id, travel),
    FOREIGN KEY (travel) REFERENCES Travel(id)*/
);
ALTER TABLE Image_Travel AUTO_INCREMENT=00001;

CREATE TABLE Image_Airline(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    airline int,
    PRIMARY KEY(id,airline),
    FOREIGN KEY(airline) REFERENCES Airline(name)
);
ALTER TABLE Image_Airline AUTO_INCREMENT=00001;

CREATE TABLE Image_Hotel(
    id int AUTO_INCREMENT,
    path varchar(100) not null,
    alt varchar(100) not null,
    hotel int,
    PRIMARY KEY(id,hotel),
    FOREIGN KEY(hotel) REFERENCES Hotel(id)
);
ALTER TABLE Image_Hotel AUTO_INCREMENT=00001;