--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER LE IMMAGINI
--***************************************************************
-- COVER:

-- 1) Activity
Select path, alt, id
From Image_Activity
Where id = "ID DELL'ATTIVITA RICHIESTA dato in input" and is_cover == 1

-- 2) Destination
Select path, alt, id
From Image_Destination
Where id = "ID DELLA DESTINAZIONE RICHIESTA dato in input" and is_cover == 1

-- 3) Hotel
Select path, alt, id
From Image_Hotel
Where id = "ID DELL'HOTEL RICHIESTO dato in input" and is_cover == 1

-- 4) Airline
Select path, alt, id
From Image_Airline
Where id = "ID DELLA COMPAGNIA RICHIESTA dato in input" and is_cover == 1

--***************************************************************
-- IMMAGINI non cover
-- 1) Activity
Select path, alt, id
From Image_Activity
Where id = "ID DELL'ATTIVITA RICHIESTA dato in input" and is_cover == 0

-- 2) Destination
Select path, alt, id
From Image_Destination
Where id = "ID DELLA DESTINAZIONE RICHIESTA dato in input" and is_cover == 0

-- 3) Hotel
Select path, alt, id
From Image_Hotel
Where id = "ID DELL'HOTEL RICHIESTO" and is_cover == 0

-- 4) Airline
Select path, alt, id
From Image_Airline
Where id = "ID DELLA COMPAGNIA RICHIESTA dato in input" and is_cover == 0
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER L'ATTIVITA
--***************************************************************
-- LISTA ATTIVITA:
Select A.id, A.name, A.description, A.price
From Activity as A, Offers as O
Where O.destination == "ID della destinazione dato in input" and O.activity = A.id
Order by A.price
--***************************************************************
-- LISTA ATTIVITA SOTTO UN CERTO PREZZO:
Select A.id, A.name, A.description, A.price
From Activity as A, Offers as O
Where O.destination == "ID della destinazione dato in input" and O.activity = A.id and A.price <= "Cifra massima data in input"
Order by A.price
--***************************************************************
-- LISTA ATTIVITA SOPRA UN CERTO PREZZO:
Select A.id, A.name, A.description, A.price
From Activity as A, Offers as O
Where O.destination == "ID della destinazione dato in input" and O.activity = A.id and A.price >= "Cifra minima data in input"
Order by A.price
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER LA DESTINAZIONE
--***************************************************************
-- LISTA DESTINAZIONI:
Select id, name, continent, state, description
From Destination
--***************************************************************
-- DESTINAZIONE SINGOLA
Select id, name, continent, state, description
From Destination
Where id == "ID della destinazione dato in input"
--***************************************************************
-- LISTA DEI VIAGGI IN UN CONTINENTE
Select D.id, D.name
From Destination as D
Where D.continent == "Continente dato in input"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER L'HOTEL:
--***************************************************************
-- HOTEL DELLA DESTINAZIONE:
Select id, name, description, link
From Hotel
Where destination == "ID della destinazione dato in input"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER LA COMPAGNIA AEREA:
--***************************************************************
-- COMPAGNIA AEREA DELLA DESTINAZIONE:
Select A.name
From Airline as A, Flight as F
Where A.name = F.airline and F.destination == "ID della destinazione dato in input"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER IL VIAGGIO:
--***************************************************************
-- LISTA VIAGGI DI UNA DESTINAZIONE:
Select destination, start_date, end_date, price
From Travel
Where destination == "ID della destinazione dato in input"
--***************************************************************
-- LISTA DEI VIAGGI DATO UN INTERVALLO DI TEMPO
Select D.id, D.name, T.start_date, T.end_date, T.price
From Travel as T, Destination as D, Offers as O
Where T.start_date >= "Data minima di partenza data in input" and T.end_date <= "Data massima di partenza" 
and A.id = O.activity and O.destination = D.id
--***************************************************************
-- LISTA DEI VIAGGI DATA LA DATA MINIMA DI PARTENZA
Select D.id, D.name, T.start_date, T.end_date, T.price
From Travel as T, Destination as D, Offers as O
Where T.start_date >= "Data minima di partenza data in input" 
and A.id = O.activity and O.destination = D.id
--***************************************************************
-- LISTA DEI VIAGGI DATO UN PREZZO MASSIMO
Select D.id, D.name, T.price
From Travel as T, Destination as D
Where T.price <= "Prezzo massimo inserito" 
and A.id = O.activity and O.destination = D.id
--***************************************************************
-- LISTA DEI VIAGGI DATO UN PREZZO MINIMO
Select D.id, D.name, T.price
From Travel as T, Destination as D, Offers as O
Where T.price >= "Prezzo minimo inserito" 
and A.id = O.activity and O.destination = D.id
--***************************************************************
-- LISTA DEI VIAGGI DATO UN PREZZO MINIMO E UNO MASSIMO
Select D.id, D.name, T.price
From Travel as T, Destination as D, Offers as O
Where T.price >= "Prezzo minimo inserito" and T.price <= "Prezzo massimo inserito"
and A.id = O.activity and O.destination = D.id
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER L'ACQUISTO
--***************************************************************
-- STORICO DEI VIAGGI COMPRATI DA UN UTENTE CON PARTECIPANTI
Select Pu.id, Pu.destination, Pu.start_date, Pu.end_date, Pa.document_number, Pa.document_type, Pa.name, Pa.surname
From Partecipant as Pa, Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input" and Pu.id == Pa.purchase 
Order by Pu.id 
--***************************************************************
-- VISUALIZZAZIONE DEI VIAGGI COMPRATI
Select Pu.id, Pu.destination, Pu.start_date, Pu.end_date
From Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input"
--***************************************************************
-- VISUALIZZAZIONE DEI VIAGGI COMPRATI CON PARTENZA DOPO UNA CERTA DATA
Select Pu.id, Pu.destination, Pu.start_date, Pu.end_date
From Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input" and Pu.start_date >= "Data minima data in input"
order by Pu.start_date
--***************************************************************
-- VISUALIZZAZIONE DEI VIAGGI COMPRATI CON PARTENZA PRIMA UNA CERTA DATA
Select Pu.id, Pu.destination, Pu.start_date, Pu.end_date
From Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input" and Pu.start_date <= "Data minima data in input"
order by Pu.start_date
--***************************************************************
-- VISUALIZZAZIONE DEI VIAGGI COMPRATI PRIMA DI UNA CERTA DATA
Select Pu.id, Pu.moment, Pu.destination, Pu.start_date, Pu.end_date
From Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input" and Pu.moment <= "Data minima data in input"
order by Pu.moment
--***************************************************************
-- VISUALIZZAZIONE DEI VIAGGI COMPRATI DOPO DI UNA CERTA DATA
Select Pu.id, Pu.moment, Pu.destination, Pu.start_date, Pu.end_date
From Purchase as Pu, UserProfile as U
Where Pu.username == "username utente dato in input" and Pu.moment >= "Data minima data in input"
order by Pu.moment
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER L'USER
Select U.username, U.name, U.surname, U.gender, U.date_of_birth, U.email, U.numero, U.permission
From UserProfile as U
Where U.username == "username dato in input"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER I METODI DI PAGAMENTO
Select P.card_number, P.surname, P.name, U.username
From Userprofile as U, Payment_Method as P
Where U.username == "username dato in input"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PER I PARTECIPANTI
--***************************************************************
-- DATI ANAGRAFICI
Select surname, name, gender, date_of_birth, email, numero
From Partecipant
Where document_number == "xxx" AND document_type == "xxx"
