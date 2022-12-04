# Sito viaggi

## Organizzazione cartella assets

Per inserire gli assets creare all'interno della cartella un altra cartella con il nome della destinazione, all'interno di essa creare le cartelle:

* images;
* texts;
* hotel;
* activities;
* airline;

Dentro le cartelle create creare nuovamente le cartelle images e texts. Dentro la cartella activities creare una sottocartella per ogni attività (il cui nome è il nome dell'attività). 

Dentro le cartelle immagini scegliere un'immagine che farà da cover e chiamarla cover.

Nella cartella texts degli hotel aggiungere il file link.txt contenente il link al sito dell'hotel.

Esempio organizzazione:
```
── assets
   └── mwanza-tanzania
       ├── activities
       │   └── grande-migrazione
       │       ├── images
       │       │   └── cover.jpg
       │       └── texts
       │           ├── description.txt
       │           └── name.txt
       ├── airline
       │   ├── images
       │   │   └── af-logo.svg
       │   └── texts
       │       └── name.txt
       ├── hotel
       │   ├── images
       │   │   ├── bedroom1.jpg
       │   │   ├── bedroom2.jpg
       │   │   ├── bedroom3.jpg
       │   │   ├── cover.jpg
       │   │   ├── external1.jpg
       │   │   ├── external2.jpg
       │   │   └── external3.jpg
       │   └── texts
       │       ├── description.txt
       |       ├── link.txt
       │       └── name.txt
       ├── images
       |   ├── cover.jpg
       │   ├── lake-victoria1.jpg
       │   ├── lake-victoria2.jpg
       │   ├── mwanza1.jpg
       │   └── mwanza2.jpg
       └── texts
           ├── dates-price.txt
           └── description.txt
```
