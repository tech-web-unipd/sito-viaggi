-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 20, 2023 alle 21:15
-- Versione del server: 10.9.4-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progetto_tec_web`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `activity`
--

INSERT INTO `activity` (`id`, `name`, `description`, `price`) VALUES
(1, 'Tour della penisola del Capo in e-bike', '<p>Dopo un breve <span lang=\"en\">briefing</span> sulla sicurezza, inizierai a guidare a sud verso il <strong>Capo di Buona Speranza</strong>. Questa zona è un punto di riferimento di fama mondiale e contiene monumenti in onore di due dei più famosi esploratori del mondo: Vasco da Gama e <span lang=\"en\">Bartolomeu Dias</span>.</p><p>Lungo la strada, osserva oltre 250 specie di uccelli, babbuini, struzzi, cervi e la <span lang=\"en\">Cape Mountain Zebra</span>. Ti dirigerai quindi a <span lang=\"en\">Cape Point</span> dove scenderai dalla bicicletta per recarti al faro, dove avrai un po\' di tempo libero e alla fine pranzerai in un ristorante locale (non incluso). Dopo aver sfruttato al massimo <span lang=\"en\">Cape Point</span>, tornerai in bicicletta verso nord, dove hai iniziato a salire sul veicolo per l\'ultima attrazione della giornata.</p><p>Avrai la possibilità di visitare i <strong>pinguini</strong> a <span lang=\"en\">Boulders Beach</span> nell\'affascinante città costiera di <span lang=\"en\">Simon\'s Town</span>. Lì potrai osservarli tornare dall\'oceano, crogiolarsi sulla spiaggia o semplicemente riposare nel loro nido, da una piattaforma non intrusiva sopra il pavimento.</p>', 30),
(2, 'Table Mountain, Cape Point e Penguin Colony - Tour', '<p>Inizia questo <span lang=\"en\">tour</span> di un giorno a <span lang=\"af-ZA\">Bo Kaap</span> (<span lang=\"en\">Cape Malay Quarters</span>) con le sue case colorate, prima di raggiungere la stazione della <strong>funivia</strong> della <strong><span lang=\"en\">Table Mountain</span></strong>. Prendi la funivia e sali fino in cima per ammirare viste impareggiabili.</p><p>Percorri la costa atlantica e fermati alla <span lang=\"en\">Maiden\'s Cove</span> per scattare splendide foto con la catena montuosa dei 12 Apostoli a farti da sfondo. Goditi viste uniche dalla <span lang=\"en\">Chapman\'s Peak Drive</span>, una delle strade panoramiche più belle al mondo.</p><p>Visita la <strong><span lang=\"en\">Boulders Penguins Colony</span></strong> (colonia di pinguini) a <span lang=\"en\">Simon Town</span>, prima di raggiungere la Riserva Naturale del Capo di Buona Speranza. Regalati un <span lang=\"en\">tour</span> guidato in questo popolare luogo d\'interesse. Viaggia fino a <span lang=\"en\">Cape Point</span>, dove potrai fare un <span lang=\"en\">trekking</span> fino alla cima del faro o prendere la funicolare <span lang=\"en\">Flying Dutchman</span> fino alla vetta.</p>', 35),
(3, 'Safari all\'Aquila Private Game Reserve', '<p>Scopri animali come leoni, leopardi, elefanti, rinoceronti e bufali del Capo in questa gita di un giorno da Città del Capo alla riserva di caccia privata dell\'<span lang=\"en\">Aquila</span>. Fai un <span lang=\"en\">tour</span> di gioco in un veicolo fuoristrada scoperto. Sosta per un delizioso pranzo al <span lang=\"en\">lodge</span> della riserva.</p><p>Dopo una partenza mattutina, salirai sull\'autostrada N1, attraverso la spettacolare <span lang=\"en\">Hex River Valley</span>, e arriverai all\'<span lang=\"en\">Aquila Private Game Reserve</span>.</p><p>L\'<span lang=\"en\">habitat</span> ricco di biodiversità della riserva assicura molto interesse per gli appassionati di giochi e <span lang=\"en\">birdwatcher</span>. Avvista giraffe, <span lang=\"en\">blesbok</span>, gnu neri e blu, zebre, <span lang=\"en\">springbok</span>, <span lang=\"en\">gemsbok</span>, <span lang=\"en\">klipspringer</span>, cefalofoli, <span lang=\"en\">greybuck</span>, <span lang=\"en\">steenbok</span>, struzzi, babbuini, caracal, volpi, sciacalli e altro ancora.</p><p>Individua fino a 172 specie di uccelli, inclusa la maestosa aquila nera. Goditi un <span lang=\"en\">game drive</span> con un <span lang=\"en\">ranger</span> ben informato seguito da un delizioso pranzo al <span lang=\"en\">lodge</span>.</p>', 40),
(4, 'Gansbaai: <span lang=\"en\">tour</span> in barca', '<p>Visita l\'ecosistema dell\'<strong>isola di <span lang=\"en\"Dyer</span></strong> e cogli l\'opportunità di avvistare i <span lang=\"en\">Big Five</span> marini: balene, squali, foche, delfini e pinguini. Ogni anno, da giugno a dicembre, le balene australi arrivano per accoppiarsi e partorire. Osservale mentre si accoppiano, saltano fuori dall\'acqua, sbattono la coda, emergono con la testa dall\'acqua e altro ancora. Puoi anche avvistare le balenottere di <span lang=\"en\">Bryde</span>, le megattere, lo sfuggente delfino del genere Sousa e il delfino comune.</p><p>Questa escursione garantisce l\'avvistamento di un\'incredibile varietà di uccelli marini e della colonia di foche (composta da quasi 60.000 animali) che abita l\'isola di <span lang=\"en\">Geyser Rock</span>, visto che la barca passa dal famoso <span lang=\"en\">Shark Alley</span>. A bordo ci sarà un biologo marino, a disposizione per scoprire di più sugli incredibili animali che abitano questi lidi.</p>', 25.8),
(5, 'Immersione con gli squali', '<p>Partecipa a questa escursione e vivi l\'emozione di incontrare un grande squalo bianco. Scegli tra un <span lang=\"en\">tour</span> con prelievo dall\'hotel a <span lang=\"en\">Hermanus</span> o Città del Capo o un <span lang=\"en\">tour</span> con punto d\'incontro direttamente a <span lang=\"af-ZA\">Gansbaai</span>. Gusta una deliziosa colazione e un pranzo. Ricevi un certificato per l\'<strong>immersione</strong> in gabbia con gli <strong>squali</strong>.</p><p>Per prima cosa, goditi la colazione nello splendido <span lang=\"en\">Lodge</span>. La colazione continentale include <span lang=\"en\">muffin</span>, <span lang=\"fr\">quiche</span>, yogurt, cereali, pane tostato, salumi e tè e caffè preparati al momento.</p><p>Incontra lo <span lang=\"en\">skipper</span> per la giornata. Questi ha una vasta esperienza di lavoro nell\'area marina unica al largo della costa meridionale di Città del Capo. Gli <span lang=\"en\">skipper</span> hanno avuto più contatti con i grandi squali bianchi di chiunque altro al mondo.</p><p>Ascolta una breve presentazione introduttiva sul grande squalo bianco e scopri come il fornitore di attività opera con gli squali della zona. Trascorri tra le 2 e le 4 ore in mare, a seconda della frequenza con cui gli squali fanno visita alla barca. Assicurati di fare tutte le domande che desideri.</p><p>Entra nella gabbia, che può ospitare 6 persone alla volta. Ogni persona trascorre circa 20 minuti nella gabbia. Ricevi tutta l\'attrezzatura necessaria, inclusa la muta da 7 <abbr title=\"millimetri\">mm</abbr>. Non avrai bisogno del brevetto da sub per svolgere questa attività. Al ritorno sulla terraferma, fai rientro al <span lang=\"en\">Lodge</span> per un pranzo leggero.</p>', 43),
(6, 'Visita al mercato di Elgin in treno a vapore', '<p>Questo viaggio di andata e ritorno in <strong>treno</strong> di 160 <abbr title=\"metri\">km</abbr> ti porta a est da Città del Capo a <span lang=\"en\">Somerset West</span>, attraverso il <span lang=\"en\">Sir Lowrys Pass</span> alto 473 <abbr title=\"metri\">m</abbr>, offrendo viste maestose su <span lang=\"en\">False Bay</span> e sulle montagne circostanti, e infine sulla <span lang=\"en\">Elgin Valley</span>. La <span lang=\"en\">Elgin Valley</span>, sinonimo di mele, è uno dei distretti più intensivi dell\'Africa meridionale, producendo il 60% del raccolto nazionale di mele (di cui il 40% viene esportato annualmente).</p><p>Gli ospiti trascorrono il loro tempo in treno facendo ciò che gli piace di più, sia socializzare al bar, leggere un libro, ammirare i panorami, incontrare la famiglia o chiudere gli occhi e lasciare che i loro sensi li riportino in un altro posto nel tempo.</p><p>Arrivando al mercato ferroviario di <span lang=\"en\">Elgin</span>, gli ospiti possono scegliere tra bancarelle di cibo che offrono di tutto: <span lang=\"en\">curry</span> fragrante, cucina mediterranea, insalate vegane salutari, pollo piccante, pizza napoletana, costolette e <span lang=\"en\">hamburger</span>, <span lang=\"zh-CHS\">dim sum</span> esotici, <span lang=\"en\">nachos</span> messicani, deliziosi succhi di frutta freschi, gustosi <span lang=\"ns-ZA\">biltong</span>, cadono dall\'osso dell\'agnello e tailandese fresco. Anche i dolci sono abbondanti, includono fondente fatto in casa, gelato, cioccolato fatto a mano e, per finire, un\'ottima selezione di torte. Il bar serve vini locali, birra e sidro. L-Gin, dal gin bar artigianale di <span lang=\"en\">Elgin</span>, serve gin artigianali locali.</p>', 23),
(7, 'Tour con degustazione vini da Città del Capo', '<p>Intraprendi un favoloso viaggio nella terra del vino nel Sudafrica meridionale. Scopri il procedimento per produrre ottimi <strong>vini</strong>, dalla raccolta all\'imbottigliamento, e visita le cittadine storiche di <span lang=\"af-ZA\">Stellenbosch</span>, <span lang=\"fr\">Franschoek</span> e <span lang=\"af-ZA\">Paarl</span>.</p><p>Dopo il prelievo dal tuo hotel a Città del Capo, parti per esplorare le <span lang=\"af-ZA\">Stellenbosch</span> <span lang=\"en\">Winelands</span>, a soli 20 minuti dalla città. Goditi uno scenario superbo, completamente diverso dal paesaggio della penisola del Capo. In questa regione sono coltivati molti tipi diversi di uva, come <span lang=\"en\">Chenin Blanc</span>, <span lang=\"en\">Shiraz</span>, <span lang=\"af-ZA\">Pinotage</span> e anche il <span lang=\"fr\">Méthode Cap Classique</span>.</p><p>Esplora la piccola ma vivace cittadina di <span lang=\"af-ZA\">Stellenbosch</span>. Visita di una cantina seguita da una <strong>degustazione di vini</strong>. Avrai l\'opportunità di acquistare il vino locale da portare a casa con te, per poter assaporare i vini d\'annata di questa regione anche dopo che l\'avrai lasciata.</p><p>Quindi, visita <span lang=\"fr\">Franschoek</span> (l\'angolo francese), un antico villaggio ugonotto. Con le sue numerose strade e tenute dai nomi francesi, lì si percepiscono i resti della cultura francese e il fascino antico della città.</p><p>Assapora le prelibatezze, i formaggi e i migliori vini della regione. Ammira la valle di <span lang=\"fr\">Franschoek</span> mentre attraversi i vigneti a bordo di un tram scoperto.</p><p>Sosta presso il sito della prigione di <span lang=\"af-ZA\">Drakenstein</span>, un carcere di bassa sicurezza tra <span lang=\"af-ZA\">Paarl</span> e <span lang=\"fr\">Franschoek</span>. La prigione è famosa in quanto è il luogo dove Nelson Mandela ha passato l\'ultima parte della sua detenzione a causa della sua campagna contro l\'<span lang=\"af-ZA\">apartheid</span>.</p><p>Scopri la città di <span lang=\"af-ZA\">Paarl</span> che offre un\'immersione affascinante nella cultura e nelle tradizioni africane. Era un rifugio per i pionieri ugonotti che arrivarono dall\'Europa all\'inizio del diciassettesimo secolo, dopo l\'Editto di <span lang=\"af-ZA\">Nantes</span>. Per questo la città vanta un monumento dedicato a loro dedicato.</p><p>Potrai anche visitare le vigne della città, dove avrai l\'occasione di assaggiare i migliori vini della zona. Infine, fai ritorno a Città del Capo con riconsegna in hotel.</p>', 14.5),
(8, 'Il cratere di Ngorongoro - Safari', '<p>Il cratere di <strong>Ngorongoro</strong> è un’enorme caldera vulcanica formatasi circa due milioni e mezzo di anni fa per il collasso del vulcano ormai inattivo.</p><p>In questo safari si possono ammirare le pareti alte seicento metri che ospitano una incredibile quantità di animali, tra cui appunto i ricercatissimi <em><span lang=\"en\">“big five”</span></em>:<ul><li>elefante</li><li>leone</li><li>leopardo</li><li>bufalo</li><li>rinoceronte</li></ul> Quest’ultimo, pur presente nel Serengeti, dove è raramente avvistabile e solo da lontano, si può ben osservare nel cratere.</p><p>Il nostro spettacolo continua con:<ul><li>gnu</li><li>bufali</li><li>ghepardi</li><li>zebre</li><li>iene</li></ul>Avremo l\'occasione di osservare una grande varietà di uccelli tra cui: <ul><li>migliaia di fenicotteri rosa</li><li>poiane</li><li>falchi</li><li>struzzi</li><li>aquile</li></ul></p><p>Il cratere, in certo qual modo, offre tutto ciò di cui abbisognano gli animali, una sorta di paradiso in terra, ma può anche essere fonte di maggiori e sanguinose lotte per la sopravvivenza.</p>', 9),
(9, 'La grande migrazione - Safari', '<p>Un\'intera giornata di safari nell\'area del <strong>Ngorongoro</strong>.</p><p>In questa zona circa 1,5 milioni di gnu si mettono in marcia dalla Tanzania al Kenya, dando vita a uno spettacolo dalle gigantesche proporzioni. Non a caso, si tratta di una delle più grandi migrazioni animali al mondo, con i milioni di esemplari che si spostano in branco a caccia di cibo e che coinvolge anche:<ul><li>alligatori</li><li>leoni</li><li>zebre</li><p><p>Preparate foto e video, sarà pazzesco!</p>', 38),
(10, 'Parco nazionale dell\'isola di Rubondo - Safari', '<p>Il Parco Nazionale dell’isola <strong>Rubondo</strong> è una meta ideale per coloro che desiderano vivere esperienze speciali in un ambiente selvaggio poco frequentato.</p><p>Si tratta di un parco molto piccolo che, oltre a comprendere la stessa Rubondo, si estende sopra una serie di altre isolette per una superficie totale di 457 <abbr title=\"Chilometri quadrati\">kmq</abbr> ed è l’unico parco dell’Africa situato su un’isola. Negli anni ’60 e ‘70, per contrastare il bracconaggio, sono stati introdotti con successo dei mammiferi di grandi dimensioni come:<ul><li>rinoceronti (purtroppo poi catturati dai bracconieri)</li><li>elefanti</li><li>giraffe</li><li>roani</li><li>scimpanzé</li></ul> In particolare questi ultimi si sono ben ambientati e abituati alla presenza umana tanto da poterli avvicinare.</p><p>L’80% della superficie dell’isola è rivestita da una fitta foresta tropicale, un vero paradiso per molte specie di animali. Inoltre Rubondo è un’importante area di riproduzione sia per gli uccelli migratori sia per i pesci, in particolare il Tilapia e il persico del Nilo, in quanto l’isola è stata a lungo l’unica zona protetta del lago.</p><p>Rubondo è l’ideale per gli appassionati del <span lang=\"en\">birdwatching</span>: offre una delle più alte varietà e concentrazioni di uccelli in Tanzania, tanto da essere chiamata <em>“l’isola degli uccelli”</em>: ve ne sono più di 200 specie, tra cui una grande varietà di uccelli acquatici e di uccelli migratori. E solo a Rubondo si possono avvistare i pappagalli cinerini.</p><p>Nel parco si trovano molti animali:<ul><li>vari tipi di antilopi, come per esempio, l’antilope anfibia sitatunga che sta per lo più semisommersa negli stagni</li><li>ippopotami</li><li>coccodrilli</li><li>manguste</li><li>genette tigrine</li><li>lontre dal collo macchiato</li><li>scimmie</li><li>pitoni</li><li>cinghiali</li><li>colorate lucertole agama</li><li>aquile pescatrici</li><li>il falco grigio</li><li>l’uccellino tessitore di Pelzeln</li><li>elefanti</li><li>giraffe</li><li>roani</li><li>scimpanzé</li></ul></p>', 14),
(11, 'Parco del Serengeti - Safari', '<p>Preparatevi per vivere un documentario, il <strong>Serengeti</strong> è quello che corrisponde esattamente al nostro immaginario di <strong>Savana</strong>.</p><p>Cosa vedremo? Tra i paesaggi sicuramente i suoi alberi di acacia, con i leoni che riposano sui rami, ed i <span lang=\"af\">Kopje</span> (rocce arrotondate dove gli animali solitamente vanno a sonnecchiare e riscaldarsi).</p><p>Siamo all\'interno di un <strong>Patrimonio dell’Umanità</strong> dall\'<span lang=\"en\"><abbr title=\"United Nations Educational, Scientific and Cultural Organization\">UNESCO</abbr></span> e dal 1981 è considerato <strong>l’ottava meraviglia del mondo</strong>. Incroceremo gli gnu a cui si uniscono centinaia di migliaia di zebre e gazzelle di <span lang=\"en\">Thomson</span> alla ricerca di nuovi pascoli. Ma non ci accontenteremo, poiché gli altri protagonisti della giornata saranno:<ul><li>grandi branchi di bufali</li><li>piccoli gruppi di elefanti e giraffe</li><li>varie migliaia di antilopi</li><li>impala</li><li>gazzelle di Grant</li></ul></p><p>E non dimentichiamoci dei predatori: i leoni festeggiano coi loro cuccioli l’abbondanza delle prede e i leopardi solitari si riposano sui rami delle acacie lungo il fiume Seronera, mentre numerosi ghepardi vanno alla ricerca di cibo nelle piane a Sudest del parco. Si possono incontrare tutte e tre le specie di sciacalli (caso quasi unico), le iene maculate, e numerosi altri piccoli e timidi predatori, a partire dalla iena insettivora chiamata dagli afrikaans “lupo di terra” fino al bellissimo gatto selvatico. Infine si possono osservare anche:<ul><li>ippopotami</li><li>coccodrilli</li><li>facoceri</li><li>diverse specie di uccelli</li></ul></p><p>Sarà una giornata pazzesca, accompagnata da un forte senso di libertà offerto dalla visione spettacolare della pianura che si estende dorata oltre l’orizzonte.</p>', 33),
(12, 'Spettacolo e nuoto con i delfini', '<p>Guarda un incredibile spettacolo di <strong>delfini</strong> e goditi i trasferimenti di andata e ritorno in hotel da <strong>Sharm el Sheikh</strong>. Migliora il tuo biglietto d\'ingresso e fatti scattare una foto con questi simpatici animali, oppure fai una nuotata facoltativa con loro.</p><p>Dopo essere stato prelevato dal tuo hotel a Sharm el Sheikh, goditi un comodo trasferimento al <span lang=\"en\">Dolphina Park</span>. Fatti accogliere dal tuo <span lang=\"en\">host</span>, che ti condurrà allo spettacolo.</p><p>Goditi un\'esibizione accattivante con tre delfini mentre saltano con grazia dall\'acqua e interagiscono con il loro istruttore. Scatta foto memorabili mentre si divertono e giocano nell\'acqua.</p><p>Aggiorna il tuo biglietto per farti scattare una foto con i delfini o scegli di unirti a loro per una nuotata. Crea ricordi preziosi con la tua famiglia mentre conosci questi amati animali nell\'acqua.</p><p>Alla fine della tua giornata, siediti e rilassati con un comodo trasferimento di ritorno al tuo hotel a Sharm el Sheikh.</p>', 15),
(13, 'Safari notturno con cena e osservazione delle stelle', '<p>Scopri i segreti della <strong>vita beduina</strong> partecipando a questo <span lang=\"en\">tour</span> guidato in <strong>quad</strong> da <strong>Sharm el-Sheikh</strong>. Attraversa il deserto del <strong>Sinai</strong> fino a raggiungere un villaggio beduino e <strong>cavalca un cammello</strong>. Gusta una deliziosa cena <span lang=\"en\">barbecue</abbr> accompagnata da balli e spettacoli di fuoco. Concludi la serata ammirando il cielo notturno nel deserto.</p> <p>Nel pomeriggio, ricevi un servizio di prelievo dal tuo alloggio a Sharm el-Sheikh. Rilassati a bordo di un veicolo climatizzato in direzione nel deserto del Sinai. Ammira i paesaggi dorati del deserto prima di raggiungere un accampamento beduino.</p><p>Sali su un cammello per un giro di 10 minuti e scopri come un tempo si viaggiava nel deserto. Rilassati in una tenda beduina con una tazza di tè, in attesa di assaporare un\'appetitosa cena <span lang=\"en\">barbecue</abbr>.</p> <p>Cena a lume di candela e lasciati stupire dall\'intrattenimento offerto da ballerini di Tannura, danzatrici del ventre e artisti di spettacoli di fuoco. Dopo cena, goditi la tranquillità del deserto e osserva migliaia di stelle in un ambiente rilassato.</p><p>Cerca i pianeti usando un telescopio digitale. Dopodiché, torna in hotel a Sharm el-Sheikh.</p>', 46),
(14, 'Tour in quad al tramonto', '<p>Lasciati alle spalle <strong>Sharm El Sheikh</strong> e scopri la magia del deserto del <strong>Mar Rosso</strong> dal retro di un quad. Ammira le catene montuose della zona, goditi le opportunità fotografiche e impara tutto sullo stile di vita beduino come parte della tua esperienza.</p><p>Approfitta del ritiro e della riconsegna al tuo alloggio e preparati a partire per il pittoresco deserto. Arriva alla <span lang=\"en\">Desert Quad Station</span> e ricevi un briefing sulla sicurezza dal tuo equipaggio.</p><p>Sali sul tuo quad per un viaggio di 30 <abbr title=\"metri\">km</abbr> nell\'area delle montagne dell\'eco. Prova l\'emozione di sfrecciare attraverso il paesaggio naturale delle montagne della catena del <strong>Sinai</strong> meridionale in questo modo unico e divertente.</p><p>Solleva il quad e preparati a sentire la tua voce echeggiare lungo le formazioni. Grida e ascolta la tua voce tornare a te, echeggiando dalla montagna. Fai una pausa per una sosta fotografica per catturare lo scenario pittoresco mentre il sole tramonta.</p><p>Torna sul tuo <span lang=\"en\"><abbr title=\"All Terrain Vehicles\">ATV<abbr></span> e guida verso un villaggio beduino. All\'arrivo, scopri lo stile di vita tradizionale degli abitanti del villaggio e bevi un tè beduino in questo luogo autentico.</p><p>Partecipa a un giro in cammello opzionale, cena e spettacolo. Dopo la tua visita, torna al campo in <span lang=\"en\"><abbr title=\"All Terrain Vehicles\">ATV<abbr></span>, prima di tornare a Sharm El Sheikh e riconsegna al tuo hotel.</p>', 16),
(15, 'Visita al parco nazionale di Ras Mohammed', '<p>Parti per una gita di un\'intera giornata al Parco Nazionale di Ras Mohammed e fai snorkeling nel mondo marino sottomarino di <span lang=\"en\">White Island</span>. Dopo il prelievo dal tuo hotel a Sharm El Sheikh a partire dalle 8:00, verrai trasferito al porto dove farai una crociera in <span lang=\"en\">yacht</span> al Parco Nazionale di Ras Mohammed.</p><p>Quindi, il giorno è tuo per scoprire le piante colorate e la vita marina che circondano Ras Mohammed. Il <span lang=\"en\">tour</span> include 2 soste per lo snorkeling per vedere le barriere coralline, vari tipi di pesci e altri abitanti sottomarini. Rimarrai stupito dalla limpidezza dell\'acqua lungo la costa del Parco Nazionale. Dopo la prima sosta, ti verrà servito un delizioso pranzo a bordo.</p><p>Successivamente, farai il viaggio di 25 chilometri verso la splendida <span lang=\"en\">White Island</span>, dove potrai goderti un\'altra sosta per lo snorkeling. Dopo che tutte le fermate sono state completate e tutti sono soddisfatti della loro giornata, verrai lasciato al tuo hotel intorno alle 17:00.</p>', 8.6),
(16, 'Tour della città e shopping al mercato vecchio', '<p>Esplora <strong>Sharm <span lang=\"en\">City</span></strong> nel modo in cui ti regalerai luoghi memorabili per un\'esperienza di vita, girovagando per la baia di Namaa, visitando piazza Soho o facendo shopping nel vecchio mercato con il trasporto di andata e ritorno.</p><p>Ti invitiamo a esplorare le migliori zone di <strong>Sharm el sheikh</strong> in 3 ore di <span lang=\"en\">tour</span> della città con un\'auto privata con aria condizionata, il trasferimento ti verrà a prendere dal tuo hotel diretto a <strong>Namaa <span lang=\"en\">Bay</span></strong>. Avrai la possibilità di visitare la chiesa locale e la più grande <strong>moschea</strong> di Sharm el sheikh e scattare foto incredibili e memorabili in giro.</p><p>Dopodiché, passeremo davanti a <span lang=\"en\">Hollywood</span>, la migliore zona di intrattenimento di Sharm, cattureremo i bei momenti lì, quindi ci sposteremo al punto successivo, per continuare a esplorare la città di Sharm el Sheikh e fare una breve visita a piazza Soho con il suo famoso lungomare, negozi, e fontana danzante. Termineremo il <span lang=\"en\">tour</span> all\'<span lang=\"en\">Old</span> Sharm noto come <span lang=\"en\">Old Market</span>, un luogo vivace pieno di:<ul><li>bazar locali</li><li>negozi di spezie</li><li>negozi di <span lang=\"en\">souvenir</span></li><li>negozi di diversi frutti locali</li></ul> Infine torneremo al tuo hotel</p>', 6),
(17, 'Tour della città', '<p>Dopo il prelievo dal tuo alloggio a <strong><span lang=\"en\">Windhoek</span></strong>, parti per primo per il <strong><span lang=\"en\">tour</span> della città</strong>. Avrai l\'occasione di vedere luoghi come:<ul><li>le<span lang=\"en\">Houses of Parliament-National Assembly</span></li><li>i <span lang=\"en\">Parliament Gardens</span></li><li>la vecchia stazione ferroviaria</li><li>il Namibia <span lang=\"en\">Craft Center</span></li><li>Christuskirche (Christ Church)</li><li>Alte Feste <span lang=\"en\">(Old Fort)</span></li></ul> Fai una sosta al vecchio cimitero di <span lang=\"en\">Hochland Park</span>, un punto culminante anche per gli appassionati di storia.</p><p>Dal centro città, dirigiti verso la cittadina di <strong>Katutura</strong> per dare un\'occhiata alla vita nel più grande sobborgo di <span lang=\"en\">Windhoek</span>. Vantando persone provenienti da diversi gruppi culturali, Katutura è il posto dove stare se vuoi mescolarti con le culture vivaci e variegate della Namibia.</p><p>A Katatura, visita i <span lang=\"en\">\"Single Quarters\"</span>, un mercato locale dove puoi assaporare la specialità namibiana Kapana, manzo namibiano cucinato dai venditori locali. È inclusa anche una sosta a un progetto di responsabilizzazione della comunità locale. Dopo il <span lang=\"en\">tour</span>, verrai ricondotto al tuo alloggio.</p>', 6),
(18, 'Etosha National Park - Safari', '<p>Giornata dedicata ai <strong>fotosafari</strong> la mattina e il pomeriggio all’interno del Parco a bordo del <span lang=\"en\">truck</span>. La pozza d’acqua illuminata di <strong><span lang=\"af\">Okaukuejo</span></strong> attrae una grande quantità di animali durante la notte, permettendo così di vedere incredibili scene di vita naturale.</p>', 34),
(19, 'Visita alla tribù Himba', '<p>Si raggiunge la cittadina di <strong><span lang=\"af\">Opuwo</span></strong>. In questa zona gli <strong>Himba</strong>, tribù seminomade, vivono in insediamenti sparsi in tutta la regione. Essi sono caratterizzati dalla loro postura orgogliosa, ma sono molto cordiali e le donne si notano per la loro inusuale bellezza valorizzata dalle intricate pettinature e abiti tradizionali.</p> <p>Incontro con una guida Himba per la visita di un autentico villaggio per conoscere l’affascinante cultura di questo popolo.</p>', 9),
(20, 'Visita al mercato di <span lang=\"af\">Okahandja</span>', '<p>Visita al <strong>mercato dell’artigianato</strong> di <strong><span lang=\"af\">Okahandja</span></strong> dove sarà possibile fare un po’ di shopping di artigianato locale.</p>', 2),
(21, '<span lang=\"af\">Sossusvlei</span> e <span lang=\"af\">Deadvlei</span> - Safari', '<p>Il deserto di <strong><span lang=\"af\">Sossusvlei</span></strong> e di <strong><span lang=\"af\">Deadvlei</span></strong> è uno dei posti più belli della <strong>Namibia</strong>. Si trova nel cuore del <span lang=\"af\">Namib-Naukluft</span> <span lang=\"en\">Park</span>, nel centro dello stato, e fa parte del deserto della Namibia, uno dei più estesi e più belli al mondo.</p><p>Non si tratta di un normale deserto, poiché le sue alte dune sono di colore rosso e sono inconfondibili. La colorazione è dovuta all’alta percentuale di ferro contenuta nella sabbia.</p><p>Ma lo spettacolo più bello è offerto da <span lang=\"af\">Deadvlei</span>, un’area dove potrete ammirare un contrasto di colori incredibili! Il rosso della sabbia, il nero di alcuni alberi secchi e il bianco formato da uno stato di bicarbonato di calcio sulla sabbia. Questa sostanza è la responsabile della morte di questi alberi.</p>', 32),
(22, 'Visita alla città balneare di <span lang=\"af\">Swakopmund</span>', '<p><strong><span lang=\"af\">Swakopmund</span></strong> con i suoi 45.000 abitanti è la terza città più popolosa della Namibia ed anche una delle più particolari. Stretta tra l’Oceano Atlantico ed il deserto del Namib, più che una città africana sembra una città tedesca. La sensazione che avrai camminando per le sue strade è di aver sbagliato qualcosa e di essere arrivato per errore in Germania!</p>  <p>La città in effetti è stata fondata dai tedeschi nel 1892 come porto principale in Sudafrica.  L’architettura riflette questa storia evidente non solo sulle facciate dei palazzi ma anche nei nomi delle vie, dal fatto che molti residenti parlino proprio tedesco  e dai numerosi posti che vendono wurstel accompagnati da boccali di birra.</p>', 4),
(23, 'L’Allevamento di farfalle', '<p>Amato soprattutto dai bambini, nell’Allevamento delle farfalle potrai vedere in un colpo solo un’enorme varietà di questi colorati insettini. Un’attività originale ad Aruba ma non meno apprezzabile di altre.</p>', 7),
(24, 'Arikok', '<p>Aruba è anche un’isola è perfetta per ogni tipo di <strong>escursione</strong>. Tra le spiagge, l’entroterra e il parco desertico di Arikok, potrai organizzare gite diversissime tra loro.Unitevi a noi per un giro a cavallo del nord di Aruba e percorrete il deserto cactaceo sul dorso di questi splendidi animali. Andiamo! </p>', 8),
(25, '<span lang=\"en\">Palm Eagle Beach</span>', '<p>Forse la spiaggia bianca più bella dell’isola e la più apprezzata da ogni tipo di turista. Di certo, <span lang=\"en\">Palm Eagle Beach</span> è la più affollata. Puoi stenderti al sole sulla sabbia, all’ombra delle palme o dei tipici ombrelloni in paglia, oppure puoi fare <span lang=\"en\">sport</span> acquatici. In ogni caso è una spiaggia da non perdere.</p>', 4),
(26, '<span lang=\"en\">Quadirikiki Cave</span>', '<p>In questa grotta potrai assistere ai giochi di luce naturale dovuti ai diversi fori nella parte alta. Inoltre, potrai osservare antiche incisioni rupestri sulle sue pareti. Farai dunque un tuffo tra natura e storia per scoprire anche il lato più nascosto di Aruba.</p>', 8),
(27, '<span lang=\"es\">Cabildo Nacional e Casa Rosada</span>.', '<p>Edificato nel 1725, il <span lang=\"es\">Cabildo</span> fu la prima sede del governo e il luogo da cui ebbe inizio la battaglia per l’indipendenza dalla Spagna. L’attuale colonnato, costruito nel 1940, è stato realizzato restaurando gli originali undici archi che orlavano <span lang=\"es\">Plaza de Mayo</span> prima di essere demoliti per lasciare spazio ad <span lang=\"es\">Avenida de Mayo</span> e <span lang=\"es\">Avenida Julio Roca</span>. </p><p>All’interno del palazzo c’è un piccolo museo che offre una bella vista su <span lang=\"es\">Plaza de Mayo</span>.</p><p>La <span lang=\"es\">Casa Rosada</span> è uno dei più importanti edifici storici di <span lang=\"es\">Buenos Aires</span>: è la sede del governo dell’Argentina e della Presidenza della Repubblica. Il palazzo - come dice il nome stesso - ha un’inconfondibile facciata di colore rosa. </p><p>Entrambe queste strutture si trovano in <span lang=\"es\">Plaza de Mayo</span>.</p>', 10),
(28, 'Cattedrale Metropolitana', '<p><span lang=\"es\">Buenos Aires</span> sta al passo con i tempi e in uno dei suoi edifici storici ha recentemente inserito un museo. </p><p>Nulla di strano se fosse un palazzo qualsiasi, ma questa innovazione riguarda la Cattedrale Metropolitana, che ora ospita anche un museo dedicato a Papa Francesco, con alcuni degli oggetti che utilizzava quando era ancora il Cardinale Bergoglio, Arcivescovo di <span lang=\"es\">Buenos Aires</span>.</p>', 7),
(29, 'Fiume Paraná', '<p>Sali a bordo e divertiti mentre il tuo capitano ti porta attraverso le acque del <span lang=\"es\">Río de La Plata</span> durante il tuo giro in barca di 1 ora e 50 minuti. </p><ul>    <li>Naviga attraverso le acque del <span lang=\"es\">Río de la Plata</span> e del delta del fiume in una moderna crociera panoramica sulla strada per Tigre;</li>    <li>Ammira viste panoramiche della costa di Buenos Aires dal ponte di osservazione;</li>    <li>Esplora le isole della Tigre e del Delta;</li></ul><p>Dopo aver attraversato i quartieri di <span lang=\"es\">Nuñez, Olivos, Martinez e San Isidro</span>, la crociera attraverserà il fiume San Antonio fino al delta del fiume Paraná.</p>', 16),
(30, '<span lang=\"es\">Plaza de Mayo</span>', '<p>Situata nel Microcentro (quartiere di <span lang=\"es\">Monserrat</span>), nel luogo in cui avvenne la fondazione di Buenos Aires, la <span lang=\"es\">Plaza de Mayo</span> è la piazza pubblica più antica e importante della città.</p><p>Il nome della piazza è in memoria della Rivoluzione del 25 maggio 1810, data in cui i cittadini si riunirono proprio qui per espulsare il <span lang=\"es\">Viceré</span> e formare un governo creolo. Da allora, la piazza ha assistito agli avvenimenti politici e sociali più importanti del paese.</p>', 2),
(31, 'Isola <span lang=\"es\">Seymour</span>', '<p>In questa isola vulcanica, avremo la possibilità di osservare le colonie di fregate, gabbiani e sula piediazzurri e, se coincideremo con la stagione degli amori, potremo assistere alle loro curiose danze.</p><p>Grazie al suo clima, in alcune parti dell\'isola crescono cactus e salvadora persica, oltre molti alberi di palosanto, che gli antichi sciamani usavano a scopi terapeutici. Tra la sua fauna incontreremo l\'iguana autoctona delle <span lang=\"es\">Galápagos</span>. </p><p>Spostandoci verso la parte opposta dell\'isola, scorgeremo decine di leoni marini che giocano e nuotano tra le onde, e più tardi, assaporeremo un pranzo tradizionale nel quale non mancheranno riso e pesce.</p><p>Dopo aver ricaricato le pile, faremo ritorno al <span lang=\"es\">puerto Ayora de Isla Santa Cruz</span>, dove concluderemo l\'esperienza verso le 14:30. </p><p>Unisciti a noi per un\'escursione all\'Isola <span lang=\"es\">Seymour</span>, e vieni a visitare questo luogo straordinario nell\'arcipelago delle <span lang=\"es\">Galápagos</span>. Andiamo? </p>', 25),
(32, '<span lang=\"es\">Galápagos</span> <span lang=\"en\">Hopper Kicker Rock.</span>', '<p><span lang=\"es\">Galápagos</span> <span lang=\"en\">Hopper</span> è stato costruito su misura per ospitare un massimo di 12 passeggeri e la navigazione a bordo di questo catamarano è più stabile e calma, riducendo al minimo i problemi di vertigini che molti passeggeri si sentono sulle barche giornaliere. </p><p>Quindi, navigare a bordo della <span lang=\"es\">Galápagos</span> <span lang=\"en\">Hopper</span> è più confortevole e rilassante.</p>', 26.5),
(33, '<span lang=\"es\">Laguna de los Flamingos</span>', '<p>In questa visita alla <span lang=\"es\">Laguna de los Flamingos</span> conosceremo una delle enclavi naturali dell\'isola Isabela, scelta come habitat da bellissimi fenicotteri. Andiamo?</p><p>Nell\'arcipelago sono presenti circa 500 esemplari di fenicotteri, ma è sull\'isola Isabela che si concentra la più grande popolazione di questi uccelli. Grazie alla ricchezza naturale dell\'isola, così come al suo gran numero di lagune, i fenicotteri hanno infatti scelto questa enclave per procurarsi il cibo e stabilire la loro casa. </p><p>Visiteremo una di queste riserve d\'acqua dolce, dove incontreremo gli imponenti uccelli dalle piume rosa delle Isole <span lang=\"es\">Galapagos</span>. Secondo gli esperti, i volatili che vivono nell\'area costituiscono una sottospecie che ha saputo adattarsi al nuovo clima e al cibo presente in questo ecosistema. </p>', 22),
(34, 'Parco Nazionale', '<p>La bellezza naturale delle isole, la loro origine vulcanica, le dinamiche geologiche con cambiamenti permanenti e la bio-diversità ed unicità delle specie animali endemiche, che non si possono trovare altrove, sono tutte caratteristiche che rendono le isole un laboratorio vivente di processi evolutivi ancora in corso.</p><p>La flora e la fauna endemiche ed autoctone, uniche al mondo, rendono le Isole <span lang=\"es\">Galapagos</span> un luogo eccezionale e senza paragoni. </p><p>Qui si contano più di 45 specie di uccelli endemici, 42 rettili, 15 mammiferi e 79 specie di pesci. Le Isole <span lang=\"es\">Galapagos</span> hanno anche una ricca varietà di flora endemica, ben 500 specie tra cui piante vascolari, briofite e alghe.</p>', 12),
(35, '<span lang=\"es\">El Chalten</span>', '<p>Riconnettiti con la natura e ammira paesaggi memorabili in questo viaggio di <span lang=\"en\">trekking</span> a <span lang=\"es\">El Chalten</span> e alla <span lang=\"es\">Laguna de los Tres</span>, pranzo incluso. Ammira lo scenario e i paesaggi locali durante l\'escursione, comprese le viste su <span lang=\"en\">Fit Roy Mountain</span>.</p><p>Il viaggio inizia con il prelievo dagli hotel al mattino. Prendi la mitica Strada 40 che costeggia il Lago Argentino e intraprendi un viaggio nella città di <span lang=\"es\">El Chalten</span>, a 220 km da <span lang=\"es\">El Calafate</span>.</p><p>Una volta a <span lang=\"es\">Chalten</span>, fermati a <span lang=\"es\">Rancho Grande</span> (bar e rifugio alpino) per utilizzare il bagno, ricevere la tua mappa e imparare l\'uso di bastoncini e ramponi se necessario. Goditi caffè e snack gratuiti per ricaricarti sia prima che dopo il <span lang=\"en\">trekking</span>.</p><p>Durante il <span lang=\"en\">trekking</span>, avventurati all\'interno di una parte della foresta andina. Se sei fortunato, vedrai alcuni degli animali che vivono lì. Sorprenditi con tutti i paesaggi che attraverserai lungo il tuo cammino. Presto scoprirai che questo è un luogo naturale da sogno.</p>', 7),
(36, '<span lang=\"es\">Puerto Madryn</span>', '<p>Approfitta di un comodo servizio di prelievo da <span lang=\"es\">Puerto Madryn</span>, percorri le strade della Patagonia e raggiungi la Riserva di Punta Tombo. Osserva da vicino degli animali tipici dell\'area: guanachi, nandù di Darwin, lepri e molte altre specie. </p><p>Punta Tombo è il luogo prescelto dai pinguini di Magellano per la loro riproduzione annuale. Una volta raggiunta la riserva, avrai a disposizione non più di 3 ore per passeggiare lungo i vari sentieri e per ammirare da vicino queste incredibili creature. </p><p>Osservali nel loro nido o mentre nuotano in mare. Visita il Centro di interpretazione di Punta Tombo o goditi un pranzo presso il bar-ristorante.</p>', 5),
(37, '<span lang=\"en\">Tour</span> in catamarano.', '<p>Parti dal porticciolo turistico locale e sali a bordo di un\'imbarcazione moderna e confortevole. </p><p>Salpa e attraversa l\'ampia baia di <span lang=\"es\">Ushuaia</span>, fino ad arrivare al canale di <span lang=\"en\">Beagle</span> attraverso <span lang=\"es\">Paso Chico</span>. Naviga intorno all\'<span lang=\"es\">Isla de los Pájaros</span>, dove potrai apprezzare le varie specie di uccelli marini della Terra del Fuoco, come lo stercorario, l\'albatro sopracciglio nero, l\'anatra vaporiera, l\'oca di Magellano e il gabbiano grigio.</p><p>Raggiungi l\'<span lang=\"es\">Isla de los Lobos</span>, che appartiene all\'arcipelago <span lang=\"en\">Bridges</span> ed è abitata da 2 diverse specie di leoni marini. Dirigiti verso il faro <span lang=\"es\">Les Éclaireurs</span> (Gli illuminatori), dove troverai colonie di cormorani imperiali e cormorani di Magellano. Ascolta la storia del transatlantico Monte <span lang=\"es\">Cervantes</span>, affondato nel 1930.</p><p>Prosegui quindi con la navigazione verso est, in direzione del meraviglioso paesaggio del canale di <span lang=\"en\">Beagle</span>, circondato da splendide catene montuose. Ammira <span lang=\"es\">Puerto Almanza</span> sulla costa argentina e la base navale di <span lang=\"es\">Puerto</span> <span lang=\"en\">Williams</span> sulla costa cilena. Continua per l\'<span lang=\"es\">Isla Martillo</span>, conosciuta anche con il nome di <span lang=\"en\">Penguin Island</span>, dove avrai la possibilità di osservare una colonia di pinguini <span lang=\"es\">Papua</span> e di Magellano nel loro habitat naturale. Successivamente intraprendi il viaggio di ritorno al molo, punto di conclusione del <span lang=\"en\">tour</span>. </p>', 12.5),
(38, '<span lang=\"en\">Trekking</span> sul <span lang=\"es\">Perito Moreno</span>.', '<p>Fai un\'escursione con i ramponi a <span lang=\"es\">Perito Moreno</span> durante questa avventura in Patagonia. </p><p>Esplora una foresta a piedi e passeggia lungo le passerelle. Contempla l\'enorme massa di ghiaccio da diverse angolazioni durante una crociera di fronte al ghiacciaio.</p>', 2),
(39, 'Biglietto spettacolo danze <span lang=\"id\">Kecak</span>.', '<p>Guarda i nativi balinesi esibirsi in affascinanti <strong>danze <span lang=\"id\">Kecak</span></strong> complete di fiamme vorticose e costumi tradizionali, il tutto mentre il sole di <span lang=\"id\">Uluwatu</span> tramonta sullo sfondo, con questo biglietto d\'ingresso.</p>', 4),
(40, 'Escursione <span lang=\"en\">quad</span> atv e <span lang=\"en\">rafting</span>', '<p>Goditi la classica avventura combinata senza i problemi di guida autonoma in questa giornata piena di adrenalina. Scopri i <strong>sentieri della giungla</strong>, i villaggi rurali e le piantagioni di Bali, seguendo la tua guida fuoristrada attraverso la foresta pluviale e le risaie. Fai <strong><span lang=\"en\">rafting</span></strong> sull\'incontaminato fiume <span lang=\"id\">Ayung</span> e percorri l\'ATV attraverso le risaie, la foresta di bambù e i lussureggianti paesaggi tropicali di Bali.</p>', 22.6),
(41, '<span lang=\"en\">Tour</span> gastronomico e <span lang=\"en\">street food</span>', '<p>Scopri i mercati alimentari notturni dove vanno i locali quando il sole tramonta in una visita guidata. Unisciti a una guida locale mentre esplori la cucina, la cultura e l\'atmosfera di Bali, con diverse degustazioni di piatti locali inclusi. Inizia la tua avventura gastronomica in un <strong>mercato</strong> alimentare locale. Da lì, guida fino a <span lang=\"en\">\"Eat Street\"</strong>, popolare tra i locali di Bali. La tua guida ti spiegherà il cibo e le tradizioni di ciò che viene offerto.</p>', 2),
(42, 'Escursione avventura cascata <strong><span lang=\"zh-Hans\">Tai Mo Shan</span>', '<p>Fuggi dalle strade trafficate di Hong Kong per una mezza giornata di escursioni sulla montagna <strong><span lang=\"zh-Hans\">Tai Mo Shan</span></strong>, sede delle meravigliose cascate <strong>span lang=\"zh-Hans\">Tung Chai</span></strong>.</p><p>Dopo aver ammirato le cascate, proseguirai la visita visitando le mozzafiato <strong>Main Falls</strong>.</p><p>Passeggia per templi e villaggi e scopri piante e la vita degli animali locali grazie alla tua guida.</p><p>Aspettatevi un\'escursione moderatamente impegnativa, ma che vale la pena intraprendere!</p>', 7.9),
(43, 'Tour di guida privato di Lantau', '<p>Situato a soli 45 minuti da Hong Kong, le attrazioni naturali e culturali <strong>dell\'isola di Lantau</strong> ne fanno una meta ideale per gite di un giorno.</p><p>Questo tour privato dell\'isola include l\'accesso prioritario alla famosa <strong>statua del Grande Budda<strong> e un viaggio alla \"Venezia di Hong Kong\", al <strong>Tempio di <span lang=\"zh-Hans\">Kwan Tai</span></strong> e altro ancora, tutti con comodo trasporto privato.</p>', 17),
(44, '<span lang=\"en\">Tour</span> Schiena del Drago', '<p>Per cambiare ritmo dall\'affollata Hong Kong, immergiti nella natura con un tour di mezza giornata lungo il sentiero della <strong>Schiena del drago</strong>.</p><p>Considerata una delle migliori escursioni dell\'Asia, la Schiena del drago offre sentieri che si snodano lungo le montagne, attraverso i boschi e verso le sabbie bianche di <span lang=\"zh-Hans\">Tai Long Wan </span>(la Baia della Grande onda).</p> ', 9.9),
(45, '<span lang=\"en\">Tour</span> Gastronomico di Hong Kong: Quartieri <span lang=\"en\">Central</span> e <span lang=\"zh-Hans\">Sheung Wan</span>', '<p>Passeggia per i quartieri <span lang=\"en\">Central</span> e <span lang=\"zh-Hans\">Sheung Wan</span> a Hong Kong in questo incredibile tour di quattro ore che ti farà conoscere i <strong>gusti e i sapori dell\'Asia</strong>.</p><p>Vai fuori dai soliti percorsi e assaggia il cibo in sei diverse destinazioni culinarie mentre segui la tua guida locale esperta attraverso vie secondarie e mercati all\'aperto.</p> ', 19),
(46, '<span lang=\"en\">Tour</span> privato della città di Hong Kong', '<p>Esplora Hong Kong come un locale in questo <strong>tour privato</strong>.</p><p>Optare per un tour privato significa che puoi personalizzare il tuo itinerario in base ai tuoi interessi, che si tratti di cibo e moda, cultura o storia.</p><p>Visiterai i mercati locali, i templi meno conosciuti e la parte più diversificata a livello globale di <strong> <span lang=\"zh-Hans\">Kowloon</span> </strong>.</p>', 12.4),
(47, 'Mercato di <span lang=\"ko\">Gwangjang</span>', '<p>Il mercato di <strong><span lang=\"ko\">Gwangjang</span></strong>, il primo e più antico mercato coperto di <span lang=\"ko\">Seoul</span>, era originariamente il luogo in cui acquistare capi di abbigliamento tradizionali coreani, come l\'hanbok.</p><p>Sebbene il mercato sia ancora specializzato in tessuti, è diventato uno dei più grandi punti caldi dello <span lang=\"en\">street food</span> di Seoul, dove i buongustai possono assaggiare quasi ogni tipo di <strong>cucina coreana</strong> sotto lo stesso tetto.</p>', 2),
(48, 'Palazzo <span lang=\"ko\">Gyeongbokgung</span>', '<p>I terreni del <strong>palazzo reale</strong> si estendono per 100 acri e offrono una serie di luoghi da vedere, tra cui il padiglione <strong><span lang=\"ko\">Gyeonghoeru</span></strong>, lo stagno <span lang=\"ko\">Hyangwonjeong</span> e il Museo nazionale del folklore della Corea.</p><p>Altri punti salienti sono la Terza Porta Interna (<span lang=\"ko\">Geunjeongmun</span>), la Sala del Trono (<span lang=\"ko\">Geunjeongjeon</span>), l\'Ufficio Esecutivo (<span lang=\"ko\">Sajeongjeon</span>) e, naturalmente, gli alloggi del re e della regina.</p>', 5),
(49, 'Lotte <span lang=\"en\">World</span>', '<p><strong>Lotte <span lang=\"en\">World</span></strong>è uno dei più grandi parchi di divertimento al coperto del pianeta.</p><p>Ospitato in gran parte in vetro per consentire la luce naturale, il complesso offre quartieri a tema <span lang=\"en\">country</span>,completi di sfilate su larga scala, lungometraggi, spettacoli di luci laser, tante giostre e una gamma impressionante di cucina internazionale.</p>', 20),
(50, 'Via dello <span lang=\"en\">shopping</span> di <span lang=\"ko\">Myeongdong</span>', '<p>La risposta di Seoul alla <span lang=\"en\">Fifth Avenue</span> a <span lang=\"en\">New York</span>, <strong><span lang=\"ko\">Myeongdong</span> <span lang=\"en\">Shopping Street</span></strong>pullula di negozi di marca a prezzi accessibilie grandi magazzini che vendono tutte le varietà di abbigliamento, scarpe e accessori.</p><p>Questa mecca del commercio si estende dalla stazione della metropolitana di <span lang=\"en\">Myeongdong</span> ai grandi magazzini Lotte e comprende anche molte delle strade e dei vicoli circostanti.</p><p>Per gli acquirenti che hanno stuzzicato l\'appetito, i ristoranti della zona sono specializzati in cotoletta di maiale coreano (<span lang=\"ko\">dongaseu</span>) e zuppa di noodle (<span lang=\"ko\">kalguksu</span>).</p>', 2),
(51, 'Torre di <span lang=\"ko\">Namsan</span>', '<p>Raggiungi la cima della <strong>Torre <span lang=\"ko\">Namsan</span></strong> nel collinoso <span lang=\"ko\">Namsan</span> <span lang=\"en\">Park</span>, il più grande di <span lang=\"ko\">Seoul</span>, per alcune delle migliori viste panoramiche sulla capitale sudcoreana.</p><p>La torre di 237 metri offre tre ponti di osservazione e una molti di ristoranti da cui è possibile ammirare il panorama.</p><p>La torre è stata a lungo un luogo popolare per gli appuntamenti dei coreani infatti noterai che le ringhiere intorno alla torre sono coperte di lucchetti colorati.</p><p>Queste serrature sono spesso decorate con nomi di coppie che le hanno lasciate sulla torre come simbolo dell\'amore eterno.</p>', 12),
(52, 'Visita guidata ad <span lang=\"ja\">Asakusa</span>', '<p>Durante la visita guidata di <strong><span lang=\"ja\">Asakusa</span></strong> ti immergerai nella sua magica atmosfera, un misto di modernità e tradizione, e visiterai il tempio di <strong><span lang=\"ja\">Sensoji</span></strong>, il più antico e importante santuario buddista della capitale nipponica.</p><p>Nelle vicinanze, troverai la strada <strong><span lang=\"ja\">Nakamise</span></strong> con i suoi oltre 300 anni di storia e la strada <span lang=\"ja\">Kappabashi</span>, vicolo con numerose bancarelle.</p><p>In seguito ti incamminerai verso la porta <span lang=\"ja\">Kaminari-mon</span>, la Porta del Tuono dovce potrai farti immortalare accanto al monumento.</p><p>Infine potrai scegliere come ultima attività tra un giro in risciò per <span lang=\"ja\">Asakusa</span> o una tradizionale cerimonia del tè.</p>', 6),
(53, '<span lang=\"en\">Tour</span> del mercato ittico di <span lang=\"ja\">Tsukiji</span>', '<p>Il Giappone è noto per i suoi frutti di mare freschi, con questa attività potrai esplorare il <strong>mercato del pesce di <span lang=\"ja\">Tsukiji</span></strong>, dove i migliori chef di Tokyo acquistano pesce di alta qualità.</p><p>La tua guida ti guida attraverso il tentacolare mercato di 80 anni per visitare pescherie e venditori di generi alimentari.</p><p>Assaggia una gamma di sushi, omelette in stile giapponese, torte di pesce fritto, sake e tè giapponese in questa profonda esperienza del leggendario mercato.</p>', 15),
(54, 'Escursione Monte <span lang=\"ja\">Fuji</span>', '<p>Scopri i luoghi turistici più famosi intorno al <strong>Monte <span lang=\"ja\">Fuji</span></strong>.</p><p>Scopri la storia e la cultura giapponese mentre ti immergi nelle viste spettacolari intorno al Monte <span lang=\"ja\">Fuji</span>.</p><p>Parti da Tokyo in autobus e arriva al Parco <span lang=\"ja\">Kawaguchiko Oishi</span>, dove puoi scattare bellissime foto con il lago <span lang=\"ja\">Kawaguchi</span> e il Monte <span lang=\"ja\">Fuji</span> sullo sfondo.</p><p>Ammira le viste panoramiche della città con il Monte <span lang=\"ja\">Fuji</span> sullo sfondo e ammira i fiori di ciliegio.</p>', 6.2);
INSERT INTO `activity` (`id`, `name`, `description`, `price`) VALUES
(55, 'Tokyo <span lang=\"en\">Sky Tree</span>', '<p>Ammira panorami impareggiabili su Tokyo dal Ponte d\'osservazione Tembo sulla torre <strong>Tokyo <span lang=\"en\">Sky Tree</span></strong>, grazie a questo biglietto d\'ingresso.</p><p>Prova il brivido di salire in ascensore a un\'altezza di 350 metri.</p><p>Questa enorme piattaforma circolare è caratterizzata da finestre su tutti i lati, che ti garantiscono una visuale a 360 gradi della città di Tokyo.</p><p>Ammira il sinuoso fiume Sumida e cerca di avvistare lo stadio Tokyo <span lang=\"en\">Dome</span> e la Tokyo <span lang=\"en\">Tower</span>, grazie agli schermi interattivi che ti aiuteranno a individuare i vari punti di interesse.</p>', 7),
(56, '<span lang=\"en\">Tour</span> privato Tokyo', '<p>Questo <strong>tour di mezza giornata</strong> è la scelta ideale per i viaggiatori più esigenti che visitano Tokyo.</p><p>Un vantaggio del tour è che non perderai tempo andando a visitare luoghi che non ti interessano, in quanto il percorso può essere <strong>personalizzato</strong>.</p><p>Un itinerario campione può includere il Tempio <span lang=\"ja\">Senso-ji</span> ad <span lang=\"ja\">Asakusa</span>, il passaggio di <span lang=\"ja\">Shibuya</span>, la via <span lang=\"ja\">Takeshita</span> a <span lang=\"ja\">Harajuku</span>, il palazzo imperiale e il giardino nazionale <span lang=\"ja\">Shinjuku Gyoen</span>.</p>', 15.8),
(57, 'Cattedrale di San Michele Arcangelo e Santa Gudula.', '<p>La Cattedrale di San Michele e Santa Gudula (<span lang=\"fr\">Cathédrale Saint-Michel et Sainte-Gudule</span>) è uno degli edifici più emblematici di <span lang=\"fr\">Bruxelles</span>.La sua costruzione, in stile gotico, fu iniziata nel XIII secolo, sulle basi di un edificio romanico del XI secolo, e fu terminata dopo due secoli. Il suo attuale stato di conservazione è molto buono, grazie ad un intervento di restauro realizzato fra il 1983 e il 1989.La cattedrale era conosciuta come la Chiesa di San Michele fino a quando, nel 1047, si depositarono al suo interno i resti di Santa Gudula (deceduta nel 712). Fu allora che la Chiesa assunse il nome di San Michele e Santa Gudula. Malgrado la sua antichità, la chiesa non acquisì il titolo di cattedrale fino al 1961.</p>', 5),
(58, 'La <span lang=\"fr\">Grand Place</span> - Visita', '<p>Dal 1998 Patrimonio dell’Umanità <span lang=\"en\"><abbr title=\"United Nations Educational, Scientific and Cultural Organization\">UNESCO</abbr></span>, la “Grande Piazza” è il punto di partenza obbligato di una vacanza a <span lang=\"fr\">Bruxelles</span>. Si tratta indubbiamente di una delle piazze più belle del mondo, addirittura la più bella di tutte secondo <span lang=\"fr\">Victor Hugo</span>.</p><p>Il fascino della <strong><span lang=\"fr\">Grand Place</span></strong> è legato alla sua monumentalità. Tutt’attorno, infatti, sorgono i più importanti edifici storici cittadini, tra cui spiccano l’<span lang=\"fr\">Hotel de Ville</span> e la <span lang=\"fr\">Maison du Roi</span>. Il primo, sede del Municipio, è una delle testimonianze più importanti a livello europeo dei prodigi dell’architettura gotica.Da non perdere la statua di San Michele Arcangelo, patrono della città, che sormonta la torre del municipio. La <span lang=\"fr\">Maison du Roi</span>, invece, è uno dei tanti possedimenti del potente Ducato di <span lang=\"fr\">Brabante</span>.</p>', 20),
(59, 'Musei Reali di Belle Arti', '<p>I Musei Reali di Belle Arti del Belgio sono la più importante esposizione d’arte di tutta la nazione. Collocati in quattro palazzi della città, ospitano una collezione che vanta più di 1000 opere tra dipinti, sculture e disegni rappresentando un circuito che spazia dall’arte antica a quella moderna: il Museo di Arte Antica (XV-XVIIIe secolo), quello di Arte Moderna (XIX – XX secolo), il Museo <span lang=\"fr\">Wiertz</span> e il Museo <span lang=\"fr\">Meunier</span>.</p><p>Il nucleo fondamentale del Museo di Arte Antica sono le opere dei fiamminghi. Il Museo di Arte Moderna ospita circa 200 tavole che raccontano l’arte in Belgio dal 1800 fino ad oggi.</p>', 9),
(60, 'Museo <span lang=\"fr\">Magritte</span>', '<p>La collezione del <strong>Museo <span lang=\"fr\">Magritte</span></strong> è un excursus affascinante che vi farà conoscere il pensiero di <span lang=\"fr\">Magritte</span>, i suoi temi ricorrenti, movimenti e artisti che più lo hanno influenzato e i numerosi campi artistici in cui si è cimentato. In esposizione troverete infatti dipinti, compresi alcuni tra i più famosi, ma anche disegni, sculture, <span lang=\"en\">poster</span> pubblicitari, fotografie, film e spartiti musicali. </p><p>Il museo comprende anche la più ampia collezione al mondo di opere del periodo <span lang=\"fr\">“vache”</span>, importante perché in questo periodo lo stile dell’artista subì una nuova evoluzione. Grazie agli spunti derivati da disegni caricaturali e fumetti tanto amati dalla cultura popolare dell’epoca <span lang=\"fr\">Magritte</span> si fece più rapido, aggressivo e pungente.</p>', 14),
(61, '<span lang=\"es\">Cala d\'Hort</span>', '<p>Pittoresca e affascinante, specie al tramonto, la spiaggia di <span lang=\"es\">Cala d’Hort</span> si trova lungo la costa sud occidentale di <span lang=\"es\">Ibiza</span> e si specchia sulla magnetica isola di <span lang=\"es\">Es Vedra</span> e su <span lang=\"es\">Es Vedranell</span>. </p><p>La spiaggia di sabbia chiara finissima, e in alcuni punti rocciosa, è lunga 150 metri e larga 20 e in estate è spesso affollata soprattutto perché i tramonti che si possono ammirare da qui sono tra i più belli e suggestivi dell’isola. Alle spalle della spiaggia si trovano delle basse scogliere. </p><p>Da provare i 3 rinomati ristoranti, di cui 2 sulla spiaggia, che servono <span lang=\"es\">Cala d’Hort</span>. </p><p><span lang=\"es\">Cala d’Hort</span> si trova a metà strada tra i borghi di <span lang=\"es\">Sant Josep de sa Talaia</span> e <span lang=\"es\">Cala Vadella</span>.</p>', 25),
(62, '<span lang=\"es\">Cova de Can Marçà</span>', '<p>Localizzata in un bellissimo contesto naturale del nord d\'<span lang=\"es\">Ibiza, Can Marçà</span> è un\'impressionante caverna con oltre 100.000 anni d\'antichità, ubicata all\'interno di una scogliera del <span lang=\"es\">Port de Sant Miquel</span>.</p><p>La caverna fu scoperta da gruppi di contrabbandieri, che la utilizzarono per nascondere le loro merci; ancora si possono vedere i loro simboli, che segnalavano l\'ingresso e l\'uscita. Dagli anni \'80 la caverna è diventata uno dei più importanti punti d\'interesse dell\'isola.</p><p>In un itinerario di 40 minuti all\'interno della caverna, si può godere delle viste di un affascinante scenario naturale, creato dalla mani della natura nel corso dei secoli. Stalattiti e stalagmiti formano delle decorazioni affilate, che in passato si crearono per l\'azione dell\'acqua, che scorreva lungo la caverna, attualmente asciutta.</p>', 6),
(63, '<span lang=\"es\">Dalt Vila</span>', '<p><span lang=\"es\">Dalt Vila</span>, dal 1999 Patrimonio dell’Umanità <span lang=\"en\"><abbr title=\"United Nations Educational, Scientific and Cultural Organization\">UNESCO</abbr></span>, è un compendio perfetto di quella doppia anima di <span lang=\"es\">Ibiza</span>.</p><p>Si tratta, infatti, di un grande museo a cielo aperto che però nel periodo estivo viene letteralmente invaso da turisti a passeggio per il dedalo di viuzze strette della zona. Ovviamente non mancano bar, ristoranti e negozi, così come non mancano artisti di strada e personaggi vestiti in maniera eccentrica che a Ibiza, in verità, abbondano. Davvero tante le cose da vedere.</p><p>Situata in una graziosa collina nella città di <span lang=\"es\">Ibiza (Eivissa)</span>, l\'area fortificata di <span lang=\"es\">Dalt Vila</span> è stata occupata sin dai tempi dei fenici. Dietro le sue massicce mura difensive e i bastioni del sedicesimo secolo si trova un labirinto di strade acciottolate che si inerpicano fino alla cattedrale in cima, dove attendono vedute della costa scintillante.</p>', 12),
(64, '<span lang=\"es\">Necropoli di Puig des Molins</span>', '<p>Se oltre al mare, le spiagge e il <span lang=\"en\">by night</span> vi interessa approfondire la storia dell’isola, beh allora la <span lang=\"es\">Necropoli di Puig des Molins</span> merita assolutamente una visita.</p><p><span lang=\"es\">Ibiza</span>, infatti, nei millenni ha subito diverse dominazioni. Indubbiamente quella araba è stata la più significativa, ma prima c’erano stati Fenici, Cartaginesi e Romani. Furono proprio i primi a costruire le catacombe a poche centinaia di metri dal villaggio dove si erano stanziati.</p><p>Questa necropoli fu dichiarata Patrimonio dell’Umanità dall’<span lang=\"en\"><abbr title=\"United Nations Educational, Scientific and Cultural Organization\">UNESCO</abbr></span> nel 1999.</p>', 3),
(65, 'Tour in moto d\'acqua', '<p>Prenotando questa esperienza in moto d\'acqua a <span lang=\"es\">Ibiza</span>, potrai scegliere fra i seguenti 4 itinerari. Gli istruttori vi spiegheranno il funzionamento della moto e vi daranno assistenza durante l\'attività.</p><p>Tour di 30 minuti: un tour di <span lang=\"es\">Cala Salada</span> da 30 intensi minuti, con soste a <span lang=\"es\">Cala Salada</span> o <span lang=\"es\">Cala Conta</span> per fare un bagno o fare foto.</p><p>Tour a <span lang=\"es\">Es Vedrá</span> (1 ora): raggiungi <span lang=\"es\">Es Vedrá</span>, un\'isola ricca di misteri, miti e leggende.</p><p>Tour a <span lang=\"es\">Isla Margarita</span> (1 ora): caratterizzata da una forma decisamente peculiare, si tratta dell\'isola più interessante che visiteremo.</p><p>Tour <span lang=\"es\">\"Atlantis\"</span>(1,5 ore): in questo tour visiteremo il luogo in cui fu estratta la roccia per le mura di <span lang=\"es\">Dalt Vila</span>, un paesaggio decisamente paparazzato.</p>', 22),
(66, 'La Cattedrale di San Nicola', '<p>Uno dei monumenti più particolari che si incontrano a Nizza è la Cattedrale Russa Ortodossa di <span lang=\"fr\">Saint-Nicolas</span>.</p><p>La chiesa si trova poco fuori dal centro, nel quartiere <span lang=\"fr\">Saint-Philippe</span>, ma si raggiunge facilmente a piedi: </p><p>dalla <span lang=\"fr\">Promenade des Anglais</span> percorrendo <span lang=\"fr\">Boulevard</span> Gambetta, si supera il ponte della ferrovia – si passa sotto il ponte. Una volta superato il ponte si svolta a sinistra e dopo pochi minuti si è arrivati… In circa 15 minuti si passa dal mare alla Russia!</p><p>La chiesa è stata costruita a inizio del ventesimo secolo vista la foltissima comunità russa in Costa Azzurra e in particolare a Nizza e lo cose sono state fatte in grande… è uno degli edifici ortodossi più importanti fuori dai confini della Russia.</p><p>Dopo alcuni lavori di ristrutturazione, la Cattedrale è stata inaugurata a inizio 2016 per permettere a tutti di ri-scoprire questo gioiello nascosto di Nizza.</p>', 35),
(67, 'La città vecchia', '<p>La città vecchia è caratterizzata dalla presenza di mercatini alimentari, stradine e caffè affollati.</p><p>Gli edifici color pastello, le vecchie chiese e vicoletti la rendono davvero unica. Le strade sono piene di negozi e ristoranti, piccole piazze e caffè affollati. </p><p>Perditi nelle affascinanti stradine secondarie o siediti a un tavolo all\'aperto in una delle piazze e fermati a osservare la gente. L\'area è ancora abitata da molti locali. Alza lo sguardo per vedere le corde per stendere il bucato che vanno da un balcone all\'altro e i vicini che parlano attraverso le persiane aperte.</p><p>L\'area della città vecchia si estende tra Colline <span lang=\"fr\">du Château</span> e il centro della città, a poca distanza dalla spiaggia e da <span lang=\"fr\">Quai des Étas Unis</span> (il lungomare che si estende dopo la <span lang=\"fr\">Promenade des Anglais</span>). Passeggia sotto gli archi antichi e all\'interno di <span lang=\"fr\">Cours Salaya</span>, un mercato all\'aperto circondato da caffè e ristoranti. </p><p>Acquista i prodotti locali e i fiori freschi ogni mattina, tranne il lunedì, quando l\'area si trasforma in un mercatino delle pulci. Se vuoi evitare le folla e acquistare insieme alla gente del posto, però, cerca di arrivare presto.</p>', 25),
(68, 'Museo <span lang=\"fr\">Marc Chagall</span>.', '<p>Il Museo <span lang=\"fr\">Marc Chagall</span> è uno dei musei più importanti di Nizza.</p><p>Situato in una verde cornice mediterranea, nel cuore di <span lang=\"fr\">Cimiez</span>, prendetevi il tempo per una pausa <span lang=\"fr\">gourmet</span>.In un magnifico edificio moderno, potrete scoprire più di 1.000 opere di questo grande pittore.</p><p>Tra dipinti, sculture, arazzi... tuffatevi nel mondo dell\'artista.</p>', 11),
(69, 'Museo <span lang=\"fr\">Matisse</span>', '<p>Il Museo <span lang=\"fr\">Matisse</span> di Nizza è dedicato all’opera del pittore francese <span lang=\"fr\">Henri Matisse</span>. </p><p>Riunisce una delle più grandi collezioni al mondo delle sue opere, che ci permette di ripercorrere il suo viaggio artistico e i suoi sviluppi dai suoi inizi ai suoi ultimi lavori. </p><p>Ospitato nella Villa <span lang=\"fr\">des Arenes</span>, una villa genovese del diciasettesimo secolo nella zona di <span lang=\"fr\">Cimiez</span>, il museo ha aperto i battenti nel 1963.</p><p>Classificato come <span lang=\"fr\">“Musée de France”</span>, il <span lang=\"fr\">Musée Matisse</span> copre una superficie totale di 2.800 <abbr title=\"metri quadrati\">m2</abbr>, di cui 1.200 <abbr title=\"metri quadrati\">m2</abbr> di spazi espositivi abbracciano la villa e l’ampliamento. </p>', 9.9),
(70, 'Villa Massena', '<p>Villa Massena è iscritta nel repertorio dei Monumenti Storici: un vero gioiello architettonico.</p><p>Al di là delle mostre temporanee che vi vengono ospitate, è di assoluto e primario interesse una visita alla Villa con i suoi arredi e le sue decorazioni.</p><p>Il giardino del Museo Massena, realizzato dallo stesso paesaggista che creò quelli del Casinò di Montecarlo, è infatti tuttora liberamente fruibile e visitabile indipendentemente dal museo.</p><p>Gli interni del Museo Massena si sviluppano su 1800 metri quadri, su 3 piani con 23 sale, dove è raccontata la storia di Nizza dal 1793 al 1815.</p><p>E’ un museo “leggero, la cui visita risulta molto piacevole e ricca di piccole interessanti curiosità e l\'attenzione sarà rapita tanto dalle sale dello splendido palazzo quanto da quello che vi è esposto.</p>', 17),
(71, '<span lang=\"fr\">Île de la Cité</span>', '<p>Questo è un viaggio in profondità nelle storie, nei miti, nelle leggende dietro le pietre del più interessante quartiere di Parigi. </p><p>Dallo splendore gotico delle torri di <span lang=\"fr\">Notre Dame</span> che hanno ispirato <span lang=\"fr\">Victor Hugo</span> nel creare il suo gobbo, alle celle più scure della <span lang=\"fr\">Conciergerie</span> dove i dissidenti condannati aspettavano la morte durante il Terrore rivoluzionario, l\'<span lang=\"fr\">Île de la Cité</span> è stata testimone del meglio e del peggio della storia parigina. </p><p>Ci sarà modo di ascoltare tutte le storie che rendono questo posto così speciale.</p>', 16),
(72, '<span lang=\"fr\">Montmartre</span>', '<p>Piccole stradine con il <span lang=\"fr\">pavé</span> (la pavimentazione con i sampietrini!), casette ricoperte di edera, graziosi caffè e pittori squattrinati che provano a guadagnarsi da vivere con la loro arte. Questa è <span lang=\"fr\">Montmartre</span>!</p><p>Parigi è una città composta soprattutto da grandi piazze, grandi boulevard e grandi palazzi, e forse <span lang=\"fr\">Montmartre</span> è speciale proprio perché è diversa dal resto della capitale francese.</p><p>Sembra un paradosso, ma il quartiere più famoso di Parigi è forse quello meno rappresentativo del resto della città.</p><p>Questo spiega perché, in un viaggio a Parigi, una tappa a <span lang=\"fr\">Montmartre</span> non dovrebbe mai mancare: perdetevi fra le sue viuzze, godetevi gli scorci sul Sacro Cuore, prendete una <span lang=\"fr\">crêpe</span> in uno dei suoni tanti café, molto meglio se in compagnia di una persona speciale, e vi ricorderete di quei momenti per il resto della vostra vita.</p>', 20),
(73, 'Museo del <span lang=\"fr\">Louvre</p>', '<p>Il <span lang=\"fr\">Louvre</span> raccoglie una collezione straordinaria e si consiglia di visitare in più occasioni il museo per percorre tranquillamente tutte le sue sale. </p><p>Qui gli appassionati d’arte vivranno un’esperienza più che formativa e non potranno lasciarsi scappare l\'occasione di trascorrere varie ore in questo straordinario tempio dell\'Arte.</p><p>Chi non ha troppo tempo a disposizione, dovrà dedicare al museo almeno una mattina, per poter percorrere tutte le sale e vedere le opere più importanti.</p>', 19),
(74, 'Museo d\'<span lang=\"fr\">Orsay</span>', '<p>Una delle mete imperdibili a Parigi per gli appassionati dell\'arte è, insieme al <span lang=\"fr\">Louvre</span> e al <span lang=\"fr\">Centre Pompidou</span>, senza dubbio il museo d\'<span lang=\"fr\">Orsay</span>. </p><p>Al suo interno sono custodite opere prodotte tra il 1848 e il 1914 e appartenenti a diverse correnti artistiche, tra cui l\'impressionismo, i cui capolavori hanno fatto la fama del museo. </p><p>Al quinto piano potrete infatti ammirare le opere di grandi pittori come <span lang=\"fr\">Monet, Cezanne, Renoir o Degas</span>.</p><', 15),
(75, '<span lang=\"fr\">Tour Eiffel</span>', '<p>Non esiste un monumento che simboleggia meglio Parigi della Torre <span lang=\"fr\">Eiffel. Dalla spianata degli <span lang=\"fr\">Champs de Mars</span> - dove ci si sente veramente piccoli sotto a tanta ingegneria - fino alla cima, attraverso i vari piani vivrai tutta una serie di emozioni. </p><p>E se hai la fortuna di salire sulla <span lang=\"fr\">Tour Eiffel</span> al tramonto, a tutto questo si aggiunge anche la magia delle sue mille luci!</p>', 26),
(76, '<span lang=\"en\">Art Institute of Chicago</span>', '<p>Prenota il biglietto in anticipo e salta la fila per entrare nel rinomato <strong><span lang=\"en\">Art Institute of Chicago</span></strong>.</p><p>Scopri la vasta collezione del museo che copre 5.000 anni di arte da tutto il mondo. Ammira opere iconiche come \"Una domenica pomeriggio sull\'isola della <span lang=\"fr\">Grande-Jatte</span>\" di <span lang=\"fr\">Seurat</span>, \"Sulla terrazza (due sorelle)\" di <span lang=\"fr\">Renoir</span>, diversi lavori di <span lang=\"nl\">Van Gogh</span> e oltre 25 dipinti di <span lang=\"fr\">Claude Monet</span>. </p><p>Tra le opere imperdibili figurano dipinti come \"I nottambuli\" di <span lang=\"en\">Edward Hopper</span> e <span lang=\"en\">American Gothic</span> di <span lang=\"en\">Grant Wood</span>, oltre a opere indimenticabili di <span lang=\"en\">Georgia O’Keeffe</span>, <span lang=\"es\">Pablo Picasso</span>, <span lang=\"fr\">Henri Matisse</span>, <span lang=\"es\">Salvador Dalí</span>, <span lang=\"en\">Andy Warhol</span>, <span lang=\"en\">Alma Thomas</span>, <span lang=\"en\">Cindy Sherman</span> e <span lang=\"en\">Kerry James Marshall</span>. </p><p>Prosegui il tuo viaggio intorno al mondo e attraverso i secoli con la straordinaria collezione di opere del museo che include oggetti dell\'Antico Egitto, 5.000 anni di arte asiatica, una ricca selezione di opere dall\'Africa e un ampio patrimonio di arti dell\'Europa e delle Americhe.</p><p>Se sei con la famiglia, non perderti la collezione dei cavalieri e delle armature o le meraviglie delle 68 stanze in miniatura di <span lang=\"en\">Thorne</span>. Fai anche una sosta al <span lang=\"en\">Ryan Learning Center</span> del museo, che offre attività artistiche e la possibilità di creare un <span lang=\"en\">tour</span> personalizzato e avventuroso delle gallerie con il <span lang=\"en\">JourneyMaker</span> interattivo.</p><p>Goditi un\'esperienza guidata del museo partecipando a uno dei <span lang=\"en\">tour</span> gratuiti disponibili ogni giorno, oppure visitalo al tuo ritmo con i coinvolgenti audio<span lang=\"en\">tour</span> disponibili sull\'<abbr title=\"applicazione\">app</abbr> gratuita del museo.</p>', 14),
(77, '<span lang=\"en\">Centennial Wheel</span>', '<p>Scopri i panorami dalla <strong><span lang=\"en\">Centennial Wheel</span></strong> all\'<span lang=\"en\">Historic Navy Pier</span> di <span lang=\"en\">Chicago</span> con questo biglietto per l\'attrazione. Essere sospeso sul lago <span lang=\"en\">Michigan</span> alla foce del fiume <span lang=\"en\">Chicago</span>. Ammira lo <span lang=\"en\">skyline</span> di <span lang=\"en\">Chicago</span> e ammira le acque scintillanti del Lago <span lang=\"en\">Michigan</span>.</p><p>Scegli tra due opzioni: con il biglietto normale con codice a barre, salta la fila del biglietto ed entra in coda per salire a bordo della ruota. Il biglietto <span lang=\"en\">Fastpass Express</span> ti consente di saltare entrambe le linee e ti dà accesso <abbr title=\"very important people\">VIP</abbr>. Entrambi i biglietti ti consentono di visitare entro 7 giorni dalla data programmata del biglietto.</p><p>Goditi la <span lang=\"en\">Centennial Wheel</span>, costruita nel 2016 per celebrare il 100° anniversario dell\'apertura del <span lang=\"en\">Navy Pier</span>. Dotato di 42 gondole, ciascuna con 8 persone, opera tutto l\'anno. Sono inoltre dotati di illuminazione a LED, sedili imbottiti, schermi <abbr title=\"televisioni\">TV</abbr> e altoparlanti, nonché finestre panoramiche su tutti e 4 i lati.</p><p>Un giro sulla ruota ti dà tutto il tempo per goderti queste viste panoramiche di <span lang=\"en\">Chicago</span> mentre si dispiegano intorno a te e ti consente di visitare le prime tre volte. Rilassati e ammira il panorama, o tira fuori la tua fotocamera per scattare foto del paesaggio in continua evoluzione di <span lang=\"en\">Chicago</span>.</p>', 18),
(78, 'Crociera guidata sul fiume <span lang=\"en\">Chicago</span>', '<p>Scopri di più su <span lang=\"en\">Chicago</span> a bordo di una barca. Ammira i punti salienti dell\'architettura della città da un ponte all\'aperto o dagli interni climatizzati e percorri il fiume principale di <span lang=\"en\">Chicago</span> e i suoi affluenti nord e sud.</p><p>Osserva tutti i punti salienti dell\'architettura di <span lang=\"en\">Chicago</span> grazie a questo <span lang=\"en\">tour</span> panoramico completo. Lasciati intrattenere dalle guide esperte e amichevoli che ti spiegheranno 130 anni di storia dietro lo <span lang=\"en\">skyline</span> della città, mentre i baristi e il personale di bordo ti coccolano con i rinfreschi. </p><p>Scegli tra l\'aria fresca dei ponti all\'aperto il <span lang=\"en\">comfort</span> degli interni climatizzati. Il <span lang=\"en\">tour</span> inizia dal ponte <span lang=\"en\">Michigan Avenue (DuSable)</span> e risale il ramo principale del fiume <span lang=\"en\">Chicago</span> oltre <span lang=\"en\">Wolf Point</span>. </p><p>Quindi naviga lungo i rami nord e sud del fiume, prima di tornare indietro oltre il <span lang=\"en\">Chicago Riverwalk</span> verso il lago <span lang=\"en\">Michigan</span>.</p><p>Lungo il percorso, scopri di più sui primi grattacieli storici come il <span lang=\"en\">Wrigley Building</span> e la <span lang=\"en\">Tribune Tower</span>, l\'imponente <span lang=\"en\">Art Deco Merchandise Mart</span>, i grattacieli della metà del secolo come il <span lang=\"de\">Mies Van der Rohe</span> <span lang=\"en\">AMA Building</span>.</p><p>Non perderti le <span lang=\"en\">Marina City Towers</span>, la maestosa <span lang=\"en\">Willis Tower</span> (ex <span lang=\"en\">Sears Tower</span> e l\'edificio più alto di <span lang=\"en\">Chicago</span>), l\'imponente <span lang=\"en\">AON Center</span> e strutture più moderne come <span lang=\"en\">Aqua</span>, <span lang=\"en\">Trump Tower</span>, <span lang=\"en\">Nuveen</span> e la nuova <span lang=\"en\">Vista Tower</span>.</p><p>Durante la tua crociera, avrai l\'opportunità di goderti un bar con prodotti autentici di <span lang=\"en\">Chicago</span>, tra cui birra e liquori locali, e <span lang=\"en\">Popcorn</span> di <span lang=\"en\">Garrett</span>. </p><p>Non dimenticare di fare un <span lang=\"en\">selfie</span> sulla <span lang=\"en\">Grand Staircase</span> nella parte anteriore della barca o di posare per le foto nella pittoresca poppa o prua della nave.</p>', 18),
(79, '<span lang=\"en\">Tour</span> a piedi di storia, cultura e architettura', '<p>Inizia il tuo <span lang=\"en\">tour</span> sotto l\'abbagliante tendone del <strong>Chicago Theatre</strong> (che potresti riconoscere dal <span lang=\"en\">film-musical Chicago</strong>) prima di dirigerti verso la vivace città. La tua prima tappa è all\'interno di uno degli spazi meglio conservati costruiti per lo <span lang=\"en\">shopping</span> a <span lang=\"en\">Chicago</span>, caratterizzato da un atrio indimenticabile al suo interno.</p><p>Quindi dirigiti verso la <strong><span lang=\"en\">Chicago Pedway</span></strong>, una caratteristica unica di <span lang=\"en\">Chicago</span> utilizzata quotidianamente da gente del posto e pendolari per spostarsi in città in una rete di tunnel sotterranei. Successivamente, torna in superficie vicino al municipio ed entra per vedere il classico <span lang=\"en\">design</span> degli interni e l\'architettura.</p><p>Goditi un dolce e la tradizione locale: <span lang=\"en\">popcorn</span> in stile <span lang=\"en\">Chicago</span>. Tempo permettendo, fai una passeggiata lungo il <span lang=\"en\">Chicago Riverwalk</span> ammirando la vista di numerosi edifici svettanti, tra cui le <span lang=\"en\">Marina Towers</span>, il <span lang=\"en\">Britannica Building</span> e la <span lang=\"en\">Willis Tower</span>.</p><p>Da lì, dirigiti verso un\'altra deliziosa destinazione. Lungo la strada, goditi la vista del famoso <span lang=\"en\">Wrigley Building</span> e dell\'incredibile edificio del <span lang=\"en\">Chicago Tribune</span>, il cuore della fiorente e storica industria giornalistica di <span lang=\"en\">Chicago</span>. La tua seconda gustosa confezione è cioccolato prodotto localmente da un alimento base di <span lang=\"en\">Chicago</span>.</p><p>Infine, fai una passeggiata negli splendidi parchi lungolago percorrendo <span lang=\"en\">Michigan Avenue</span>. Completa il tuo <span lang=\"en\">tour</span> nel pittoresco <span lang=\"en\">Millennium Park</span>, sede dell\'iconica scultura <span lang=\"en\">Bean</span>. Qui, la tua guida concluderà il tuo <span lang=\"en\">tour</span> e ti indicherà la giusta direzione verso luoghi più incredibili, ottimi posti per il pranzo o consigli sui <span lang=\"en\">drink</span>.</p>', 9),
(80, 'Vista panoramica <span lang=\"en\">Chicago</span>', '<p>Lasciati incantare dalla vista da 1.000 piedi sulla leggendaria <strong><span lang=\"en\">Michigan Avenue</span></strong> di <span lang=\"en\">Chicago</span> con questo biglietto per il ponte di osservazione <span lang=\"en\">360 CHICAGO</span> al 94° piano del <span lang=\"en\">John Hancock Center</span>. Risparmia tempo con l\'accesso prioritario a questa popolare attrazione.</p><p>Sali sul ponte di osservazione <strong><span lang=\"en\">360 CHICAGO</span></strong> per ammirare panorami mozzafiato del lungolago di <span lang=\"en\">Chicago</span> e osservare lo <span lang=\"en\">skyline</span> della città dall\'alto. Dai un\'occhiata a 4 stati vicini da questa altezza.</p><p>Prova il brivido di una corsa di 40 secondi in uno degli ascensori più veloci del Nord America fino al ponte di osservazione per provare quello che <span lang=\"en\">\"Travel & Leisure Magazine\"</span> ha votato come uno dei migliori panorami d\'America.</p><p>Goditi una mostra interattiva al piano terra che mette in risalto la ricca storia di <span lang=\"en\">Chicago</span> e mette in mostra 9 dei quartieri culturalmente unici della città.</p><p>Quindi, al 94° piano, esplora la storia e l\'architettura della magnifica città che si stende davanti a te con le audioguide disponibili in 5 lingue.</p><p>Acquistando questo biglietto a tempo, puoi saltare la biglietteria e presentare il tuo <span lang=\"en\">voucher</span> con codice a barre alla sicurezza per essere scansionato: potresti dover aspettare in una breve fila ai controlli di sicurezza, quindi andare direttamente alle mostre al piano terra e poi al Linea ascensore.</p>', 12),
(81, 'Escursione nella <span lang=\"en\">Death Valley</span>', '<p><strong><span lang=\"en\">Death Valley National Park</span></strong>. Il nome stesso di questo parco nazionale (Valle della Morte) evoca un luogo infernale, arido e senza vita. Invece, a un’occhiata più attenta si scopre che qui la natura ha messo in scena un vero e proprio spettacolo coreografico con:<ul><li><span lang=\"en\">Canyon</span> scolpiti dall\'acqua</li><li>dune di sabbia accarezzate dal vento</li><li>oasi ombreggiate dalle palme</li><li>montagne erose dalle intemperie</li><li>un’incomparabile varietà di flora e fauna</li></ul></p><p>Questa è una terra di superlativi: detiene infatti il primato della temperatura più alta registrata negli Stati Uniti (57<abbr title=\"gradi centigradi\">°C</abbr>), del punto più basso e del parco più grande se si esclude l’Alaska.</p>', 12),
(82, '<span lang=\"en\">Grand Canyon</span>', '<p>A catturare l’attenzione è soprattutto la sua straordinaria immensità, poi si notano i tormentati strati di roccia che invitano a dare un’occhiata da vicino. Infine un tocco artistico di Madre Natura:<ul><li>aspri altopiani</li><li>pinnacoli che si sgretolano</li><li>creste color porpora che ammaliano e incantano man mano che le ombre si allungano sulle rocce</li></ul></p><p>Ci avventureremo su un percorso a ridosso del <span lang=\"en\">South Rim</span>. Benvenuti al <strong><span lang=\"en\">Grand Canyon</span></strong>!</p>', 15),
(83, 'Soggiorno a Las Vegas', '<p><strong>Las Vegas</strong>, situata nel deserto del <strong><span lang=\"en\">Mojave</span></strong>, in <strong>Nevada</strong>, Stati Uniti, è una meta di vacanza celebre per la sua vivace vita notturna, che si svolge nei casinò aperti 24 ore su 24 e in altri luoghi di intrattenimento.</p><p><strong><span lang=\"en\">\"The Strip\"</span></strong> è la strada principale lunga più di 4 miglia e punto focale della città. Questo viale ospita hotel a tema dall\'estetica elaborata, con fontane a ritmo di musica e la repliche di una piramide egiziana, del Canal Grande di Venezia e della Torre Eiffel.</p><p>Goditi un soggiorno di una notte nella città della lussuria.</p>', 150),
(84, 'Visita al <span lang=\"fr\">Madame Tussauds</span> di <span lang=\"en\">Los Angeles</span>', '<p>Il <strong><span lang=\"fr\">Madame Tussauds</span></strong> di <span lang=\"en\">Hollywood</span> è un museo delle cere e un\'attrazione turistica situata sull\'<span lang=\"en\">Hollywood Boulevard</span> a <span lang=\"en\">Hollywood</span>, in California. È la nona <span lang=\"en\">location</span> per il <span lang=\"en\">franchise</span> di <span lang=\"fr\">Tussauds</span>, che è stato allestito dalla scultrice <span lang=\"fr\">Marie Tussaud</span>, e si trova appena ad ovest del <span lang=\"en\"><abbr title=\"The Creative Life\">TCL</abbr> Chinese Theatre</span>.</p>', 26),
(85, '<span lang=\"en\">Tour Universal Studios</span>', '<p>Vivi un\'esperienza unica e divertente agli <strong><span lang=\"en\">Universal Studios Hollywood</span></strong>. Con il biglietto d\'ingresso standard, usufruirai dell\'accesso completo al parco e alle sue giostre, attrazioni e spettacoli per 1 o 2 giorni (a seconda dell\'opzione prenotata).</p><p>Se vuoi evitare lunghe attese in fila, puoi optare per il biglietto <span lang=\"en\">Universal Express</span>. Questo biglietto include l\'ingresso per 1 giorno, un ingresso prioritario, un accesso espresso a ciascuna giostra e un posto prioritario per gli spettacoli selezionati. Questo biglietto è molto popolare tra i visitatori, quindi assicurati di prenotarlo in anticipo per poter godere di tutti i privilegi offerti da <span lang=\"en\">Universal Express</span>.</p>', 54),
(86, 'Visita allo Zoo di <span lang=\"en\">Central Park</span>', '<p>Lo <strong>zoo</strong> di <strong><span lang=\"en\">Central Park</span></strong> è uno zoo che copre un\'area di circa 6 ettari e mezzo situato nell\'angolo sud est di <span lang=\"en\">Central Park</span>, a <span lang=\"en\">New York</span>, facente parte di un sistema integrato di quattro zoo e un acquario gestito dalla <strong><span lang=\"en\">Wildlife Conservation Society</span></strong>.</p>', 12),
(87, 'Visita all\'<span lang=\"en\">Empire State Building</span>', '<p>Goditi viste meravigliose da un punto privilegiato. Posizionate nel cuore di <strong><span lang=\"en\">Manhattan</span></strong>, le due terrazze panoramiche del <strong><span lang=\"en\">Empire State Building</span></strong> offrono viste ineguagliabili di <span lang=\"en\">New York</span> e un panorama che si estende su sei Stati.</p>', 6.8),
(88, 'Tour di <span lang=\"en\">Manhattan</span> in elicottero', '<p>Pensando a <strong><span lang=\"en\">Manhattan</span></strong>, ti verranno subito in mente gli altissimi grattacieli, i taxi gialli e una città dal carattere internazionale. Osserva tutto questo e molto altro mentre un pilota esperto ti fa volare sopra <strong><span lang=\"en\">New York</span></strong> grazie a un <strong><span lang=\"en\">tour</span> in elicottero</strong> di 15 o 20 minuti. Sorvola la Statua della Libertà, <span lang=\"en\">Central Park</span>, il Ponte di <span lang=\"en\">Brooklyn</span> e il <span lang=\"en\">Madison Square Garden</span>.</p><p>Dopo il decollo dal <strong><span lang=\"en\">Downtown Heliport</span></strong>, supera <span lang=\"en\">Lower Manhattan</span> per vedere lo <span lang=\"en\">skyline</span> e le strade sottostanti. Scendi in picchiata su <span lang=\"en\">Battery Park</span> per ammirare <span lang=\"en\">Wall Street</span> e il suo labirinto di strade.</p><p>Poi dirigiti verso <span lang=\"en\">Governor\'s Island</span>, un\'isola un tempo riservata solo ai dignitari della città che ora ospita concerti estivi e arte pubblica. Quindi, sorvola <span lang=\"en\">Ellis Island</span> e guarda <span lang=\"en\">Lady Liberty</span> brillare in lontananza. Ti troverai all\'altezza dei suoi occhi, per avere una nuova prospettiva della Statua della Libertà.</p><p>Goditi questa splendida esperienza prima di risalire l\'<span lang=\"en\">Hudson</span> oltre i moli di <span lang=\"en\">Chelsea</span> e le luci di <span lang=\"en\">Broadway</span>. Durante il volo di ritorno al molo, volerai sopra l\'<span lang=\"en\">Empire State Building</span>, il Ponte di <span lang=\"en\">Brooklyn</span> e infine <span lang=\"en\">Ground Zero</span>, dove potrai ammirare gli straordinari lavori in corso.</p> <p>Prosegui oltre il <span lang=\"en\">Madison Square Garden</span> e l\'<span lang=\"en\">Intrepid Air and Space Museum</span>. Ammira <span lang=\"en\">Central Park</span> mentre fai il giro per tornare all\'eliporto.</p><p>Attrazioni incluse nel <span lang=\"en\">tour</span> di 15 minuti:<ul><li>Statua della Libertà</li><li><span lang=\"en\">Ellis Island</span></li><li><span lang=\"en\">One World Trade Center</span></li><li>Memoriale dell\'11 settembre</li><li>Ponte di <span lang=\"en\">Brooklyn</span></li><li><span lang=\"en\">Battery Park</span></li><li><span lang=\"en\">Wall Street/Financial District</span></li><li><span lang=\"en\">Empire State Building</span></li><li><span lang=\"en\">Chrysler Building</span></li><li><span lang=\"en\">Madison Square Garden</span></li><li><span lang=\"en\">Times Square</span></li><li><span lang=\"en\">Intrepid Sea, Air, and Space Museum</span></li><li>Central Park</li></ul></p><p>Attrazioni incluse nel <span lang=\"en\">tour</span> di 20 minuti:<ul><li>Ponte di <span lang=\"en\">Brooklyn</span></li><li><span lang=\"en\">Battery Park</span></li><li><span lang=\"en\">Wall Street</span></li><li>Statua della Libertà</li><li><span lang=\"en\">Ellis Island</span></li><li><span lang=\"en\">One World Trade Center</span></li><li>Memoriale dell\'11 settembre</li><li><span lang=\"en\">Empire State Building</span></li><li><span lang=\"en\">Chrysler Building</span></li><li><span lang=\"en\">Madison Square Garden</span></li><li><span lang=\"en\">Intrepid Sea, Air, and Space Museum</span></li><li><span lang=\"en\">Times Square</span></li><li><span lang=\"en\">Central Park</span></li><li><span lang=\"en\">Grant’s Tomb</span> (tomba del generale Ulysses Grant)</li><li>Ponte <span lang=\"en\">George Washington</span></li><li><span lang=\"en\">Harlem</span> e il fiume <span lang=\"en\">Harlem</span></li><li>Il Bronx e lo <span lang=\"en\">Yankee Stadium</span></li><li><span lang=\"en\">The Palisades</span></li><li><span lang=\"en\">Spuyten Duyvil Bridge</span></li></ul></p>', 12),
(89, '<span lang=\"en\"><abbr title=\"Museum of modern art\">Moma</abbr></span> <span lang=\"en\">New York</span>', '<p>Il <strong><span lang=\"en\"><abbr title=\"Museum of modern art\">Moma</abbr></span></strong> si trova a <strong><span lang=\"en\">New York</span></strong> all’11 <span lang=\"en\">West <abbr title=\"fifty-third\">53rd</abbr> street</span>, tra la <span lang=\"en\">Fifth Avenuee</span> la <span lang=\"en\">Sixth Avenue</span> o <span lang=\"en\">Avenue of the Americas</span>.</p><p>Questo polo museale ha avuto un ruolo decisivo per la promozione dell’<strong>Arte Moderna</strong> nel mondo ed è universalmente riconosciuto come uno dei più importanti del pianeta.</p><p>La collezione conservata all’interno del <span lang=\"en\"><abbr title=\"Museum of modern art\">Moma</abbr></span> è un’ineguagliabile antologia d’Arte moderna e Contemporanea e spazia dall\'architettura alla fotografia, passando per:<ul><li>serigrafia</li><li>design</li><li>arte multimediale</li><li>gli immancabili dipinti e sculture realizzati dalla fine del <abbr title=\"diciannovesimo\">XIX</abbr> secolo ad oggi</li></ul></p><p>Tutti gli amanti dell’Arte sognano di poterlo visitare in quanto ospita alcuni tra i dipinti più famosi della storia come:<ul><li><em>Il Ponte giapponese</em> di <span lang=\"fr\">Claude Monet</span></li><li><em><span lang=\"fr\">Le demoiselles d’Avignon</span></em> di Pablo Picasso</li><li><em>La notte stellata</em> di Van Gogh</li><li><em>La città che sale</em> di Umberto Boccioni</li></ul> e tanti altri.</p>', 9),
(90, 'Museo della storia naturale', '<p>L\'accesso trionfale in stile classico che dà sull\'arteria <span lang=\"en\">Central Park West</span>, completato da <span lang=\"en\">John Russell Pope</span> nel 1936, è costituito da un monumento in stile architettonico <span lang=\"fr\">Beaux-Arts</span> (tardo neoclassico di scuola francese) dedicato a <span lang=\"en\">Teddy Roosevelt</span>. Conduce a una vasta basilica romana dove spicca immediatamente tra la mole monumentale lo scheletro di una madre di Barosaurus in atto di difendere il piccolo da un allosauro. Il museo è famoso per le sue ricostruzioni di <span lang=\"en\">habitat</span> di mammiferi africani, asiatici e nordamericani, per il modello in grandezza naturale di una balenottera azzurra che pende dal soffitto della sala degli oceani (riaperta nel 2003), per la canoa da guerra Haida dipinta e intagliata nel legno lunga 62 piedi (18,89 m) proveniente dal Nordovest del Pacifico, e per la <em>\"Stella dell\'India\"</em>, il più grande zaffiro blu esistente. Il percorso di tutto un piano è dedicato all\'evoluzione dei vertebrati, inclusa quella dei famosissimi dinosauri.</p><p>Notevoli anche le collezioni museali di antropologia:<ul><li>le sale con collezioni sui popoli asiatici e gli abitanti del Pacifico</li><li>sull\'uomo dell\'Africa</li><li>sui nativi americani</li><li>le collezioni del Messico e dell\'America centrale</li></ul></p><p>Il museo è anche il set del film <em>Una notte al museo</em>.</p>', 7.5),
(91, 'Visita alla Statua della Libertà', '<p><em><span lang=\"en\">Lady Liberty</span></em>, come viene affettuosamente chiamata la Statua della Libertà, si trova su <strong><span lang=\"en\">Liberty Island</span></strong>, un isolotto del fiume <strong><span lang=\"en\">Hudson</span></strong> all’ingresso del porto e di fronte a <span lang=\"en\">Downtown Manhattan</span>, nella baia di <span lang=\"en\">New York</span>. E’ una sorta di benvenuto alla città, ai visitatori e, a suo tempo, agli immigrati che arrivavano via mare.</p><p>Una volta sbarcati sull\'isola, avete tutto il tempo per ammirare la Statua da vicino, visitare il museo, scattare un sacco di foto, sia al monumento che alla punta Sud di <span lang=\"en\">Manhattan</span> da una splendida prospettiva.</p><p>Vi potrete immedesimare in come doveva sentirsi un italiano dell’epoca, appena arrivato a <span lang=\"en\">New York</span>, dopo uno sfinente viaggio in nave. Cercare tra le lunghe liste di immigrati se ci sono anche vostri lontani parenti riserva spesso delle sorprese!</p>', 18),
(92, 'Visita all\'acquario di <span lang=\"en\">Vancouver</span>', '<p>L\'acquario di <span lang=\"en\">Vancouver</span>, il cui nome ufficiale in inglese è <em><span lang=\"en\">Vancouver Aquarium Marine Science Centre</span></em>, è un acquario marino situato nel parco <span lang=\"en\">Stanley</span> a <span lang=\"en\">Vancouver</span> in Columbia Britannica (Canada). È il più grande acquario del Canada.</p><p>Oltre a essere una grande attrazione per i turisti è anche un centro di:<ul><li>ricerca marina</li><li>di conservazione</li><li>di riabilitazione delle specie animali marine</li></ul> Nell’ottobre 2009, l’agenzia di Protezione ambientale americana rinominò l’acquario come <strong><span lang=\"en\">Coastal America Learning Center</span></strong>, ovvero Centro Nazionale per l’Apprendimento della costa americana. Quest’ultimo ha come funzione il rafforzamento della collaborazione tra Stati Uniti e Canada attraverso la salvaguardia e la protezione delle risorse oceaniche del territorio condiviso dai due Paesi. Il 9 agosto 2010 il Primo Ministro, <span lang=\"en\">Stephen Harper</span>, e il Premier della Columbia Britannica, <span lang=\"en\">Gordon Campbell</strong>, annunciarono la donazione di 15 milioni di dollari, donati dalla provincia e dalla capitale, <span lang=\"en\">Ottawa</span>, per la costruzione dell’ampliamento dell’acquario e per il miglioramento delle strutture già presenti al suo interno.</p><p>La struttura è un’organizzazione non-profit di proprietà della città di <span lang=\"en\">Vancouver</span>.</p>', 20),
(93, 'Visita al <span lang=\"en\">Capilano Suspension Bridge</span>', '<p>Il <strong><span lang=\"en\">Capilano Suspension Bridge</span></strong> oscilla a 70 metri di altezza sull\'omonimo fiume. Questo ponte sospeso, lungo 137 metri, attira centinaia di migliaia di visitatori ogni anno ed è una delle attrazioni più popolari di <span lang=\"en\">Vancouver</span>. Considerata la sua altezza, chi soffre di vertigini probabilmente eviterà di attraversarlo a piedi.</p>', 35),
(94, 'Tour guidato tra le attrazioni della città', '<p>Questo <span lang=\"en\">tour</span> tra le attrazioni di <strong><span lang=\"en\">Vancouver</span></strong> ti offre un modo personalizzato per ammirare il meglio di questa splendida città sulla costa ovest del Canada.</p><p>In compagnia di una guida professionista e autorizzata, ti fermerai presso diversi siti di <span lang=\"en\">Vancouver</span>, tra cui:<ul><li>lo <span lang=\"en\">Stanley Park</span></li><li><span lang=\"en\">Granville Island</span></li><li><span lang=\"en\">Gastown</span></li><li><span lang=\"en\">Chinatown</span></li><li><span lang=\"en\">Robson Street</span></li><li>la <span lang=\"en\">English Bay</span> presso il <span lang=\"en\">Vancouver Harbour</span></li></ul>Esplora l\'arte, le attrazioni storiche e le aree dello shopping della città.</p>', 16),
(95, 'Visita al punto panoramico <span lang=\"en\">Vancouver Lookout</span>', '<p>Ottieni il tuo biglietto per il <strong><span lang=\"en\">Vancouver</span> Lookout</strong> e goditi il panorama mozzafiato di <span lang=\"en\">Vancouver</span>, con il suo bellissimo paesaggio urbano. Arroccata sopra la città, questa torre alta 169 metri offre una vista panoramica sulle principali zone della città, come:<ul><li><span lang=\"en\">Gastown</span></li><li><span lang=\"en\">Coal Harbour</span></li><li><span lang=\"en\">Stanley Park</span></li></ul>il tutto abbellito da uno meraviglioso sfondo naturale. Scatta foto delle <span lang=\"en\">North Shore Mountains</span> e delle <span lang=\"en\">Olympic Peninsula Mountains</span> mentre scopri la vivace città di <span lang=\"en\">Vancouver</span>.</p>', 8),
(96, 'Tour in idrovolante di <span lang=\"en\">Vancouver</span>', 'Tour in idrovolante di <span lang=\"en\">Vancouver</span>', 24),
(97, 'Crociera per l\'osservazione di balene e delfini', '<p>Sali a bordo di un <strong>catamarano</strong> di lusso di 20 metri comodamente attraccato nel cuore di <span lang=\"en\">Auckland</span>.</p><p>Salpa con il <span lang=\"en\">Dolphin Explorer</span> per ammirare i panorami e i suoni della città dall\'acqua.</p><p>Goditi un tour veloce tra impressionanti monumenti, tra cui il Ponte del Porto di <span lang=\"en\">Auckland</span>, <span lang=\"en\">North Head/Devonport</span> e <span lang=\"en\">Rangitoto Island</span>.</p>', 28),
(98, 'Tour ghiacciaio Franz Josef', '<p>Una delle meraviglie naturali più fotografate della Nuova Zelanda e patrimonio mondiale dell\'<span lang=\"en\"><abbr title=\"United Nations Educational, Scientific and Cultural Organization\">UNESCO</abbr></span>, il <strong>ghiacciaio <span lang=\"en\">Franz Josef</span></strong> offre un paesaggio abbagliante di cime innevate, gole rocciose e cascate ghiacciate, che si nutrono del fiume <span lang=\"en\">Waiho</span>.</p>', 8),
(99, 'Visita Hobbiville e grotte di Waitomo', '<p>Parti all\'avventura con un tour da un giorno da <span lang=\"en\">Auckland</span> per visitare le due attrazioni più famose della Nuova Zelanda.</p><p><strong><span lang=\"en\">Visita Hobbville</span></strong>, del Signore degli Anelli, e le <strong>grotte di <span lang=\"en\">Waitomo</span></strong> con i vermi luminosi in un <span lang=\"en\">tour</span> guidato per gruppi piccoli.</p>', 25),
(100, 'Tour delle cantine dell\'isola di Waiheke', '<p>Concediti un <span lang=\"en\">tour</span> del <strong>vino</strong> <span lang=\"en\">Waiheke<span> con paesaggi spettacolari e vini di fama mondiale, condivisi con la tua scelta di prelibatezze culinarie.</p>', 10.5),
(101, 'Giro in catamarano al tramonto', '<p>Salpa per un giro in <strong>catamarano</strong> al tramonto a Bora Bora e goditi un\'atmosfera romantica navigando nella laguna blu. Un\'esperienza indimenticabile!</p>', 28),
(102, 'Tour di lusso e picnic sulla spiaggia di Bora Bora', '<p>Immergiti nella <strong>bellezza naturale</strong> di Bora Bora in un lussuoso <span lang=\"en\">tour</span> della laguna e della barriera corallina.</p><p>Assapora i <strong>sapori unici</strong> di un picnic <span lang=\"en\">barbecue</span> in stile polinesiano, goditi l\'ospitalità locale e rilassati su una spiaggia di sabbia bianca.</p>', 17),
(103, 'Safari e <span lang=\"en\">snorkeling</span> tra terra e mare', '<p>Esplora <strong>l\'isola vulcanica</strong> di Bora Bora a bordo di un veicolo 4X4 e goditi la vista panoramica del Pacifico del Sud da diversi punti di osservazione.</p><p><strong>Gusta il pranzo</strong> in un ristorante iconico e prova ad avvistare razze e squali nella laguna.</p>', 32),
(104, '<span lang=\"en\">Tour</span> in barca con fondo di vetro', '<p>Godetevi il <strong>mondo subacqueo</strong> di Bora Bora a bordo di una comoda barca coperta.</p><p>Avrete la possibilità di ammirare coloratissimi coralli, anemoni e bellissimi pesci tropicali attraverso il fondo di vetro tra le spiegazioni della vostra guida. Ideale per ogni età.</p>', 18),
(105, 'Crociera <span lang=\"en\">South Sea Island</span>', '<p>Goditi l\'eccezionale giornata nella paradisiaca <span lang=\"en\">South Sea Island</span>, situata nell\'arcipelago Mamanuca delle Isole Fiji.</p><p>Dopo una <strong>crociera</strong> di 30 minuti attraverso acque cristalline da Port Denarau, arriva alla tua destinazione tropicale e scegli tra una vasta gamma di opzioni.</p><p>Fai <span lang=\"en\">snorkeling</span> per scoprire la stupenda <strong>barriera corallina</strong>, vai in <span lang=\"en\">kayak</span> nelle lagune e fai giro in un semi-sommergibile.</p>', 25),
(106, 'Malamala <span lang=\"en\">Beach Club</span>', '<p>Rilassati su <strong>un\'isola privata</strong> con questo pass giornaliero per il Malamala <span lang=\"en\">Beach Club</span>.</p><p>Parti da <span lang=\"en\">Port</span> Denarau mentre ti godi un breve trasferimento in traghetto attraverso acque cristalline.</p><p>Trascorri un\'intera giornata facendo tutto quello che vuoi fare mentre sei lì.</p><p>', 18),
(107, '<span lang=\"en\">River Tubing</span> Fiji', '<p>Scopri le <span lang=\"en\">Highlands</span> delle Fiji in questo <span lang=\"en\">tour</span> <strong>ricco di avventure</strong>.</p><p>Per prima cosa, fai un giro in barca lungo il pittoresco fiume Navua, che offre viste di cascate, foresta pluviale tropicale e paesaggi pittoreschi dell\'isola.</p><p>Visita un villaggio delle Fiji per osservare come vivono i locali. In seguito, fluttuerai a valle sui tubi interni sopra rapide dolci.</p><p>È incluso anche un pranzo lungo il fiume.</p>', 16),
(108, '<span lang=\"en\">Snorkeling</span> con gli squali', '<p>Ottieni l\'accesso a un incredibile incontro con la <strong>vita marina</strong>, su questo snorkeling eccezionale con l\'incontro degli squali nelle Fiji.</p><p>Questo tour è adatto a tutti i livelli di abilità, compresi gli amanti dello <span lang=\"en\">snorkeling</span> per la prima volta, e riceverai un <span lang=\"en\">briefing</span> di sicurezza completo.</p><p>Dopo un fantastico incontro con gli squali, è incluso anche un <strong>delizioso pranzo</strong>.</p>', 24);
INSERT INTO `activity` (`id`, `name`, `description`, `price`) VALUES
(109, 'Visita acquario <span lang=\"en\">Sea Life<span>', '<p>Nessun viaggio a <span lang=\"en\">Sydney<span> può dirsi completo senza una visita al <span lang=\"en\">SEA LIFE Sydney Aquarium</span>.</p><p>Situato nel <span lang=\"en\">Darling Harbour</span>, l\'acquario ospita oltre 13.000 animali di 700 specie diverse, tra cui squali, dugonghi, tartarughe, razze, pinguini e molto altro ancora.</p>', 12),
(110, '<span lang=\"en\">Tour</span> del porto di <span lang=\"en\">Sydney</span> in elicottero', '<p>Goditi le ampie vedute del porto di <span lang=\"en\">Sydney</span> e oltre durante un volo panoramico in elicottero su <span lang=\"en\">Sydney</span>.</p><p>Scendi in volo per un volo veloce che offre <strong>splendide viste panoramiche</strong> sulla costa orientale di <span lang=\"en\">Sydney</span>, tra cui <span lang=\"en\">Coogee Beach, Bondi Beach, Manly Cove</span>, lo spettacolare porto di <span lang=\"en\">Sydney</span> e lo <span lang=\"en\">skyline</span> della città, il <span lang=\"en\">Sydney Harbour Bridge</span> e il <span lang=\"en\">Sydney Opera House</span>.</p>', 35),
(111, '<span lang=\"en\">Tour</span> nelle <span lang=\"en\">Blue Mountains</span> ', '<p>Dirigiti verso le <strong><span lang=\"en\">Blue Mountains</span></strong> con questo <span lang=\"en\">tour</span> da <span lang=\"en\">Sydney</span>.</p><p>Visita <span lang=\"en\">Featherdale</span> per vedere koala, canguri, coccodrilli e altri animali incredibili.</p><p>Goditi emozionanti cavalcate a <span lang=\"en\">Scenic World</span> e scopri <strong>spettacolari</strong> scogliere, cascate e la suggestiva formazione rocciosa conosciuta come le Tre Sorelle.</p><p>Ammira le viste panoramiche di Sydney con un giro in traghetto lungo il fiume Parramatta sotto il <span lang=\"en\">Sydney Harbour Bridge</span>.</p>', 16),
(112, 'Visita allo zoo di Taronga', '<p>Scopri il mondo animale allo <strong>zoo di Taronga</strong> con un biglietto d\'ingresso e andata e ritorno in traghetto da <span lang=\"en\">Darling Harbour</span>, <span lang=\"en\">Circular Quay</span>.</p><p>Ammira molti animali autoctoni e accedi alla funivia <span lang=\"en\">Sky</span> Safari.</p><p>Esplora la fauna nativa australiana e gli animali esotici rari e in via di estinzione. Ammira tigri, elefanti, uccelli esotici e molte altre specie di animali.</p>', 22);

-- --------------------------------------------------------

--
-- Struttura della tabella `airline`
--

CREATE TABLE `airline` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `airline`
--

INSERT INTO `airline` (`name`) VALUES
('<span lang=\"en\">Air Canada</span>'),
('<span lang=\"en\">Air France</span>'),
('<span lang=\"en\">America Airlines</span>'),
('<span lang=\"en\">British Airways</span>'),
('<span lang=\"en\">Fly Emirates</span>'),
('<span lang=\"en\">KLM Royal Dutch Airlines</span>'),
('<span lang=\"en\">Qatar Airways</span>'),
('<span lang=\"en\">Ryanair</span>'),
('<span lang=\"en\">Turkish Airlines</span>'),
('<span lang=\"fr\">Brussels</span> <span lang=\"en\">airlines</span>'),
('Iberia'),
('Lufthansa');

-- --------------------------------------------------------

--
-- Struttura della tabella `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `primary_type` enum('city','sea','safari','mountains') DEFAULT NULL,
  `secondary_type` enum('city','sea','safari','mountains') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `destination`
--

INSERT INTO `destination` (`id`, `name`, `continent`, `state`, `description`, `primary_type`, `secondary_type`) VALUES
(1, 'Cape Town', 'africa', 'Sudafrica', '<p>Stretta tra Oceano e monti, <strong>Città del Capo</strong> (<span lang=\"en\">Cape Town</span>) è la città più turistica e frizzante del Sudafrica. Fondata nel 1652 dai coloni olandesi, la cosiddetta ‘città madre’ assomiglia a un caotico agglomerato di grattacieli e <span lang=\"en\">township</span> (<span lang=\"en\">bidonville</span>), dove nascono le tendenze. Pur essendo più sicura rispetto ad altre città africane, a Città del Capo le zone turistiche si alternano a quartieri <span lang=\"en\">off limits</span>. Per andare sul sicuro si può partire dal <span lang=\"en\">Waterfront</span>, ex porto abbandonato che oggi pullula di ristoranti, musei e centri commerciali. Da qui la vista sulla sua montagna iconica, <span lang=\"en\">Table Mountain</span>, è particolarmente suggestiva. Dalla sua cima, nelle giornate limpide, si gode una vista assolutamente magnifica. Imperdibile è poi la visita ai <span lang=\"en\">Kirtenbosch Botanic Gardens</span> sul lato orientale della montagna, dedicati quasi esclusivamente alla flora autoctona della regione. E poi ancora, a poca distanza dal <span lang=\"en\">Table Mountain</span>, magnifici vigneti, itinerari di <span lang=\"en\">trekking</span> particolarmente suggestivi e spiagge spettacolari.</p>', 'safari', 'sea'),
(2, 'Mwanza', 'africa', 'Tanzania', '<p>Situata sulle sponde del <strong>Lago Vittoria</strong> e circondata da colline cosparse di massi giganteschi, <strong><span lang=\"af\">Mwanza</span></strong>, la seconda città della <strong>Tanzania</strong> per dimensioni, è il fulcro economico di questa regione.</p><p>Oltre a distinguersi per la forte presenza indiana, è un importante centro industriale, con un porto per il quale transita:</p><ul><li>gran parte del cotone;</li> <li>del tè;</li>  <li>del caffè;</li></ul><p>coltivati nella fertile regione occidentale del paese. Eppure, nonostante le sue dimensioni, <span lang=\"af\">Mwanza</span> riesce a mantenere in parte l’atmosfera di un villaggio.</p><p>Oltre a essere un ottimo punto di partenza per visitare il Rubondo <span lang=\"en\">Island National Park</span>, la città è anche una comoda base per i safari nel Ngorongoro e nel Serengeti, che, se si aggiunge il <span lang=\"en\">Lake Natron</span>, idealmente costituiscono un percorso ad anello.</p>', 'safari', NULL),
(3, 'Sharm El Sheikh', 'africa', 'Egitto', '<p>A <strong>Sharm el-Sheikh</strong>, città d’<strong>Egitto</strong> che si affaccia sul <strong>Mar Rosso</strong>, avventura e divertimento ti aspettano! Fatti cullare dalla sua musica, dalla più antica a quella moderna e occidentale, ma soprattutto dalle onde del mare, più brillante alle luci delle discoteche. Lasciati tentare dalla cucina tradizionale egiziana, con le sue eccellenze culinarie gourmet. Tutto qui è contrasto e fascinazione. Un’unione affascinante fra Oriente e Occidente, che non mancherà di sorprendervi. Il vostro viaggio a Sharm el-Sheikh si rivelerà un’esperienza unica e sorprendente, che ricorderete per tutta la vita.</p><p>Non lontana dal Mar Mediterraneo e dal nostro paese, siete davvero a un passo dalla vacanza che avete sempre sognato e che meritate!</p>', 'sea', NULL),
(4, 'Windhoek', 'africa', 'Namibia', '<p><strong><span lang=\"en\">Windhoek</span></strong> è la capitale della <strong>Namibia</strong>.</p><p>Questa città è molto consigliata poiché ottimo punto di partenza per affascinanti safari nel deserto della Namibia.</p>', 'safari', NULL),
(5, 'Aruba', 'south-america', 'Paesi Bassi', '<p>Via terra, via mare e persino in sottomarino, un gruppo organizzato o un giro turistico individuale è un modo sicuro e autentico per voi e la vostra famiglia di esplorare ogni bellissimo angolo di Aruba.</p><p>Vivete l’isola come dei veri autoctoni: seguite le guide arubane in avventure in fuoristrada a <span lang=\"en\">Baby Beach</span>, sotto le onde nel relitto della SS Antilla, oppure a cavallo fra baie calcaree appartate. I tesori nascosti da vedere sono tanti, così come le amichevoli persone del posto desiderose di condividerli con voi.</p>', 'sea', NULL),
(6, 'Buenos Aires', 'south-america', 'Argentina', '<p>C’è un legame tra l’Italia e l’Argentina e lo senti appena metti piede a <span lang=\"en\">Buenos Aires</span>: è come tornare a casa. </p><p>A fine Ottocento, la forte immigrazione, di italiani in buona parte e di europei in generale, ha fortemente influenzato la cultura, l’architettura, la cucina e lo stile di vita della capitale argentina. </p><p>Affacciata sul <span lang=\"es\">Rio de la Plata</span>, il più grande estuario del mondo, <span lang=\"es\">Buenos Aires</span> è la città più “europea” ed affascinante del Sud America, testimonianza della storia trascorsa (quartieri di San Telmo, Recoleta, La Boca), e allo stesso tempo estremamente proiettata al futuro (quartiere Palermo). </p><p>Il risultato è un’alchimia di architettura parigina, traffico romano e movida madrilena, con un tocco sudamericano. E allora lasciatevi contaminare dalla sua identità multietnica, ballate in tango, gustatevi l’asado, il tipico barbecue locale nonché per molti la carne più buona del mondo.</p>', 'city', NULL),
(7, 'Galápagos', 'south-america', 'Ecuador', '<p>Un viaggio via terra tra le Ande Ecuadoriane e l’ultimo Paradiso Terreste: le Isole <span lang=\"es\">Galapagos</span>.</p><p>Un viaggio che vi cambierà la vita, un’esperienza che vi aprirà gli occhi nel meraviglioso mondo incontaminato della natura. Un itinerario molto vario, che vi permetterà di conoscere tutti i diversi aspetti di questo paese stupendo, ancora non inquinato dal turismo: dai vulcani della Sierra, alle foreste del bacino amazzonico fino alle remote Isole <span lang=\"es\">Galapagos</span>, che esploreremo attraverso magnifici <span lang=\"en\">trekking, mountain bike</span>, immersioni e <span lang=\"en\">snorkelling</span>.</p>', 'sea', 'safari'),
(8, 'Patagonia', 'south-america', 'Argentina', '<p>La Patagonia Argentina è una terra enorme in cui troverete alcune tra le montagne più suggestive del Sud America, una serie di ghiacciai giganteschi, tra cui il famoso <span lang=\"es\">Perito Moreno</span>, potete camminare a due passi da colonie di pinguini e, se volete, potete imbarcarvi per raggiungere l’Antartide. </p><p>In questa guida completa ed aggiornata scoprirete cosa vedere nella Patagonia Argentina, quali sono i <span lang=\"en\">tour</span> e le escursioni che non dovreste perdere ma anche come raggiungere le principali destinazioni e idee di itinerario la vostra prima volta nella terra dei Patagoni ovvero “le persone con i piedi grandi”.</p>', 'mountains', NULL),
(9, 'Bali', 'asia', 'Indonesia', '<p>Bali è un’isola indonesiana rinomata per le sue montagne vulcaniche ricoperte di boschi, le tipiche risaie e la barriera corallina.</p><p> Qui si trovano siti sacri come il tempio di <span lang=\"id\">Uluwatu</span>, che sorge in cima a una scogliera. A sud, la città balneare di <span lang=\"id\">Kuta</span> offre bar animati, mentre <span lang=\"id\">Seminyak</span>, <span lang=\"id\">Sanur</span> e <span lang=\"id\">Nusa Dua</span> sono località molto frequentate. </p><p>L’isola è molto conosciuta anche per i centri di yoga e di meditazione.</p>', 'sea', NULL),
(10, 'Hong Kong', 'asia', 'Cina', '<p><strong>Hong Kong</strong> è una delle metropoli più ricche e caratteristiche del pianeta e ultimamente sta facendo molto parlare di sé il suo “rapporto” con la Cina continentale.</p><p>Hong Kong è la città dei contrasti: ricchezza e povertà, luce e ombra, oriente e occidente sono solo alcune delle dicotomie osservabili in ogni angolo.</p><p>Senza ombra di dubbio, i 150 anni di influenza coloniale e i 5000 anni di tradizione cinese hanno dato a questa città una <strong>personalità unica</strong>.</p>', 'city', NULL),
(11, 'Seoul', 'asia', 'Corea del Sud', '<p><span lang=\"en\">Seoul</span> è una città vivace, ricca di gallerie d’arte, cinema, bar e negozi, ma anche caratterizzata da forti legami con il suo passato, come dimostrano i palazzi e i teatri ispirati alla tradizione coreana.</p><p>Non esitate a chiedere indicazioni per raggiungere le attrazioni locali.</p><p>Gli abitanti di <span lang=\"en\">Seoul</span> sono molto ospitali e accoglienti: a prescindere dal loro grado di conoscenza delle lingue straniere, non sarà difficile ricevere il loro aiuto all’occorrenza.</p><p>Se a prima vista <span lang=\"en\">Seoul</span> può apparire come la quintessenza della modernità, si scopre quasi subito che qui sono ancora presenti antiche tradizioni legate al buddismo e al confucianesimo con i suoi scenografici templi.</p>', 'city', NULL),
(12, 'Tokyo', 'asia', 'Giappone', '<p>Tokyo, capitale del Giappone, è una metropoli immensa, vibrante e <strong>ricca di stimoli</strong>, è la città dove nascono le ultime tendenze di moda e le tecnologie più innovative, si scopre l’antica cultura tradizionale del Giappone.</p><p>La città è una calamita per chi ama fare nuove scoperte!</p>', 'city', NULL),
(13, 'Bruxelles', 'europe', 'Belgio', '<p>Capitale del Belgio e un po’ d’Europa, <span lang=\"fr\">Bruxelles</span> è una città piena di <span lang=\"fr\">charme</span> che però non si prende troppo sul serio. Dinamica, romantica e divertente! </span><p><span lang=\"fr\">Bruxelles</span> è una città ricca di fascino ed è ideale per una vacanza con la famiglia e gli amici o, perché no, con i colleghi. Multiculturale, complessa e vivace, <span lang=\"de\">Brussel</span> come la chiamano i tedeschi, è un turbinio di facciate <span lang=\"fr\">Art Nouveau</span>, palazzi ottocenteschi, moderne strutture in vetro, in particolare nel quartiere europeo, magnifici parchi ed eccezionali musei, il tutto, naturalmente, al fianco dell’incantevole centro storico medievale che ha come cuore la <span lang=\"fr\">Grand Place</span>, una delle piazze più belle del mondo. Per gli amanti dello <span lang=\"en\">shopping</span> poi <span lang=\"fr\">Bruxelles</span> è un vero paradiso. Se siete alla ricerca di oggetti di antiquariato recatevi nel quartiere di <span lang=\"fr\">Sablon</span>, a <span lang=\"fr\">Rue de la Paille, Rue des Minimes</span> e <span lang=\"fr\">Rue de Rollebeek</span>. La cucina belga è ricca di piatti gustosi e unici e nei caffè e nei ristoranti che si affacciano lungo le vie di <span lang=\"fr\">Bruxelles</span> potrete gustare ottime <span lang=\"fr\">Gaufre</span>, un dolce a cialda croccante fuori e morbido all’interno, cioccolatini e praline, patatine fritte servite con una gran quantità di salse, pietanze a base di cozze e naturalmente bere birre belghe. </p>', 'city', NULL),
(14, 'Ibiza', 'europe', 'Spagna', '<p><span lang=\"es\">Ibiza</span> è l’isola dei mille volti: è l’isola del divertimento e della trasgressione, delle spiagge bianche e del mare cristallino, degli sport acquatici, delle grandi saline e delle valli coperte di mandorli e ulivi. </p><p><span lang=\"es\">Ibiza</span> è anche un’isola ricca di storia. Crocevia di grandi popoli, tra cui Fenici, Greci, Cartaginesi, Romani e Turchi, è costellata di testimonianze del suo passato. </p><p>I primi viaggiatori ad approdare a <span lang=\"es\">Ibiza</span> furono gli <span lang=\"en\">hippy</span> negli anni ’60: sono stati loro a conferirle quell’atmosfera di libertà e spensieratezza che ancora si respira.</p>', 'sea', 'city'),
(15, 'Nizza', 'europe', 'Francia', '<p>Nizza è una delle destinazioni turistiche più rinomate della Costa Azzurra. </p><p>Soprannominata dalla gente del luogo \"Nissa La Bella\", ovvero Nizza la bella, questa città affacciata sul Mediterraneo gode di un clima tiepido e gradevole durante tutto l’anno.</p><p> Se hai in programma di visitare la costa meridionale della Francia, non perderti questa favolosa città piena di attrazioni, dove relax ed eleganza vanno di pari passo.</p>', 'city', 'sea'),
(16, 'Parigi', 'europe', 'Francia', '<p>Chi resiste al fascino della <span lang=\"fr\">Ville Lumière?</span> Lo sfavillio della <span lang=\"fr\">Tour Eiffel</span>, le passeggiate lungo la Senna, alcuni dei musei più noti al mondo, l’atmosfera <span lang=\"fr\">bohémienne di Montmartre</span> e quella <span lang=\"fr\">chic del Marais</span>, i mercati pittoreschi, il profilo della Basilica del <span lang=\"fr\">Sacre Coeur</span>, gli <span lang=\"fr\">Champs-Élysées</span>. </p><p>Alla scoperta di tutto questo e anche di più, con la visita a <span lang=\"fr\">Versailles</span>, magnifica reggia voluta dal Re Sole quale sede della corte reale, e a <span lang=\"fr\">Fontainebleau</span>, una delle residenze preferite dei re di Francia e di Napoleone.  </p>', 'city', NULL),
(17, 'Chicago', 'north-america', 'Illinois', '<p><span lang=\"en\">Chicago</span>, una città dell’<span lang=\"en\">Illinois</span> sul Lago <span lang=\"en\">Michigan</span>, è una delle metropoli più grandi degli Stati Uniti. </p><p>Famosa per l’audace architettura, è costellata di grattacieli, come i famosi <span lang=\"en\">John Hancock Center</span>, la <span lang=\"en\">Willis Tower</span>, alta 1451 piedi e precedentemente chiamata <span lang=\"en\">Sears Tower</span>, e la neogotica <span lang=\"en\">Tribune Tower</span>. </p><p>La città è conosciuta anche per i musei, fra cui l’<span lang=\"en\">Art Institute of Chicago</span>, che ospita rinomate opere impressioniste e post-impressioniste.</p>', 'city', NULL),
(18, 'Los Angeles', 'north-america', 'California', '<p><strong><span lang=\"en\">Los Angeles</span></strong> è una città situata nel sud nella <strong>California</strong> famosa per essere il fulcro dell’industria televisiva e cinematografica degli <abbr title=\"Stati Uniti d’America\">USA</abbr>.</p> <p>Nella sua sterminata area metropolitana vivono circa 16 milioni di persone, e più di tutte ancor oggi continua ad incarnare i <span lang=\"fr\">cliché</span> del sogno americano. Ideale come destinazione di viaggio per il clima caldo e temperato, la <em>\"Città degli Angeli\"</em> vanta quartieri iconici come <strong><span lang=\"en\">Beverly Hills</span></strong> e <strong><span lang=\"fr\">Bel Air</span></strong>, in cui vivono le famiglie più ricche e i personaggi più famosi, e <strong><span lang=\"en\">Hollywood</span></strong>, con l’inconfondibile scritta realizzata con lettere alte 50 piedi visibile sulla collina alle spalle della città.</p><p>Tra le <span lang=\"en\">location</span> balneari che si susseguono lungo la mitica <span lang=\"en\">Pacific Coast Highway</span>, una tra le più famose è senza dubbio l’elegante <strong>Santa Monica</strong>, celebre per le spiagge e per il pontile di legno dei primi del 900, il Santa Monica <span lang=\"en\">Pier</span> sempre affollato con tanto di ristoranti e ruota panoramica. Immediatamente a sud di Santa Monica si trova l’eccentrica <span lang=\"en\">Venice Beach</span>, mentre a poca distanza ad ovest sorge l’esclusiva località di <strong>Malibù</strong>, celebre per alcune delle migliori spiagge per praticare <span lang=\"en\">surf</span> e per le costosissime residenze con accesso diretto al mare che si incontrano ai lati della statale, di proprietà di numerose <span lang=\"en\">star</span> del cinema.</p>', 'city', 'sea'),
(19, 'New York city', 'north-america', 'New York', '<p><strong><span lang=\"en\">New York</span></strong>, spesso chiamata <span lang=\"en\">New York City</span> per distinguerla dallo stato omonimo, è una città degli Stati Uniti d’America situata nello stato di <span lang=\"en\">New York</span>. Conosciuta nel mondo anche come <em>\"Grande mela\"</em> <span lang=\"en\">(Big Apple)</span>, sorge su un’area di circa 785 <abbr title=\"Chilometri quadrati\">km²</abbr> alla foce del fiume <span lang=\"en\">Hudson</span>, sull’oceano Atlantico, mentre l’area metropolitana comprende anche aree situate nei due adiacenti stati del <span lang=\"en\">New Jersey</span> e del <span lang=\"en\">Connecticut</span>. Con 8,8 milioni di abitanti, è la città più popolosa dello stato di <span lang=\"en\">New York</span> e degli Stati Uniti superando doppiamente <span lang=\"en\">Los Angeles</span>, seconda città nazionale per popolazione. È riconosciuta come città globale che la rende (insieme a Londra) la città più importante per l’economia globale oltre che nazionale.</p><p>Preparati per rimanere stordito dalla immensità della città e i giganteschi edifici che la popolano.</p>', 'city', NULL),
(20, 'Vancouver', 'north-america', 'Canada', '<p>Spesso considerata una delle città più vivibili del mondo, <strong><span lang=\"en\">Vancouver</span></strong> è stata classificata anche come la migliore città in cui vivere in Nord America. Anche famosa per i suoi paesaggi mozzafiato sulla costa pacifica, riserva una scena culturale vibrante con appuntamenti fissi dal respiro internazionale. D’altronde la sua esuberanza culturale è data dal fatto che <span lang=\"en\">Vancouver</span> è una delle città più etnicamente variegate del <strong>Canada</strong>, tanto che il 52% dei residenti non è madrelingua inglese.</p><p>Con le montagne alle spalle e infiniti litorali, <span lang=\"en\">Vancouver</span> è una città perfetta per sciare in inverno e andare al mare in estate.</p> <p>Il periodo più indicato per visitare <span lang=\"en\">Vancouver</span> è comunque tra giugno e ottobre quando le temperature sono miti ed è più raro che piova.</p> ', 'city', 'mountains'),
(21, 'Auckland', 'oceania', 'Nuova Zelanda', '<p>Impreziosita da un porto e un ponte spettacolari, la città più grande della Nuova Zelanda è anche una delle più belle, e i suoi quartieri si sviluppano attorno a una varietà di baie ideali per nuotare, fare sport acquatici e in particolare per dedicarsi alla nautica da diporto - da qui il soprannome di <span lang=\"en\">’City of Sails’</span> (’città delle vele’). Difficile immaginare una città con una posizione più armoniosa e fortunata di questa: l’istmo punteggiato da cime vulcaniche è solo una delle meraviglie della città che, a poche ore di strada, offre paradisi naturalistici incredibili ricchi di flora lussureggiante.</p>', 'sea', 'city'),
(22, 'Bora Bora', 'oceania', 'Polinesia francese', '<p>Splendida isola per metà vulcanica, a 50 minuti di volo da Tahiti, circondata da una laguna spettacolare la cui sola vista mozzafiato. Bora Bora è senza dubbio la più celebrata isola dell’arcipelago.</p><p>Con l’incantevole spiaggia di Matira <span lang=\"en\">Beach</span>, l’incredibile susseguirsi di bianchissimi motu, l’immensa varietà dei colori delle sue acque, Bora Bora saprà incantarvi sin dal primo istante.</p>', 'sea', NULL),
(23, 'Isole Fiji', 'oceania', 'Repubblica delle Fiji', '<p>Basta il nome di queste isole perse nelle acque del Pacifico per evocare immagini di paradisi esotici.</p><p>Un arcipelago da sogno con lagune blu cobalto, fiumi e foreste, isole di origine vulcanica che si alternano ad atolli corallini, spiagge bianche bordate da cocchi.</p><p>Lontane e favolose, le Isole Fiji sono un paradiso di piccole isole di spiaggia bordate dalle acque blu della laguna.</p><p>Le isole Fiji sono le vere “perle” del Sud Pacifico per i panorami mozzafiato, le belle spiagge coralline, le terse acque turchesi, la straordinaria biodiversità marina e i <span lang=\"en\">reef</span> che sono un vero e proprio paradiso per lo <span lang=\"en\">snorkeling</span> e le immersioni.</p>', 'sea', NULL),
(24, 'Sydney', 'oceania', 'Australia', '<p>Ricca di attrazioni iconiche e spiagge assolate, <span lang=\"en\">Sydney</span> è una destinazione che non <strong>dimenticherai mai</strong>.</p><p><span lang=\"en\">Sydney</span> ospita icone imperdibili come il <span lang=\"en\">Sydney Harbour Bridge</span> e l’Opera <span lang=\"en\">House</span>, ma questa città portuale è <strong>in continua evoluzione</strong>.</p><p>Nuovi <span lang=\"en\">rooftop bar</span>, spettacoli teatrali e negozi di <span lang=\"en\">design</span> spuntano ad ogni angolo e l’eccitante vita urbana è perfettamente bilanciata da interi pomeriggi trascorsi distesi sulla sabbia.<p>', 'city', 'sea');

-- --------------------------------------------------------

--
-- Struttura della tabella `flight`
--

CREATE TABLE `flight` (
  `destination` int(11) NOT NULL,
  `airline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `flight`
--

INSERT INTO `flight` (`destination`, `airline`) VALUES
(1, '<span lang=\"en\">KLM Royal Dutch Airlines</span>'),
(2, '<span lang=\"en\">Air France</span>'),
(3, '<span lang=\"en\">Turkish Airlines</span>'),
(4, 'Lufthansa'),
(5, '<span lang=\"en\">KLM Royal Dutch Airlines</span>'),
(6, '<span lang=\"en\">Fly Emirates</span>'),
(7, '<span lang=\"en\">America Airlines</span>'),
(8, '<span lang=\"en\">America Airlines</span>'),
(9, '<span lang=\"en\">Fly Emirates</span>'),
(10, '<span lang=\"en\">Fly Emirates</span>'),
(11, '<span lang=\"en\">Fly Emirates</span>'),
(12, '<span lang=\"en\">Fly Emirates</span>'),
(13, '<span lang=\"fr\">Brussels</span> <span lang=\"en\">airlines</span>'),
(14, '<span lang=\"en\">Ryanair</span>'),
(15, '<span lang=\"en\">Air France</span>'),
(16, 'Lufthansa'),
(17, 'Iberia'),
(18, '<span lang=\"en\">British Airways</span>'),
(19, 'Lufthansa'),
(20, '<span lang=\"en\">Air Canada</span>'),
(21, '<span lang=\"en\">Qatar Airways</span>'),
(22, '<span lang=\"en\">Qatar Airways</span>'),
(23, '<span lang=\"en\">Qatar Airways</span>'),
(24, '<span lang=\"en\">Qatar Airways</span>');

-- --------------------------------------------------------

--
-- Struttura della tabella `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(150) DEFAULT NULL,
  `destination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `description`, `link`, `destination`) VALUES
(1, '<span lang=\"en\">President Hotel</span>', '<p>Situato a 3 minuti a piedi dalla <span lang=\"en\">Queen’s Beach</span>, il <strong><span lang=\"en\">President Hotel</span></strong> offre una piscina a sfioro, un bar con terrazza e vista panoramica sul monte Testa di Leone e sull\'Oceano Atlantico, e una prima colazione all\'inglese.</p><p>Arredate in stile contemporaneo, tutte le camere sono dotate di aria condizionata, <abbr title=\'televisione\'>TV</abbr> a schermo piatto e angolo cottura semi-indipendente con set per la preparazione di tè e caffè, frigobar e forno a microonde.</p><p>L’<span lang=\"en\">Island Restaurant</span> propone <span lang=\"en\">menù</span> a buffet e <span lang=\"fr\">à la carte</span> in un ambiente informale, mentre il <span lang=\"en\">Senate Bar</span> vi attende con <span lang=\"en\">cocktail</span> e altre bevande.</p><p>Troverete una fermata dell’autobus proprio davanti all’hotel, e presso il banco escursioni potrete acquistare i biglietti degli autobus con formula <span lang=\"en\">hop-on hop-off</span>.</p><p>Il <span lang=\"en\">President Hotel</span> dista 6 <abbr title=\'chilometri\'>km</abbr> dal <span lang=\"en\">Cape Town Stadium</span> e dai negozi e dalle attrazioni del <span lang=\"en\">V&A Waterfront</span>, e circa 30 minuti d’auto dall’Aeroporto Internazionale di Città del Capo.</p>', 'https://www.presidenthotel.co.za/', 1),
(2, '<span lang=\"en\">Hotel Tilapia</span>', '<p>Situato a <strong><span lang=\"af\">Mwanza</span></strong>, a 600 metri dalla stazione ferroviaria, l\'<strong>Hotel Tilapia</strong> offre:</p><ul> <li>ristorante;</li> <li>parcheggio privato gratuito;</li> <li>piscina all\'aperto</li> <li>area bar;</li> <li>connessione <span lang=\"en\">WiFi</span> gratuita;</li> <li>un giardino e una terrazza</li> <li><span lang=\"en\">reception</span> aperta 24 ore su 24;</li> <li>servizio in camera</li> <li>cambio valuta.</li></ul><p>Inoltre al mattino verrà servita una colazione continentale. La struttura ospita un parrucchiere e un centro business.</p><p>L\'Hotel Tilapia dista 1,1 <abbr title=\'metri\'>km</abbr> dal Parco Nazionale dell\'Isola di Saanane e 3,4 <abbr title=\'metri\'>km</abbr> dallo stadio Kirumba. La struttura dista 11 <abbr title=\'metri\'>km</abbr> dall\'Aeroporto di <span lang=\"af\">Mwanza</span>, lo scalo più vicino, e fornisce un servizio di navetta aeroportuale a pagamento.</p>', 'https://hoteltilapia.wixsite.com/tilapia-def', 2),
(3, '<span lang=\"en\">Grand Rotana Resort & Spa</span>', '<p>Questo <strong>resort</strong> ti conquisterà con i suoi immensi spazi. Circondato da ampi giardini curati e impreziositi da cascate e da oltre 2.000 palme tropicali, si affaccia direttamente su una serie di meravigliose calette sul <strong>Mar Rosso</strong>. Qui potrai dedicarti allo sport e al <span lang=\"en\">relax</span>, approfittando dell’enorme piscina all’aperto e del centro benessere. Grazie alla vicinanza della famosa Isola di Tiran, offre la possibilità di straordinarie escursioni di <strong>snorkeling</strong>.</p>', 'https://www.rotana.com/rotanahotelandresorts/egypt/sharmelsheikh/grandrotanaresortandspa', 3),
(4, '<span lang=\"af\">Arebbusch</span> <span lang=\"en\"><span lang=\"en\">Travel Lodge</span></span>', '<p>Immerso in un grande parco lungo il fiume asciutto <strong><span lang=\"af\">Arebbusch</span></strong>, a 5 <abbr title=\'metri\'>km</abbr> dal centro di <strong><span lang=\"en\">Windhoek</span></strong>, l\'<span lang=\"af\">Arebbusch</span> <span lang=\"en\"><span lang=\"en\">Travel Lodge</span></span> offre piscine all\'aperto con terrazze solarium e un parcheggio gratuito vicino alle camere.</p><p>Le spaziose sistemazioni sono ospitate negli edifici con vista sul giardino e dotate di:</p><ul><li>aria condizionata</li><li>frigorifero</li><li>bagno privato</li></ul><p>Alcune presentano una terrazza arredata e la vista sulla piscina.</p><p>Il ristorante con caminetto propone una colazione con piatti caldi e freddi e specialità della tradizionale cucina africana, da gustare anche sulla terrazza con vista sul laghetto con fontana. Durante il soggiorno approfittate anche del bar e del <span lang=\"en\">barbecue</abbr> <span lang=\"af\">braai</span> comune.</p><p>La struttura vanta zone ombreggiate ideali per rilassarsi e una <span lang=\"en\">reception</span> attiva 24 ore su 24, il cui personale sarà lieto di darvi informazioni sulle attrazioni e le attività della zona. L\'<span lang=\"af\">Arebbusch</span> <span lang=\"en\">Travel Lodge</span> si trova a 8 minuti a piedi dallo stadio nazionale di <span lang=\"en\">rugby</span> e a meno di 5 minuti in auto da:</p><ul><li>un <span lang=\"en\">bowling</span></li><li>un campo da golf</li><li>un centro sportivo</li></ul><p>L\'<span lang=\"af\">Arebbusch</span> <span lang=\"en\">Travel Lodge</span> dista 5 minuti in auto dall\'Aeroporto nazionale Eros e 50 <abbr title=\'metri\'>km</abbr> dall\'Aeroporto internazionale di <span lang=\"en\">Windhoek</span>.</p>', 'https://www.arebbusch.com/', 4),
(5, '<span lang=\"en\">HOTEL RIU PALACE ARUBA</span>', '<p>Affacciato sull’incredibile spiaggia di <span lang=\"en\">Palm Beach</span>, ad Aruba, l’<span lang=\"en\">Hotel Riu Palace Aruba</span> vi offre le migliori strutture per farvi vivere un soggiorno indimenticabile. Questo <span lang=\"en\">hotel</span> di <span lang=\"en\">Palm Beach</span> con servizio <span lang=\"en\">All Inclusive</span> 24 ore vanta una ricca offerta gastronomica, vaste strutture e i migliori e più esclusivi servizi tipici di <span lang=\"en\">RIU Hotels & Resorts</span>.</p><p>Le oltre 400 camere dell’<span lang=\"en\">Hotel Riu Palace Aruba</span> vi offrono i migliori servizi per garantirvi il massimo <span lang=\"en\">comfort</span>: <ul><li>collegamento Wi-Fi,</li><li><abbr title=\'televisione\'>TV</abbr> satellitare,</li><li>aria condizionata,</li><li>minibar,</li><li><span lang=\"en\">dispenser</span> per le bibite</li></ul>. Nelle strutture dell’<span lang=\"en\">hotel</span>, inoltre, potrete rinfrescarvi in 2 piscine all’aperto e in 1 riservata ai più piccoli. Se desiderate rilassarvi in spiaggia, qui avrete a vostra disposizione sdraio e ombrelloni che vi faranno godere al meglio il caldo clima di Aruba.</p>', 'https://www.booking.com/hotel/aw/riu-palace-aruba-all-inclusive.it.html', 5),
(6, 'NH <span lang=\"es\">Buenos Aires</span> <span lang=\"en\">City</span>', '<p>L’hotel 5 stelle <span lang=\"en\">NH</span> <span lang=\"es\">Buenos Aires</span> <span lang=\"en\">City</span>, precedentemente noto come <span lang=\"en\">NH City</span> <span lang=\"es\">Buenos Aires</span>, si trova nel centro storico della città. </p><p>La sua facciata degli anni Trenta in stile <span lang=\"en\">Art</span> <span lang=\"fr\">Déco</span> si integra alla perfezione con il vicino palazzo del Cabildo e la centrale <span lang=\"es\">Plaza de Mayo</span>. A breve distanza si trovano anche le stradine acciottolate di San Telmo.</p><ul>    <li>Vicino al lungomare di <span lang=\"es\">Puerto Madero</span>;</li>    <li>A due passi dai negozi di via Florida;</li>    <li>Trasporti pubblici per ogni punto della città;</li>    <li>Le camere dell\'hotel si distinguono per l\'originale <span lang=\"en\">design</span> e la scelta dei colori, con combinazioni che vanno dal rosso e nero al bianco e marrone. Ogni camera sfoggia pavimenti in <span lang=\"fr\">parquet</span> e grandi finestre, che inondano l\'ambiente di luce naturale;</li>    <li>Camere comunicanti per le famiglie;</li>    <li>Camere d\'angolo con vista sui principali simboli della città;</li>    <li>Camere insonorizzate;</li>    <li>La piscina alla moda, situata sul tetto dell\'hotel, è la sua attrattiva più popolare. Da qui è possibile ammirare una vista panoramica della città. Al piano inferiore troverai il ristorante, arredato in stile classico, che serve specialità nazionali con un tocco <span lang=\"fr\">gourmet</span>;</li>    <li>Moderno <span lang=\"en\">lounge</span> bar aperto 24 ore su 24;</li>    <li>Ampia palestra a uso gratuito;</li>    <li>Piscina sul tetto con elegante solarium, aperta in estate;</li></ul>', 'https://www.booking.com/hotel/ar/nh-city.it.html', 6),
(7, '<span lang=\"es\">Acacia Galapagos</span> <span lang=\"fr\">Boutique</span> Hotel', '<p>Una casa familiare restaurata situata nel cuore di <span lang=\"es\">Puerto Ayora</span>, sull\'isola di <span lang=\"es\">Santa Cruz</span>, ospita ora il moderno  <span lang=\"es\">Acacia Galapagos</span> <span lang=\"fr\">Boutique</span> Hotel con 8 camere. </p><p>Con le sue installazioni eleganti e le bellissime camere, l\'hotel offre ai suoi ospiti un ottimo livello di comfort.</p><p>Il team dedicato ed esperto di <span lang=\"es\">Acacia</span> fornisce un servizio clienti personalizzato e di alto livello.</p><p>Oltre a una piscina all\'aperto, una <span lang=\"en\">jacuzzi</span> e una sala colazione e lettura, l\'<span lang=\"es\">Acacia Galapagos</span> <span lang=\"fr\">Boutique</span> Hotel offre ai suoi ospiti anche una terrazza panoramica e una sala spa/<span lang=\"en\">yoga</span>.</p>', 'https://www.acaciagalapagos.com/', 7),
(8, 'Hotel <span lang=\'nl\'>Kosten Aike</span>', '<p>Situato a <span lang=\"es\">El Calafate</span>, a 200 metri dal centro della città, l\'Hotel <span lang=\"nl\">Kosten Aike</span> si trova in un imponente edificio in stile alpino, e offre una spa, un centro <span lang=\"en\">fitness</span> e camere con WiFi gratuito. </p><p>Durante il soggiorno potrete gustare una colazione a <span lang=\"en\">buffet</span> ogni mattina e rilassarvi nel profumato giardino della struttura.</p><p>Caratterizzate da arredi eleganti, le luminose e spaziose sistemazioni sono dotate di TV via cavo, minibar, cassaforte, riscaldamento, scrivania, telefono e bagno privato con set di cortesia e asciugacapelli. Come ospiti della struttura avrete a disposizione una navetta aeroportuale a un costo aggiuntivo.</p><p>Presso l\'hotel troverete strutture benessere quali una vasca idromassaggio, una sauna, una doccia scozzese e una sala massaggi, una sala per i giochi con biliardo, un tavolo da ping-pong, un salone per eventi e un centro <span lang=\"en\">business</span> fornito di <span lang=\"en\">computer</span>.</p><p>L\'Hotel <span lang=\"nl\">Kosten Aike</span> è provvisto di un parcheggio gratuito in loco, e dista 8 km dal Museo del Ghiaccio <span lang=\"la\">Glaciarium</span> e 20 km dall\'Aeroporto Comandante Armando Tola.</p>', 'https://www.kostenaike.com.ar/', 8),
(9, '<span lang=\"id\">Radisson Blu Bali Uluwatu</span>', '<p>Situato a Uluwatu, a 200 metri dalla spiaggia di <span lang=\"id\">Bingin</span>, il <span lang=\"id\">Radisson Blu Bali Uluwatu</span> offre <ul> <li>un ristorante,</li> <li>una piscina all\'aperto,</li> <li>un centro fitness</li> <li>un parcheggio privato gratuit/li></ul>.Il <span lang=\"id\">Radisson Blu Bali Uluwatu</span> dista 250 metri dalla spiaggia <span lang=\"id\">Impossible Beach</span> e 550 metri dalla spiaggia di <span lang=\"id\">Cemongkak</span>. Questa zona di <span lang=\"id\">Uluwatu</span> è una delle preferite dai nostri ospiti, in base alle recensioni indipendenti. La struttura è provvista di <ul><li><span lang=\"en\">reception</span> aperta 24 ore su 24,</li><li>connessione <span lang=\"en\">WiFi</span> gratuita nell’intero edificio,</li><li>servizio in camera,</li><li>servizio di trasferimento aeroportuale</li></ul>. L\'hotel dispone di alcune camere con vista sul mare e altre con proprio giardino, queste includono un balcone.</p>', 'https://www.radissonhotels.com/en-us/hotels/radisson-blu-bali-uluwatu', 9),
(10, '<span lang=\"en\">The St. Regis Hong Kong</span>', '<p>Situato a Hong Kong, a meno di 1 km dall\'Hong Kong <span lang=\"en\">Convention</span> and <span lang=\"en\">Exhibition Centre</span>, il <span lang=\"en\">St. Regis Hong Kong</span> offre un ristorante, un parcheggio privato, un centro fitness e un bar.</p><p>Dotato di una terrazza, questo hotel a 5 stelle dispone di camere climatizzate con connessione <span lang=\"en\">WiFi gratuita</span>.</p><p>La struttura fornisce una <span lang=\"en\">reception</span> aperta 24 ore su 24, il servizio in camera e il cambio valuta.</p>', 'https://www.booking.com/hotel/hk/the-st-regis-hong-kong.it.html', 10),
(11, '<span lang=\"en\">Novotel Ambassador</span> <span lang=\'ko\'>Seoul Yongsan</span>', '<p>Situato nel complesso <span lang=\"en\">Seoul Dragon City</span>, il <strong><span lang=\"en\">Novotel Ambassador</span> <span lang=\'ko\'>Seoul Yongsan</span></strong> offre 621 camere e <span lang=\"en\">suite</span>.</p><p>L\'hotel è collegato all\'uscita 3 della Stazione tramite un passaggio coperto.</p><p>Il <span lang=\"en\">WiFi</span> è fruibile gratuitamente in tutte le aree., inoltre tutte le sistemazioni sono dotate di divano e scrivania.</p><p>Soggiornando in alcuni alloggi avrete modo di accedere gratuitamente al centro <span lang=\"en\">fitness</span>, alla piscina e alla sauna.</p>', 'https://www.booking.com/hotel/kr/novotel-ambassador-seoul-yongsan.it.html', 11),
(12, '<span lang=\"en\">Hotel Sunroute Plaza</span>', '<p>Situato nel centro di <strong><span lang=\'ja\'>Shinjuku</span></strong>, a soli 4 minuti a piedi dalle stazioni di <span lang=\'ja\'>Shinsen-Shinjuku</span>, l\'Hotel <span lang=\"en\">Sunroute Plaza</span> vanta camere con TV satellitare e connessione <span lang=\"en\">WiFi</span> gratuita, e varie comodità tra cui distributori automatici di bevande, una lavanderia automatica e il servizio di cambio valuta.</p><p>Dalla struttura potrete raggiungere in meno di 15 minuti di cammino il parco <span lang=\'ja\'>Shinjuku Gyoen</span>, il quartiere di Kabukicho, il parco <span lang=\'ja\'>Yoyogi</span> e il famoso grande magazzino <span lang=\'ja\'>Isetan</span>.</p><p>Il <span lang=\'ja\'>Shinjuku</span> <span lang=\"en\">Sunroute Plaza</span> offre un deposito bagagli, i servizi di pulizia a secco e deposito di oggetti di valore presso la reception, aperta 24 ore su 24, e il servizio navetta da/per l\'aeroporto a pagamento.</p>', 'https://en.sunrouteplazashinjuku.jp/', 12),
(13, '<span lang=\"fr\">Hilton Brussels Grand Place</span>', '<p>Situato nel centro storico di <span lang=\"fr\">Bruxelles</span>, a 100 metri dal centro storico, l\'hotel <span lang=\"fr\">Hilton Brussels Grand Place</span> offre un ristorante di alta classe e il servizio in camera. Inoltre vi è un parcheggio privato, una palestra e una stanza per effettuare <span lang=\"en\">meeting</span> di lavoro per soddisfare tutti i diversi tipi di necessità.</p><p>Ogni mattino vi attende un <span lang=\"fr\">buffet</span> con vastissima scelta ed è possibili pranzare e cenare su richiesta.L\'hotel è provvisto di rete <span lang=\"en\">wifi</span> gratuita, è <span lang=\"en\">pet-friendly</span> e vi sarà fornita una chiave elettronica per ottenere l\'accesso alla struttura a qualsiasi orario della notte.</p><p>Si trova a 400 metri dal <span lang=\"fr\">Grand-Place</span> e a 500 metri dalla cattedrale di San Michele e Santa Gudula.</p>', 'https://www.hilton.com/', 13),
(14, '<span lang=\"en\">Six Senses</span> <span lang=\"es\">Ibiza</span>.', '<p>Il nord di <span lang=\"es\">Ibiza</span> ha sempre attratto gli spiriti liberi, attratti dalla bellezza, dalla luce e dal ritmo naturale. La visione della destinazione <span lang =\"en\">Six Senses</span> <span lang=\"es\">Ibiza</span> è quella di catturare questa autentica esperienza di comunità, spiritualità e celebrazione. </p><p>Situato a soli 35 minuti dall\'aeroporto, il <span lang=\"en\">resort</span> è nascosto nella tranquilla e riservata punta settentrionale dell\'isola.</p><p>(Non molto) più lontano, pagaia intorno alla punta fino alle capanne dei pescatori sbiancate dal sole a <span lang=\"es\">Cala Xuclar</span>, fai acquisti al mercato dell\'artigianato domenicale locale nella <span lang=\"es\">bohémien San Juan</span>, pranza a <span lang=\"es\">La Paloma</span>, senti il ​​magnetismo del mistico <span lang=\"es\">Es Vedra</span> e immergiti nel tamburo al tramonto nella baia di <span lang=\"es\">Benirras</span> a forma di ferro di cavallo.</p>', 'https://www.sixsenses.com/en/resorts/ibiza', 14),
(15, '<span lang=\"en\">Hyatt Regency Nice</span> <span lang=\"fr\">Palais de la Méditerranée</span>', '<p>Ospitato in un edificio in stile <span lang=\"en\">Art</span> <span lang=\"fr\">decò</span>, lo <span lang=\"en\">Hyatt Regency Nice</span> <span lang=\"fr\">Palais de la Méditerranée</span> è un cinque stelle che si affaccia direttamente sulla <span lang=\"fr\">Promenade des Anglais</span>. </p><p>Le camere dell’hotel offrono TV, rete <span lang=\"en\">Wi-Fi</span>, minibar, bagno in marmo con asciugacapelli e kit di cortesia. </p><p>Le sistemazioni di categoria superiore hanno balcone arredato e macchina per il caffè. Le <span lang=\"en\">suite</span> vantano inoltre una zona salotto. </p><p>La struttura comprende una piscina interna e una all\'aperto, bagno turco, sauna, palestra, terrazza con vista panoramica e casinò. </p><p>La <span lang=\"en\">reception</span> è attiva 24 ore su 24. </p><p>Ogni mattina l’hotel <span lang=\"en\">Hyatt Regency Nice</span> <span lang=\"fr\">Palais de la Méditerranée</span> propone una colazione continentale a <span lang=\"fr\">buffet</span>. L’albergo ospita un lounge bar e il ristorante Le 3e, che serve piatti della cucina mediterranea preparati con prodotti stagionali del territorio. </p><p>L’hotel  <span lang=\"en\">Hyatt Regency Nice</span> <span lang=\"fr\">Palais de la Méditerranée</span> dista un minuto a piedi dalla spiaggia e sei minuti da Villa Massena. La Cattedrale di Santa Reparata è a 1,3 km, il <span lang=\"fr\">Musée du Palais Lascaris</span> a 1,4 km e il <span lang=\"fr\">Musée</span> <span lang=\"en\">National</span> <span lang=\"fr\">Marc Chagall</span> a 2,2 <abbr title=\'metri\'>km</abbr>.</p>', 'https://www.hyatt.com/en-US/hotel/france/hyatt-regency-nice-palais-de-la-mediterranee/ncehr', 15),
(16, 'Hotel <span lang=\"fr\">Saint-Charles</span>', '<p>Completamente rinnovato nel 2019, l\'hotel <span lang=\"fr\">Saint-Charles</span> vi offre tutto il fascino di un hotel 3 stelle tipicamente parigino.</p><p>Dopo un\'accoglienza personalizzata, l\'intero team dell\'hotel <span lang=\"fr\">Saint-Charles</span> farà tutto il possibile per rendere il vostro soggiorno il più piacevole possibile.</p><p>L\'hotel e ogni camera dispone di:</p><ul>    <li>Hotel completamente climatizzato</li>    <li>Connessione Wi-Fi gratuita</li>    <li>Soggiorno e ampio salone di rappresentanza</li>    <li>Bar</li>    <li>Terrazza, Giardino privato</li>    <li>Colazione a buffet o vassoio servito in camera</li>    <li>Ascensore</li>    <li>Riscaldatore</li>    <li>Reception aperta 24 ore su 24</li>    <li>Concierge</li>    <li>Casseforti</li>    <li>Registrazione e pagamento rapidi</li>    <li>Deposito bagagli</li>    <li>Attrezzature per mobilità ridotta</li></ul>', 'https://www.hotel-saint-charles.com/', 16),
(17, '<span lang=\"en\">Acme Hotel Chicago</span>', '<p>Struttura <span lang=\"fr\">boutique</span> alternativa, l\'<span lang=\"en\">Acme Hotel Company Chicago</span> sorge nel quartiere <span lang=\"en\">River North</span> di <span lang=\"en\">Chicago</span>, a soli 2 isolati dai negozi, i punti ristoro e i locali del <span lang=\"en\">Magnificent Mile</span>, e offre <span lang=\"en\">comfort</span> esclusivi, punti ristoro e la connessione <span lang=\"en\">WiFi</span> gratuita con servizio di <span lang=\"en\">hotspot</span>.</p><p>Le camere vantano tecnologia audio e video comprensiva di <span lang=\"en\">Smart <abbr title=\'televisione\'>TV</abbr> LED</span> da 46 pollici con connessione via <span lang=\"en\">tablet</span>. Includono inoltre un\'ampia scrivania con sedia ergonomica, un minibar e un vassoio di <span lang=\"en\">snack</span>.</p><p>Il <span lang=\"en\">Berkshire Room</span>, <span lang=\"en\">cocktail</span> <span lang=\"fr\">lounge</span> in loco, vi attende con <span lang=\"en\">cocktail</span> artigianali e spuntini. Avrete l\'opportunità di gustare i freschi prodotti da forno locali, i panini <span lang=\"en\">gourmet</span> e i dolci a portar via della <span lang=\"en\">West Town Bakery</span>, e usufruire ogni mattina di un servizio gratuito di consegna in camera di caffè preparato secondo i vostri gusti.</p><p>Presso la struttura troverete un centro <span lang=\"en\">business</span>, spazi per riunioni e un centro <span lang=\"en\">fitness</span>, ideale per mantenersi in forma. Potrete noleggiare gratuitamente degli <span lang=\"en\">smartwatch</span>.</p><p>L\'<span lang=\"en\">Acme Hotel Company Chicago</span> dista 1,6 <abbr title=\'metri\'>km</abbr> dal <span lang=\"en\">Navy Pier</span>, dal Lago <span lang=\"en\">Michigan</span> e dal <span lang=\"en\">Millennium Park</span>, e 19,3 <abbr title=\'metri\'>km</abbr> dall\'Aeroporto Internazionale di <span lang=\"en\">Chicago-Midway</span>.</p>', 'https://www.acmehotelcompany.com/?utm_source=google%20my%20business&utm_medium=listing&utm_campaign=visit%20website', 17),
(18, '<span lang=\"en\">Huntley Santa Monica Beach</span>', '<p>Situato a meno di 5 minuti di cammino dalla <span lang=\"en\"><abbr title=\'third\'>3rd</abbr> Street Promenade</span> e dalla passeggiata del Santa Monica <span lang=\"en\">State Beach</span>, questo moderno hotel di lusso ubicato accanto alla spiaggia offre:</p><ul><li>un ristorante</li><li>un bar</li><li>un salone</li></ul><p>Alcune camere regalano la vista sull\'oceano.</p><p>Moderne e arredate con lenzuola bianche, tutte le sistemazioni dispongono di <abbr title=\'televisione\'>TV</abbr> a schermo piatto, morbidi accappatoi, pantofole e set di cortesia spa dell\'<strong><span lang=\"en\">Huntley Santa Monica Beach</span></strong>. Alcuni alloggi includono una vasca da bagno con idromassaggio.</p><p>Caratterizzato dalla vista all’ultimo piano sull\'oceano e sulla costa, il ristorante, bar e salone <span lang=\"en\">Penthouse</span> sfoggia uno stile elegante con tende, sontuose poltrone bianche e biancheria bianco su bianco. La cena viene servita tutti i giorni e il <span lang=\"en\">brunch</span> nel fine settimana. Presso l’<span lang=\"en\">Huntley</span> potrete, inoltre, godere di un menù <span lang=\"en\">happy hour</span> dal lunedì al venerdì.</p><p>L’<span lang=\"en\">Huntley</span> fornisce una <span lang=\"en\">reception</span> aperta 24 ore su 24, il servizio in camera, il servizio <span lang=\"fr\">concierge</span> e i servizi di lavaggio a secco, lustrascarpe e di trasferimento aeroportuale.</p><p>In 10 minuti in auto dall’<span lang=\"en\">Huntley Santa Monica Beach</span> raggiungerete <strong><span lang=\"en\">Venice Beach</span></strong>. L’<span lang=\"en\">Huntley Santa Monica Beach</span> dista appena 19,3 <abbr title=\'chilometri\'>km</abbr> da <strong><span lang=\"en\">Hollywood</span></strong>, California.</p>', 'https://www.thehuntleyhotel.com/', 18),
(19, '<span lang=\"en\">Pod Times Square</span>', '<p>Situato a 400 metri dal ristorante <span lang=\"en\">Row</span> di <strong><span lang=\"en\">New York</span></strong>, il <strong><span lang=\"en\">Pod Times Square</span></strong> dispone di:</p><ul><li>un ristorante</li><li>di un bar</li><li>della connessione <span lang=\"en\">WiFi</span> gratuita in tutti gli ambienti</li></ul><p>Alcune camere includono un\'area salotto, perfetta per i vostri momenti di relax, mentre tutte sono dotate di:</p><ul><li>una <abbr title=\'televisore\'>TV</abbr> a schermo piatto</li><li>di un bagno privato con:<ul><li>doccia</li><li>set di cortesia</li><li>asciugacapelli</li></ul></li></ul><p>La <span lang=\"en\">reception</span> in loco è operativa 24 ore su 24.</p><p>Il <span lang=\"en\">Pod Times Square</span> dista:</p><ul><li>600 metri da <span lang=\"en\">Times Square</span></li><li>800 metri dal <span lang=\"en\">Jacob K. Javits Convention Center</span></li><li>10 <abbr title=\'metri\'>km</abbr> dall\'Aeroporto di <span lang=\"en\">New York</span>-LaGuardia, il più vicino alla struttura</li></ul>', 'https://www.thepodhotel.com/pod-times-square/', 19),
(20, '<span lang=\"en\">Georgian Court Hotel</span>', '<p>Hotel <span lang=\"fr\">boutique</span> nel cuore del centro di <span lang=\"en\">Vancouver</span>, di fronte al <strong><span lang=\"en\"><abbr title=\'British Columbia\'>BC</abbr> Place</span></strong>, il <strong><span lang=\"en\">Georgian Court Hotel, <abbr title=\'Best Western\'>BW</abbr> Premier Collection</span></strong> offre un ristorante e il <span lang=\"en\">WiFi</span> gratuito. Il <strong><span lang=\"en\">Queen Elizabeth Theatre</span></strong> è raggiungibile con una passeggiata di 4 minuti.</p><p>Tutte le camere del <span lang=\"en\">Georgian Court Hotel</span> sono dotate di <abbr title=\'televisione\'>TV</abbr> a schermo piatto da 37 pollici, macchinetta del caffè e set di cortesia <span lang=\"en\">Beekman</span> 1802.</p><p>Il <span lang=\"en\">Georgian Court Hotel</span> vanta:</p><ul><li>un centro fitness completamente attrezzato</li><li>una vasca idromassaggio</li><li>una sauna a infrarossi</li></ul><p>Tra gli informali punti ristoro figurano il <span lang=\"en\">Frankie’s Italian Kitchen</span> e il <span lang=\"en\">Frankie’s Bar</span>.</p><p>I negozi di <span lang=\"en\">Robson Street</span> distano 12 minuti a piedi.</p>', 'https://www.georgiancourthotelvancouver.com/', 20),
(21, 'Ohtel <span lang=\"en\">Auckland</span>', '<p>L\'<span lang=\"en\">Ohtel Auckland</span> vanta un ristorante, una piscina all\'aperto, un centro <span lang=\"en\">fitness</span> e un bar a <span lang=\"en\">Auckland</span>.</br> Caratterizzato da un giardino, questo <span lang=\"en\">hotel</span> a 5 stelle dispone di camere climatizzate con bagno privato.</br>La struttura fornisce una <span lang=\"en\">reception</span> aperta 24 ore su 24 e il servizio in camera.</p>', 'https://ohtel.nz/auckland/', 21),
(22, '<span lang=\"en\">Conrad Bora Bora Nui</span>', '<p>Situato in una baia privata a <span lang=\"en\">Motu To\'opua/span>, il <span lang=\"en\">Conrad Bora Bora Nui</span> si trova in una posizione esclusiva, e offre ampie viste sull\'oceano blu, una spiaggia di sabbia bianca e lussuose ville poste sulle acque turchesi della laguna o arroccate sulla collina tropicale.</p><p>Durante il soggiorno potrete nuotare in piscina, concedervi i rilassanti trattamenti proposti dal salone di bellezza o assaporare i raffinati piatti dei 4 ristoranti della struttura.</p>', 'https://www.hilton.com/en/hotels/pptbnci-conrad-bora-bora-nui/', 22),
(23, 'Sofitel Fiji <span lang=\"en\">Resort & Spa</span>', '<p>Situato in una splendida posizione fronte spiaggia, il Sofitel Fiji <span lang=\"en\">Resort & Spa<span> offre soggiorni esclusivi sull’isola.</p><p>Il Sofitel Fiji <span lang=\"en\">Resort & Spa</span> propone 296 moderni alloggi climatizzati, ognuno dotato di balcone privato con vista sull’oceano.</p><p>In ogni camera troverete aria condizionata, TV LED, minibar e cassaforte elettronica personale,la maggior parte delle sistemazioni vi regala una vista sull\'oceano.</p>', 'https://www.sofitel-fiji.com/', 23),
(24, '<span lang=\"en\">Fullerton Hotel Sydney</span>', '<p>Situato nel <span lang=\"en\">Central Business District</span> di <span lang=\"en\">Sydney</span>, vicino al vivace Centro Commerciale <span lang=\"en\">Martin Place</span>, il <span lang=\"en\">Fullerton Hotel Sydney</span> offre un ristorante, un bar e un centro fitness.</p><p>Vanta inoltre lussuose camere personalizzate nell’arredamento con TV a schermo piatto. Alcune sistemazioni regalano splendide viste sulla città. Il <span lang=\"en\">WiFi</span> è fruibile gratuitamente nelle aree comuni.</p>', 'https://www.fullertonhotels.com/fullerton-hotel-sydney', 24),
(234, 'PROVA', 'OLLARE THE GANG', 'www.chess.com', 19),
(344, '777', 'LA SUA SA DI CARAMELLE TIPO HARIBO', 'LALALALALA', 19);

-- --------------------------------------------------------

--
-- Struttura della tabella `image_activity`
--

CREATE TABLE `image_activity` (
  `id` int(11) NOT NULL,
  `path` varchar(150) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 0,
  `activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `image_activity`
--

INSERT INTO `image_activity` (`id`, `path`, `alt`, `is_cover`, `activity`) VALUES
(1, './assets/Africa/capeTown-southAfrica/activities/bike-tour/images/cover.webp', 'Muontain bike posizionata davati al cartello di legno in cui si legge \'Cape of Good Hope the most south-western point of the african content\'.', 1, 1),
(2, './assets/Africa/capeTown-southAfrica/activities/bike-tour/images/bike1.webp', 'Foto di 3 amici in una sosta lungo il tragitto del bike tour. La strada è asfaltata e in questo tratto costeggia il mare, sullo sfondo si scorgono versi colline.', 0, 1),
(3, './assets/Africa/capeTown-southAfrica/activities/bike-tour/images/bike2.webp', 'Primo piano di una bicicletta in sosta su un spiazzo d\'erba, con mare e colline sullo sfondo.', 0, 1),
(4, './assets/Africa/capeTown-southAfrica/activities/bike-tour/images/bike3.webp', 'Muontain bike parcheggiata sulla stradina di asfalto, sullo sfondo si nota la spiaggia bagnata dal mare e un paesaggio collinare.', 0, 1),
(5, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/cover.webp', 'Foto dall\'esterno di una cabina della funivia che porta i turisti in cima alla montagna. Sullo sfondo si vede in lontananza la città, molto verde e il mare.', 1, 2),
(6, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour1.webp', 'Viale asfaltato in cui alcuni turisti passeggiano stranquillamente guardando le numerose casette colorate che si trovano ai due lati della strada.', 0, 2),
(7, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour2.webp', 'Visuale dalla cima della montagna del panorama circostante, si vede una montagna più bassa con la cima rocciosa, la pianura con la città e il mare. La luce del tramonto illumina tutto e un escursionista è in piedi sulla cima della montagna non lontano da un edificio.', 0, 2),
(8, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour3.webp', 'Cabina di una funivia trasporta i turisti sulla vetta, la montagna è molto ripida e rocciosa.', 0, 2),
(9, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour4.webp', 'Foto alla luce del tramonto del paesaggio dall\'alto, si osservano due montagne, la prima in primo piano, la pianura con la cittadina e sullo sfondo il mare.', 0, 2),
(10, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour5.webp', 'Spiaggia di sabbia bianca affollata di pinguini, il mare limpido e calmo bagna la costa.', 0, 2),
(11, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour6.webp', 'Primo piano di due pinguini africani.', 0, 2),
(12, './assets/Africa/capeTown-southAfrica/activities/city-tour/images/tour7.webp', 'Una numerosa colonia di pinguini riposa su un\'ampia spiaggia di sabbia bianca.', 0, 2),
(13, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/cover.webp', 'Foto macro del muso di un leopardo steso sull\'erba con gli occhi aperti vigili.', 1, 3),
(14, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve1.webp', 'Maestoso leone in piedi in mezzo a un prato erboso.', 0, 3),
(15, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve2.webp', 'Cucciolo di elefante cammiina nella natura, alberi bassi e arbusti lo circondano.', 0, 3),
(16, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve3.webp', 'Una leonessa e il suo cucciolo giocano affettuosamente.', 0, 3),
(17, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve4.webp', 'Quattro ghepardi divorano in modo famelico una gazzella.', 0, 3),
(18, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve5.webp', 'Macro di un elefante che con la proboscite di porta alla bocca un ramo.', 0, 3),
(19, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve6.webp', 'Un cucciolo di elefante cammina tra gli alberi seguito da un altro elefante poco più grande.', 0, 3),
(20, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve7.webp', 'Il fuoristrada tursitico si avvicina a un esemplare di Eland.', 0, 3),
(21, './assets/Africa/capeTown-southAfrica/activities/safari-aquila/images/reserve8.webp', 'Punto di ristoro del safari, locale a forma di capanna. L\'interno illuminato da ampie vetrate ospita numerosi divani e tavolini per accogliere i turisti che desiderano consumare qualcosa al bar.', 0, 3),
(22, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/cover.webp', 'Due foche appena uscita dall\'acqua si godono il sole stese sulle rocce.', 1, 4),
(23, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/sea1.webp', 'Un turista fotografa una balenottera riaffiorata accanto all\'imbarcazione.', 0, 4),
(24, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/sea2.webp', 'Una foca salta fuori dall\'acqua a pancia in su.', 0, 4),
(25, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/sea3.webp', 'Foca salta fuori dall\'acqua giocosamente.', 0, 4),
(26, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/sea4.webp', 'Una numerosa colonia di foche si trova in riva al mare, alcune riposano sulla spiaggia altre nuotano in acqua.', 0, 4),
(27, './assets/Africa/capeTown-southAfrica/activities/sea-tour/images/sea5.webp', 'Uno squalo addenta la corda di una rete.', 0, 4),
(28, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/cover.webp', 'Squalo bianco avvistato dalla gabbia sommersa.', 0, 5),
(29, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/shark1.webp', 'Foto subacquea di uno squalo bianco.', 0, 5),
(30, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/shark2.webp', 'Squalo bianco esce dall\'acqua con le fauci spalancate.', 1, 5),
(31, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/shark3.webp', 'Sede delle immersioni.', 0, 5),
(32, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/shark4.webp', 'Interno del locale ristoro con tavole con panche, cucina e bagni.', 0, 5),
(33, './assets/Africa/capeTown-southAfrica/activities/shark-dive/images/shark5.webp', 'Interno dei bagni con corridi separati per wc e docce.', 0, 5),
(34, './assets/Africa/capeTown-southAfrica/activities/steam-train/images/cover.webp', 'Il treno a vapore attraversa la pianura.', 1, 6),
(35, './assets/Africa/capeTown-southAfrica/activities/steam-train/images/steam1.webp', 'Il paesaggio caratterizzato da bassi arbusti è attraversato dai binari del treno a vapore di cui si vedono alcuni dei vagoni rossi ospitanti i turisti. In lontananza le caratteristiche montagne.', 0, 6),
(36, './assets/Africa/capeTown-southAfrica/activities/steam-train/images/steam2.webp', 'Mercato ferroviario di Elgin, nella zona mostrata sono presenti numerosi tavoli affollati da turisti.', 0, 6),
(37, './assets/Africa/capeTown-southAfrica/activities/steam-train/images/steam3.webp', 'Il treno attraversa Elgin Valley e i passeggeri a bordo si godono la vistuale del panorama circostante.', 0, 6),
(38, './assets/Africa/capeTown-southAfrica/activities/wine-tour/images/cover.webp', 'Rigogliosi vigneti nei dintorni di Stellenbsch visti dall\'alto, nello sfondo le montagne.', 1, 7),
(39, './assets/Africa/capeTown-southAfrica/activities/wine-tour/images/wine1.webp', 'Vigneto di Stellenbosch circondato da alberi, le imponenti montagne di Simonsberg sullo sfondo.', 0, 7),
(40, './assets/Africa/capeTown-southAfrica/activities/wine-tour/images/wine2.webp', 'Interno del locale degustazione della cantina, è presente un tavolo con diverse bottiglie di vino rosso e calici. Un\'ampia finestra ad arco illumina  la stanza dando accesso al grazioso terrazzino che da sul panorama circostante.', 0, 7),
(41, './assets/Africa/capeTown-southAfrica/activities/wine-tour/images/wine3.webp', 'Succosi grappoli di uva nera maturano sui vigneti.', 0, 7),
(42, './assets/Africa/capeTown-southAfrica/activities/wine-tour/images/wine4.webp', 'Un somelier versa del vino bianco su un calice per la degustazione.', 0, 7),
(43, './assets/Africa/mwanza-tanzania/activities/cratere/images/cover.webp', 'Savana interna al cratere di Ngorongoro con un branco di gnu al pascolo. Si vedono le nuvole risalire la alte pareti del cratere.', 1, 8),
(44, './assets/Africa/mwanza-tanzania/activities/cratere/images/cratere1.webp', 'Zebra che si nutre del latte materno nella savana.', 0, 8),
(45, './assets/Africa/mwanza-tanzania/activities/cratere/images/cratere2.webp', '3 ippopotami appagati che riposano nella savana', 0, 8),
(46, './assets/Africa/mwanza-tanzania/activities/cratere/images/cratere3.webp', 'Stormo di avvoltoi di Ruppel a terra probabilmente intenti a saccheggiare gli avanzi della preda delle due leonesse in lontananza.', 0, 8),
(47, './assets/Africa/mwanza-tanzania/activities/cratere/images/cratere4.webp', 'Un elefante africano con la pelle ricoperta di fango ormai secco.', 0, 8),
(48, './assets/Africa/mwanza-tanzania/activities/cratere/images/cratere5.webp', 'Primo piano di un giovane leone.', 0, 8),
(49, './assets/Africa/mwanza-tanzania/activities/grande-migrazione/images/cover.webp', 'Un gruppo di 5 zebre nella savana.', 1, 9),
(50, './assets/Africa/mwanza-tanzania/activities/grande-migrazione/images/migrazione1.webp', '3 ippopotami che camminano nella savana.', 0, 9),
(51, './assets/Africa/mwanza-tanzania/activities/grande-migrazione/images/migrazione2.webp', 'Uno struzzo nella savana.', 0, 9),
(52, './assets/Africa/mwanza-tanzania/activities/grande-migrazione/images/migrazione3.webp', 'Un gruppo di gnu che si riposa nella savana.', 0, 9),
(53, './assets/Africa/mwanza-tanzania/activities/isola-rubondo/images/cover.webp', 'Uno scimpanzé tra le foglie che osserva sorpreso il fotografo.', 1, 10),
(54, './assets/Africa/mwanza-tanzania/activities/isola-rubondo/images/rubondo1.webp', 'Un gruppo di elefanti in una zona paludosa della giungla.', 0, 10),
(55, './assets/Africa/mwanza-tanzania/activities/isola-rubondo/images/rubondo2.webp', 'Primo piano di una scimmia che si strofina del filo tra i denti.', 0, 10),
(56, './assets/Africa/mwanza-tanzania/activities/isola-rubondo/images/rubondo3.webp', 'Un turista che dalla sua jeep fotografa un ippopotamo nella savana.', 0, 10),
(57, './assets/Africa/mwanza-tanzania/activities/serengeti/images/cover.webp', 'Un ghepardo che sbadiglia tra la folta erba della savana.', 1, 11),
(58, './assets/Africa/mwanza-tanzania/activities/serengeti/images/serengeti1.webp', 'Una jeep che attraversa una strada sterrata con sulla sinistra una giraffa.', 0, 11),
(59, './assets/Africa/mwanza-tanzania/activities/serengeti/images/serengeti2.webp', '3 jeep che passano in mezzo ad un grande branco di gnu intenti a pascolare nella savana.', 0, 11),
(60, './assets/Africa/mwanza-tanzania/activities/serengeti/images/serengeti3.webp', '3 iene nella savana, a giudicare dalla postura sembrano essere state attirate da qualcosa, forse una preda.', 0, 11),
(61, './assets/Africa/sharmElSheikh-egitto/activities/dolphins/images/cover.webp', 'Un delfino con una palla tra i denti e una tra le pinne che fuoriesce parzialmente dall\'acqua.', 1, 12),
(62, './assets/Africa/sharmElSheikh-egitto/activities/dolphins/images/dolphin1.webp', 'Una bambina  in acqua con giubbotto salvagente che gioca con 4 delfini.', 0, 12),
(63, './assets/Africa/sharmElSheikh-egitto/activities/dolphins/images/dolphin2.webp', '4 bambini in acqua con giubbotto salvagente che giocano con 2 delfini.', 0, 12),
(64, './assets/Africa/sharmElSheikh-egitto/activities/dolphins/images/dolphin3.webp', 'Una bambina in acqua che si lascia dolcemente trasportare da due delfini che nuotano.', 0, 12),
(65, './assets/Africa/sharmElSheikh-egitto/activities/night-safari/images/cover.webp', 'Due persone che osservano il cielo stellato.', 1, 13),
(66, './assets/Africa/sharmElSheikh-egitto/activities/night-safari/images/night1.webp', 'Gruppo di turisti che ammira il tramonto nel deserto.', 0, 13),
(67, './assets/Africa/sharmElSheikh-egitto/activities/night-safari/images/night2.webp', 'Alcune montagne nel deserto durante la notte.', 0, 13),
(68, './assets/Africa/sharmElSheikh-egitto/activities/night-safari/images/night3.webp', 'Primo piano: cammello in controluce su una montagna nel deserto durante il tramonto, secondo piano: alcune creste montuose controluce.', 0, 13),
(69, './assets/Africa/sharmElSheikh-egitto/activities/quad/images/cover.webp', 'Due persone su un quad seguite da una terza su un altro quad uguale.', 1, 14),
(70, './assets/Africa/sharmElSheikh-egitto/activities/quad/images/quad1.webp', 'Un cammello nel deserto con una sella ricoperta da tessuti di colori molto vivaci.', 0, 14),
(71, './assets/Africa/sharmElSheikh-egitto/activities/quad/images/quad2.webp', 'Due persone si tengono per mano mentre cavalcano due cammelli nel deserto.', 0, 14),
(72, './assets/Africa/sharmElSheikh-egitto/activities/rasMuhammad-park/images/cover.webp', 'Una ragazza che fa snorkeling sopra la barriera corallina.', 1, 15),
(73, './assets/Africa/sharmElSheikh-egitto/activities/rasMuhammad-park/images/ras1.webp', 'Foto subacquea di una razza marina di fronte ad alcune formazioni coralline.', 0, 15),
(74, './assets/Africa/sharmElSheikh-egitto/activities/rasMuhammad-park/images/ras2.webp', 'Un sub che fa snorkeling di fronte a dei coralli popolati da moltissimi pesciolini arancioni.', 0, 15),
(75, './assets/Africa/sharmElSheikh-egitto/activities/rasMuhammad-park/images/ras3.webp', 'Ingresso del parco fatto di rocce a forma di parallelepipedo posizionate in modo da formare una sorta di arco.', 0, 15),
(76, './assets/Africa/sharmElSheikh-egitto/activities/tour/images/cover.webp', 'Moschea di Sharm el-Sheikh preceduta da un\'ampia piazza e circondata da negozi. La moschea alterna mattoni chiari e scuri.', 1, 16),
(77, './assets/Africa/sharmElSheikh-egitto/activities/tour/images/tour1.webp', 'Ingresso al vecchio mercato cittadino, un posto di blocco seguito da un\'area pedonale.', 0, 16),
(78, './assets/Africa/sharmElSheikh-egitto/activities/tour/images/tour2.webp', 'Alcune spezie e altri prodotti che vengono venduti al mercato.', 0, 16),
(79, './assets/Africa/sharmElSheikh-egitto/activities/tour/images/tour3.webp', 'Piazza Soho di notte, piena di turisti con un drago costruito con strisce luminose nel mezzo.', 0, 16),
(80, './assets/Africa/windhoek-namibia/activities/city-tour/images/cover.webp', 'Vista della città dall\'alto. La Chiesa di Cristo circondata da un lato da alberi e dall\'altro da edifici moderni.', 1, 17),
(81, './assets/Africa/windhoek-namibia/activities/city-tour/images/tour1.webp', 'Una turista osserva la guida mentre le illustra alcune curiosità sulla città da un punto panoramico.', 0, 17),
(82, './assets/Africa/windhoek-namibia/activities/city-tour/images/tour2.webp', 'La statua del primo presidente dell Namibia dopo l\'indipendenza con il memorial museum sullo sfondo.', 0, 17),
(83, './assets/Africa/windhoek-namibia/activities/city-tour/images/tour3.webp', 'Statua situata all\'interno dei giardini del parlamento.', 0, 17),
(84, './assets/Africa/windhoek-namibia/activities/city-tour/images/tour4.webp', 'Dei turisti osservano le favelas della città accompagnati dalla guida.', 0, 17),
(85, './assets/Africa/windhoek-namibia/activities/etosha/images/cover.webp', '3 zebre mentre si abbeverano in una pozza d\'acqua.', 1, 18),
(86, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha1.webp', 'Primo piano di un leopardo.', 0, 18),
(87, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha2.webp', 'Una giraffa nella savana.', 0, 18),
(88, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha3.webp', 'Un elefante che attraversa un corso d\'acqua quasi in secca.', 0, 18),
(89, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha4.webp', 'Un gruppo di orici nella savana.', 0, 18),
(90, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha5.webp', 'Delle zebre bevono ad una pozza d\'acqua con delle antilopi sullo sfondo.', 0, 18),
(91, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha6.webp', 'Un grande elefante africano in secondo piano dietro a due antilopi che scontrano le teste durante un combattimento.', 0, 18),
(92, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha7.webp', 'Un rinoceronte di fronte ad un corso d\'acqua.', 0, 18),
(93, './assets/Africa/windhoek-namibia/activities/etosha/images/etosha8.webp', 'Un rinoceronte nella savana.', 0, 18),
(94, './assets/Africa/windhoek-namibia/activities/himba/images/cover.webp', 'Una donna delle tribù Himba con gli abiti tradizionali.', 1, 19),
(95, './assets/Africa/windhoek-namibia/activities/himba/images/himba1.webp', 'Un gruppo di donne ed un bambino della tribù Himba con abiti tradizionali.', 0, 19),
(96, './assets/Africa/windhoek-namibia/activities/himba/images/himba2.webp', 'Opuwo, un piccolo villaggio con edifici di epoca industriale situato nel deserto.', 0, 19),
(97, './assets/Africa/windhoek-namibia/activities/himba/images/himba3.webp', 'Villaggio Himba immerso nel verde degli alberi.lt', 0, 19),
(98, './assets/Africa/windhoek-namibia/activities/okahandja/images/cover.webp', 'Statue in legno di alcuni animali tra cui elefante, rinoceronte ed antilopi.', 1, 20),
(99, './assets/Africa/windhoek-namibia/activities/okahandja/images/market1.webp', 'Statue in legno di grandi facce con fisionomie africane.', 0, 20),
(100, './assets/Africa/windhoek-namibia/activities/okahandja/images/market2.webp', 'Alte statue in legno di giraffe.', 0, 20),
(101, './assets/Africa/windhoek-namibia/activities/sossusvlei/images/cover.webp', 'Un gruppo di turisti nel deserto del Sossusvlei che cammina sullo strato superficiale di bicarbonato di calcio cause morte degli alberi.', 1, 21),
(102, './assets/Africa/windhoek-namibia/activities/sossusvlei/images/desert1.webp', 'Deserto del Sossusvlei con le dune rosse di sfondo e di fronte gli alberi morti uccisi dal bicarbonato di calcio.', 0, 21),
(103, './assets/Africa/windhoek-namibia/activities/sossusvlei/images/desert2.webp', 'Alberi morti del Sossusvlei.', 0, 21),
(104, './assets/Africa/windhoek-namibia/activities/sossusvlei/images/desert3.webp', 'Vista da una delle dune rosse del Sossusvlei, si vedono gli alberi morti sopra lo strato di bicarbonato di calcio.', 0, 21),
(105, './assets/Africa/windhoek-namibia/activities/sossusvlei/images/desert4.webp', 'Un\'alta duna del Sossusvlei.', 0, 21),
(106, './assets/Africa/windhoek-namibia/activities/swakopmund/images/cover.webp', 'Vista aerea della città.', 1, 22),
(107, './assets/Africa/windhoek-namibia/activities/swakopmund/images/city1.webp', 'I moli in sassi della città con la spiaggia bagnata dalla limpida acqua del mare.', 0, 22),
(108, './assets/Africa/windhoek-namibia/activities/swakopmund/images/city2.webp', 'La casa Hohenzollernahaus tutta bianca con il tetto rosso e gli infissi verdi.', 0, 22),
(109, './assets/Africa/windhoek-namibia/activities/swakopmund/images/city3.webp', 'Una strada della città circondata da edifici di stile germanico.', 0, 22),
(110, './assets/Africa/windhoek-namibia/activities/swakopmund/images/city4.webp', 'Foto di un alcuni bar che danno sulla spiaggia. Acqua del mare limpida.', 0, 22),
(111, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/cover.webp', 'Farfalla della specie Vanessa cardui.', 1, 23),
(112, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/butterfly_1.webp', 'farfalla azzurra della specie Morpho portis.', 0, 23),
(113, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/butterfly_2.webp', 'Farfalla della specie Papilio cresphontes.', 0, 23),
(114, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/butterfly_3.webp', 'Farfalla della specie Anartia jatrophae.', 0, 23),
(115, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/butterfly_4.webp', 'Farfalla della specie Morpho menelaus.', 0, 23),
(116, './assets/America_del_Sud/Aruba/activities/Allevamento di farfalle/images/butterfly_5.webp', 'Farfalla della specie Dione moneta.', 0, 23),
(117, './assets/America_del_Sud/Aruba/activities/Arikok/images/cover.webp', 'Piscina naturale tra gli scogli in cui un gruppo di amici fa il bagno.', 1, 24),
(118, './assets/America_del_Sud/Aruba/activities/Arikok/images/arikok_1.webp', 'Parco nazionale di Arikok, piscina naturale tra gli scogli su cui un gruppo di amici fa il bagno.', 0, 24),
(119, './assets/America_del_Sud/Aruba/activities/Arikok/images/arikok_2.webp', 'Arikok hiking tour', 0, 24),
(120, './assets/America_del_Sud/Aruba/activities/Arikok/images/arikok_3.webp', 'Escursione a cavallo sulla spiaggia di arikok', 0, 24),
(121, './assets/America_del_Sud/Aruba/activities/Arikok/images/arikok_4.webp', 'Escursione a cavallo lungo la costa del parco nazionale di Arikok.', 0, 24),
(122, './assets/America_del_Sud/Aruba/activities/Palm Eagle Beach/images/cover.webp', 'Spiaggia di sabbia bianchissima bagnata dal mare cristallino di Palm Eagle Beach. Una palma curva a cui è appesa una sedia di corda, si allunga sulla spiaggia.', 1, 25),
(123, './assets/America_del_Sud/Aruba/activities/Palm Eagle Beach/images/palm_1.webp', 'Spiaggia di Palm Eagle Beach.', 0, 25),
(124, './assets/America_del_Sud/Aruba/activities/Palm Eagle Beach/images/palm_2.webp', 'Spiaggia bianca di Palm Eagle.', 0, 25),
(125, './assets/America_del_Sud/Aruba/activities/Palm Eagle Beach/images/palm_3.webp', 'Diga di sassi taglia l\'acqua cristallina della costa.', 0, 25),
(126, './assets/America_del_Sud/Aruba/activities/Palm Eagle Beach/images/palm_4.webp', 'Palm Eagle Beach vista dall\'alto in cui qualche turista si rilassa su sdraio sotto le palme.', 0, 25),
(127, './assets/America_del_Sud/Aruba/activities/Quadirikiki Cave/images/cover.webp', 'Raggi di sole che entrano dall\'alto della grotta.', 1, 26),
(128, './assets/America_del_Sud/Aruba/activities/Quadirikiki Cave/images/cave_1.webp', 'Cava illuminata', 0, 26),
(129, './assets/America_del_Sud/Aruba/activities/Quadirikiki Cave/images/cave_2.webp', 'Quadirikiki Cave', 0, 26),
(130, './assets/America_del_Sud/Aruba/activities/Quadirikiki Cave/images/cave_3.webp', 'Quadirikiki Cave con i suoi giochi di luce', 0, 26),
(131, './assets/America_del_Sud/Buenos Aires/activities/Cabildo Nacional e Casa Rosada/images/cover.webp', 'In primo piano il Cabildo Nacional, e una delle vie principali di Buenos Aires. La via ha diversi alberi ai bordi della strada.', 1, 27),
(132, './assets/America_del_Sud/Buenos Aires/activities/Cabildo Nacional e Casa Rosada/images/cabildo_1.webp', 'Cabildo di Buenos Aires, struttura storica creata nel 1176 dai coloni spagnoli', 0, 27),
(133, './assets/America_del_Sud/Buenos Aires/activities/Cabildo Nacional e Casa Rosada/images/cabildo_2.webp', 'Cabildo illuminato din notte da delle luci a forma di lanterna.', 0, 27),
(134, './assets/America_del_Sud/Buenos Aires/activities/Cabildo Nacional e Casa Rosada/images/cabildo_3.webp', 'Stanza interna del Cabildo in cui sono esposti vari dipinti di coloni spagnoli.', 0, 27),
(135, './assets/America_del_Sud/Buenos Aires/activities/Cabildo Nacional e Casa Rosada/images/casa_rosada.webp', 'Casa Rosada di Buenos Aires, in primo piano una piccola parte della Plaza de Mayo.', 0, 27),
(136, './assets/America_del_Sud/Buenos Aires/activities/Cattedrale Metropolitana/images/cover.webp', 'Facciata della Cattedrale metropolitana di Buenos Aires in una giornata di sole. ', 1, 28),
(137, './assets/America_del_Sud/Buenos Aires/activities/Cattedrale Metropolitana/images/metropolitana_1.webp', 'Cattedrale metropolitana di Buenos Aires illuminata di notte.', 0, 28),
(138, './assets/America_del_Sud/Buenos Aires/activities/Cattedrale Metropolitana/images/metropolitana_2.webp', 'Interno della Cattedrale metropolitana di Buenos Aires, si nota la cupola e la illuminazione sul soffitto.', 0, 28),
(139, './assets/America_del_Sud/Buenos Aires/activities/Cattedrale Metropolitana/images/metropolitana_3.webp', 'Vista dell\'interno della Cattedrale metropolitana, l\'altare è ben illuminato e ornato di decorazioni religiose.', 0, 28),
(140, './assets/America_del_Sud/Buenos Aires/activities/Cattedrale Metropolitana/images/metropolitana_4.webp', 'Vista dal basso della cupola della Cattedrale Metropolitana ornata di dipinti.', 0, 28),
(141, './assets/America_del_Sud/Buenos Aires/activities/Fiume Paraná/images/cover.webp', 'Imbarcazione turistica che naviga nel fiume Parana.', 1, 29),
(142, './assets/America_del_Sud/Buenos Aires/activities/Fiume Paraná/images/parana_1.webp', 'Fiume Parana visto dall\'alto.', 0, 29),
(143, './assets/America_del_Sud/Buenos Aires/activities/Fiume Paraná/images/parana_2.webp', 'Fiume Parana visto dall\'alto.', 0, 29),
(144, './assets/America_del_Sud/Buenos Aires/activities/Fiume Paraná/images/parana_3.webp', 'Diga sul fiume Paranà.', 0, 29),
(145, './assets/America_del_Sud/Buenos Aires/activities/Fiume Paraná/images/parana_4.webp', 'Barca turistica che naviga nel fiume paranà.', 0, 29),
(146, './assets/America_del_Sud/Buenos Aires/activities/Plaza de Mayo/images/cover.webp', 'Plaza de mayo, costituita da una statua a forma conica al centro e diverse piccole aree verdi e alberi.', 1, 30),
(147, './assets/America_del_Sud/Buenos Aires/activities/Plaza de Mayo/images/plaza_1.webp', 'In primo piano la scritta: \'25 MAYO 1810\' della statua al centro della plaza de mayo illuminata di notte.', 0, 30),
(148, './assets/America_del_Sud/Buenos Aires/activities/Plaza de Mayo/images/plaza_2.webp', 'Statua raffigurante un uomo in sella ad un cavallo.', 0, 30),
(149, './assets/America_del_Sud/Buenos Aires/activities/Plaza de Mayo/images/plaza_3.webp', 'Vista della Plaza de Mayo dall\'alto in una giornata nuvolosa.', 0, 30),
(150, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/cover.webp', 'In foto due esemplari di \'Bobbies Pata Blu\' i cosidetti \'piedi azzurri\'.', 1, 31),
(151, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/seymour_1.webp', 'La Fregata della Galapagos, uccello caratteristico per una grossa sacca rossa sotto il becco.', 0, 31),
(152, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/seymour_2.webp', 'Persona che nuota nelle acque cristalline di Galapagos.', 0, 31),
(153, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/seymour_3.webp', 'Balena che salta fuori dall\'acqua.', 0, 31),
(154, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/seymour_4.webp', 'Pellicano bruto appoggiato su dei sassi sotto una cascata.', 0, 31),
(155, './assets/America_del_Sud/Galápagos/activities/Isola Seymour/images/seymour_5.webp', 'Piccoli granchi sugli scogli caratteristici per i loro colori rossi e a tratti verdi molto accesi.', 0, 31),
(156, './assets/America_del_Sud/Galápagos/activities/Kicker Rock/images/cover.webp', 'Kicker Rock, famosa roccia che spicca nel mare delle Galapagos.', 1, 32),
(157, './assets/America_del_Sud/Galápagos/activities/Kicker Rock/images/kicker_1.webp', 'Kicker Rock', 0, 32),
(158, './assets/America_del_Sud/Galápagos/activities/Kicker Rock/images/kicker_2.webp', 'Kicker Rock, con il sole che tramonta tra le due rocce.', 0, 32),
(159, './assets/America_del_Sud/Galápagos/activities/Kicker Rock/images/kicker_3.webp', 'Persona che sorseggia un drink mentre si rilassa in barca.', 0, 32),
(160, './assets/America_del_Sud/Galápagos/activities/Laguna de los Flamingos/images/cover.webp', '5 fenicotteri in acqua che sembrano galleggiare.', 1, 33),
(161, './assets/America_del_Sud/Galápagos/activities/Laguna de los Flamingos/images/flamingos_1.webp', '6 Fenicotteri in acqua.', 0, 33),
(162, './assets/America_del_Sud/Galápagos/activities/Laguna de los Flamingos/images/flamingos_2.webp', 'Primo piano di un fenicottero rosa.', 0, 33),
(163, './assets/America_del_Sud/Galápagos/activities/Laguna de los Flamingos/images/flamingos_3.webp', 'Fenicottero visto da vicino con il collo appoggiato sulla schiena.', 0, 33),
(164, './assets/America_del_Sud/Galápagos/activities/Parco Nazionale/images/cover.webp', 'In primo piano un iguana mentre osserva gli scogli e il mare.', 1, 34),
(165, './assets/America_del_Sud/Galápagos/activities/Parco Nazionale/images/parco_1.webp', 'Isola si Santa Cruz con un mare cristallino e una vegetazione accanato a una piccola distesa di sabbia e scogli neri.', 0, 34),
(166, './assets/America_del_Sud/Galápagos/activities/Parco Nazionale/images/parco_2.webp', 'Una foca in primo piano e nello sfondo un gruppo di foche e un mare cristallino con un imbarcazione turistica.', 0, 34),
(167, './assets/America_del_Sud/Galápagos/activities/Parco Nazionale/images/parco_3.webp', 'In primo piano la vegetazione della vegetazione collinare di un isola delle Galapagos e un mare cristallino con un imbarcazione turistica.', 0, 34),
(168, './assets/America_del_Sud/Galápagos/activities/Parco Nazionale/images/parco_4.webp', 'In primo piano l\'isola di Santa Cruz e nello sfondo si possono intravedere altre isole dell\'arcipelago delle galapagos.', 0, 34),
(169, './assets/America_del_Sud/Patagonia/activities/El Chalten/images/cover.webp', 'Persona mentre ammira Laguna de los Tres con acqua cristallina e le montagne di El Chalten innevate nello sfondo.', 1, 35),
(170, './assets/America_del_Sud/Patagonia/activities/El Chalten/images/chalten_1.webp', 'Una coppia mentre osservano le montagne di El Chalten innevate da sopra delle rocce.', 0, 35),
(171, './assets/America_del_Sud/Patagonia/activities/El Chalten/images/chalten_2.webp', 'Gruppo di turisti che ammira la Laguna de los Tres e le montagne innevate di El Chalten.', 0, 35),
(172, './assets/America_del_Sud/Patagonia/activities/El Chalten/images/chalten_3.webp', 'Le montagne innevate di El Chalten.', 0, 35),
(173, './assets/America_del_Sud/Patagonia/activities/El Chalten/images/chalten_4.webp', 'Alberi nel bosco in Patagonia.', 0, 35),
(174, './assets/America_del_Sud/Patagonia/activities/Puerto Madryn/images/cover.webp', 'Gruppo di pinguini.', 1, 36),
(175, './assets/America_del_Sud/Patagonia/activities/Puerto Madryn/images/madryn_1.webp', 'Spiaggia con migliaia di pinguini.', 0, 36),
(176, './assets/America_del_Sud/Patagonia/activities/Puerto Madryn/images/madryn_2.webp', 'Ragazza che osserva un cucciolo di pinguino.', 0, 36),
(177, './assets/America_del_Sud/Patagonia/activities/Puerto Madryn/images/madryn_3.webp', 'Gruppo di pinguini in un terreno di sabbia e roccia.', 0, 36),
(178, './assets/America_del_Sud/Patagonia/activities/Puerto Madryn/images/madryn_4.webp', 'Centinaia di pinguini dislocati sotto una passerella e diversi turisti in spiaggia.', 0, 36),
(179, './assets/America_del_Sud/Patagonia/activities/Tour in catamarano/images/cover.webp', 'Catamarano con i turisti che ammirano i pinguini in spiaggia.', 1, 37),
(180, './assets/America_del_Sud/Patagonia/activities/Tour in catamarano/images/catamarano_1.webp', 'Catamarano con dozzine di turisti che ammirano uno scoglio con centinaia di pinguini.', 0, 37),
(181, './assets/America_del_Sud/Patagonia/activities/Tour in catamarano/images/catamarano_2.webp', 'Catamarano turistico che attraccato vicino alla spiaggia permette ai turisti di ammirare i pinguini.', 0, 37),
(182, './assets/America_del_Sud/Patagonia/activities/Tour in catamarano/images/catamarano_3.webp', 'Foche e leoni marini che riposano sugli scogli.', 0, 37),
(183, './assets/America_del_Sud/Patagonia/activities/Tour in catamarano/images/catamarano_4.webp', 'Spiaggia con migliaia di pinguini e centinaia di uccelli.', 0, 37),
(184, './assets/America_del_Sud/Patagonia/activities/Trekking sul Perito Moreno/images/cover.webp', 'Persona in mezzo alla neve dei ghiacciai.', 1, 38),
(185, './assets/America_del_Sud/Patagonia/activities/Trekking sul Perito Moreno/images/perito_moreno_1.webp', 'Coppia intenta a fare trekking sul ghiacciaio.', 0, 38),
(186, './assets/America_del_Sud/Patagonia/activities/Trekking sul Perito Moreno/images/perito_moreno_2.webp', 'Persone che ammirano il ghiacciaio perito moreno da una passerella.', 0, 38),
(187, './assets/America_del_Sud/Patagonia/activities/Trekking sul Perito Moreno/images/perito_moreno_3.webp', 'Ghiacciaio Perito Moreno visto dal livello del mare.', 0, 38),
(188, './assets/America_del_Sud/Patagonia/activities/Trekking sul Perito Moreno/images/perito_moreno_4.webp', 'Coppia di turisti sopra una roccia mentre ammirano l\'immenso ghiacciaio.', 0, 38),
(189, './assets/Asia/Bali/activities/danze-kecak/images/cover.webp', 'Nativi balinesi con i colorati vestiti tipici della tradizione.', 1, 39),
(190, './assets/Asia/Bali/activities/danze-kecak/images/dance1.webp', 'Nativi balinesi danzano di fronte a un gruppo di turisti nei loro costumi tipici su una terrazza affacciata sul mare.', 0, 39),
(191, './assets/Asia/Bali/activities/danze-kecak/images/dance3.webp', 'Nativi balinesi intenti a danzare con le braccia in aria.', 0, 39),
(192, './assets/Asia/Bali/activities/rafting/images/cover.webp', 'Famiglia fa rafting su un gommone.', 1, 40),
(193, './assets/Asia/Bali/activities/rafting/images/quad1.webp', 'Gruppo di ragazze sui quad di ritorno dall\'escursione. ', 0, 40),
(194, './assets/Asia/Bali/activities/rafting/images/quad2.webp', 'Due ragazze ridono attraversando una zona molto fangosa del percorso in quad.', 0, 40),
(195, './assets/Asia/Bali/activities/street-food/images/cover.webp', 'Cuoco del locale cuoce dei pesci sulla griglia.', 1, 41),
(196, './assets/Asia/Bali/activities/street-food/images/food2.webp', 'Bancarella di frutta del mercato locale.', 0, 41),
(197, './assets/Asia/Bali/activities/street-food/images/food3.webp', 'Bancarella alimentare del mercato, qui si serve pollo al vapore con riso.', 0, 41),
(198, './assets/Asia/HongKong/activities/cascata/images/cover.webp', 'Una delle cascate.', 1, 42),
(199, './assets/Asia/HongKong/activities/cascata/images/cascata1.webp', 'Cascate.', 0, 42),
(200, './assets/Asia/HongKong/activities/lantau/images/cover.webp', 'Statua del grande budda e sullo sfondo le montagne di Lantau.', 1, 43),
(201, './assets/Asia/HongKong/activities/lantau/images/budda2.webp', 'Budda di Lantau, e percorso che permette di raggiungerlo.', 0, 43),
(202, './assets/Asia/HongKong/activities/lantau/images/canale.webp', 'Canale di Lantau.', 0, 43),
(203, './assets/Asia/HongKong/activities/lantau/images/tempio.webp', 'Tempio di Lantau circondato da montagne.', 0, 43),
(204, './assets/Asia/HongKong/activities/schiena-drago/images/cover.webp', 'Scorcio di montagne che rappresentano la schiena del drago.', 1, 44),
(205, './assets/Asia/HongKong/activities/schiena-drago/images/dragon.webp', 'Montagne della schiena del drago delimitate dal mare.', 0, 44),
(206, './assets/Asia/HongKong/activities/schiena-drago/images/risaie.webp', 'Distesa di risaie.', 0, 44),
(207, './assets/Asia/HongKong/activities/schiena-drago/images/risaie2.webp', 'Paese circondato da risaie.', 0, 44),
(208, './assets/Asia/HongKong/activities/tour-gastronomico/images/cover.webp', 'Piatti di ravioli e zuppe.', 1, 45),
(209, './assets/Asia/HongKong/activities/tour-gastronomico/images/food1.webp', 'Piatti di pietanze tipiche cinesi.', 0, 45),
(210, './assets/Asia/HongKong/activities/tour-gastronomico/images/food2.webp', 'Piatti e dolci tipici cinesi.', 0, 45),
(211, './assets/Asia/HongKong/activities/tour-gastronomico/images/food3.webp', 'Piatti di ravioli tipici cinesi con salsa di soia.', 0, 45),
(212, './assets/Asia/HongKong/activities/tour-privato/images/cover.webp', 'Scorcio di una strada di un\'Hong Kong notturna.', 1, 46),
(213, './assets/Asia/HongKong/activities/tour-privato/images/citta1.webp', 'Hong Kong vista dal mare.', 0, 46),
(214, './assets/Asia/HongKong/activities/tour-privato/images/citta2.webp', 'Città di Hong Kong dall\'alto.', 0, 46),
(215, './assets/Asia/Seoul/activities/gwangjang/images/cover.webp', 'Mercato in centro città. Si notano numerose bancarelle che vendono cibo.', 1, 47),
(216, './assets/Asia/Seoul/activities/gwangjang/images/market1.webp', 'Strada del mercato molto affollata.', 0, 47),
(217, './assets/Asia/Seoul/activities/gwangjang/images/market2.webp', 'Esterno dell\'edificio che ospita il mercato.', 0, 47),
(218, './assets/Asia/Seoul/activities/gyeongbokgung/images/cover.webp', 'Palazzo reale di notte, l\'illuminazione fa si che i colori dell\'edificio risaltino particolarmente.', 1, 48),
(219, './assets/Asia/Seoul/activities/gyeongbokgung/images/palace1.webp', 'Vista di giorno del palazzo reale, si notano numerose ragazze vestite in abiti tipici coreani.', 0, 48),
(220, './assets/Asia/Seoul/activities/gyeongbokgung/images/palace2.webp', 'Scorcio del palazzo e degli alberi di ciliegio.', 0, 48),
(221, './assets/Asia/Seoul/activities/lotte-world/images/cover.webp', 'Castello di Lotte, ci sono degli animatori vestiti da animaletti.', 1, 49),
(222, './assets/Asia/Seoul/activities/lotte-world/images/lotte2.webp', 'Vista dall\'alto del parco divertimenti di Lotte World illuminato con luci arcobaleno.', 0, 49),
(223, './assets/Asia/Seoul/activities/lotte-world/images/lotte4.webp', 'Artwork che rappresenta il parco divertimenti di Lotte World.', 0, 49),
(224, './assets/Asia/Seoul/activities/myeongdong/images/cover.webp', 'Vista notturna della strada principale dello shopping coreano. Si nota numerosa gente che visita i negozi. ', 1, 50),
(225, './assets/Asia/Seoul/activities/myeongdong/images/street2.webp', 'Si notano alcuni negozi e persone che passeggiano e osservano le vetrine.', 0, 50),
(226, './assets/Asia/Seoul/activities/myeongdong/images/street3.webp', 'Vista della strada principale dello shopping coreana, ci sono molte persone che passaggiano e osservano le vetrine dei negozi.', 0, 50),
(227, './assets/Asia/Seoul/activities/namsan-tower/images/cover.webp', 'Vista della Namsan Tower al tramonto.', 1, 51),
(228, './assets/Asia/Seoul/activities/namsan-tower/images/tower1.webp', 'Vista della Namsan Tower e di un tempietto in autunno.', 0, 51),
(229, './assets/Asia/Seoul/activities/namsan-tower/images/tower2.webp', 'Cabinovia che porta alla Namsan Tower.', 0, 51),
(230, './assets/Asia/Tokyo/activities/asakusa/images/cover.webp', 'Strada che porta al Tempio Asakusa dove passeggiano in festa turisti e cittadini vestiti con abiti tipici giapponesi.', 1, 52),
(231, './assets/Asia/Tokyo/activities/asakusa/images/asak1.webp', 'Tempio di Asakusa al tramonto.', 0, 52),
(232, './assets/Asia/Tokyo/activities/asakusa/images/asak3.webp', 'Tempio di Asakusa con alberi di ciliegio.', 0, 52),
(233, './assets/Asia/Tokyo/activities/asakusa/images/shibuya1.webp', 'Vista dall\'alto delle famose strisce pedonali della stazione di Shibuya.', 0, 52),
(234, './assets/Asia/Tokyo/activities/food-tour/images/cover.webp', 'Tipico ristorante giapponese che si affaccia sulla strada, dove molti giapponesi stanno consumando il loro pasto.', 1, 53),
(235, './assets/Asia/Tokyo/activities/food-tour/images/foodjp1.webp', 'Bancarelle che vendono street food giapponese.', 0, 53),
(236, './assets/Asia/Tokyo/activities/food-tour/images/foodjp2.webp', 'Tipico salmone alla griglia giapponese.', 0, 53),
(237, './assets/Asia/Tokyo/activities/food-tour/images/foodjp3.webp', 'Locale giapponese dove è possibile mangiare all\'esterno.', 0, 53),
(238, './assets/Asia/Tokyo/activities/monte-fuji/images/cover.webp', 'Campagna giapponese e Monte Fuji sullo sfondo.', 1, 54),
(239, './assets/Asia/Tokyo/activities/monte-fuji/images/fuji1.webp', 'Monte Fuji al tramonto con vista su Tokyo.', 0, 54),
(240, './assets/Asia/Tokyo/activities/monte-fuji/images/fuji2.webp', 'Locali turistici sulla strada che porta al monte Fuji.', 0, 54),
(241, './assets/Asia/Tokyo/activities/monte-fuji/images/fuji3.webp', 'Monte Fuji in primavera.', 0, 54),
(242, './assets/Asia/Tokyo/activities/sky-tree/images/cover.webp', 'Vista sullo Sky Tree di sera.', 1, 55),
(243, './assets/Asia/Tokyo/activities/sky-tree/images/sky1.webp', 'Vista dall\'alto dello Sky Tree e su Tokyo di giorno.', 0, 55),
(244, './assets/Asia/Tokyo/activities/sky-tree/images/sky2 .webp', 'Tabellone informativo e interattivo all\'interno dello Sky Tree.', 0, 55),
(245, './assets/Asia/Tokyo/activities/sky-tree/images/sky3.webp', 'Corridoio con finestre di vetro dello Sky Tree che permette di vedere la città.', 0, 55),
(246, './assets/Asia/Tokyo/activities/tour-privato/images/cover.webp', 'Zona a tema anime e video games molto famosa in centro a Tokyo.', 1, 56),
(247, './assets/Asia/Tokyo/activities/tour-privato/images/cherry.webp', 'Passeggiata sul ponte che attraversa un suggestivo canale costeggiato da alberi di ciliegio in fiore.', 0, 56),
(248, './assets/Asia/Tokyo/activities/tour-privato/images/shibuya1.webp', 'Stazione di Shibuya dove una grande folla sta attraversando le strisce pedonali.', 0, 56),
(249, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cover.webp', 'Foto della facciata principale della cattedrale illuminata con i suoi tre portali sormontati dalle relative ghimberghe, dietro il tramonto.', 1, 57),
(250, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_1.webp', 'Interno della cattedrale con le colonne gotiche.', 0, 57),
(251, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_2.webp', 'Esterno della cattedrale, struttura gotica con pinnacoli e doccioni.', 0, 57),
(252, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_3.webp', 'Facciata principale della cattedrale con i suoi tre portali sormontati dalle relative ghimberghe.', 0, 57),
(253, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_4.webp', 'Facciata principale della cattedrale vista dal basso con i suoi tre portali sormontati dalle relative ghimberghe. Dietro il cielo colorato dal tramonto.', 0, 57),
(254, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_5.webp', 'Interno della cattedrale con vetrate decorate.', 0, 57),
(255, './assets/Europa/Bruxelles/activities/Cattedrale di San Michele Arcangelo e Santa Gudula/images/cattedrale_6.webp', 'Affresco su una delle cappelle della cattedrale.', 0, 57),
(256, './assets/Europa/Bruxelles/activities/Grand Place/images/cover.webp', 'Lussuoso edificio illuminato nella Grand Place.', 1, 58),
(257, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_1.webp', 'Famoso tappeto di fiori che ogni due anni occupa la Grand Place con i suoi decori colorati.', 0, 58),
(258, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_2.webp', 'La Grand Place illuminata nelle ore del crepuscolo', 0, 58),
(259, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_3.webp', 'Maestoso tappeto di fiori che decora la Grand Place ', 0, 58),
(260, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_4.webp', 'Complesso Mont des Arts.', 0, 58),
(261, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_5.webp', 'Sontuosi edifici della Grand Place.', 0, 58),
(262, './assets/Europa/Bruxelles/activities/Grand Place/images/grand_place_6.webp', 'Grand Place e l\'edificio del municipio.', 0, 58),
(263, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/cover.webp', 'Musei Reali delle Belle Arti', 1, 59),
(264, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/belle_arti_1.webp', 'Stanza del museo che espone i Cochons tatoués di Wim Delvoye.', 0, 59),
(265, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/belle_arti_2.webp', 'La caduta di Icaro di Pieter Bruegel il Vecchio.', 0, 59),
(266, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/belle_arti_3.webp', 'Museo di arte e storia di Bruxelles', 0, 59),
(267, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/belle_arti_4.webp', 'Divanetto ispirato all\'Adorazione dei Magi di Rubens', 0, 59),
(268, './assets/Europa/Bruxelles/activities/Musei Reali di Belle Arti/images/belle_arti_5.webp', 'La morte di Marat Dipinto di Jacques-Louis David', 0, 59),
(269, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_2.webp', 'Stanza del museo Magritte.', 0, 60),
(270, './assets/Europa/Bruxelles/activities/Museo Magritte/images/cover.webp', 'Esterno dell\'edificio del Museo Magritte', 1, 60),
(271, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_1.webp', 'Una delle sale del museo.', 0, 60),
(272, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_3.webp', 'Dipinto \'Gli amanti\' di Renè Magritte.', 0, 60),
(273, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_4.webp', 'Dipinto \'Il figlio dell\'uomo\' di Magritte.', 0, 60),
(274, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_5.webp', 'Facciata esterna del museo Magritte.', 0, 60),
(275, './assets/Europa/Bruxelles/activities/Museo Magritte/images/magritte_6.webp', 'Una delle stanze della casa del pittore Renè Magritte, conservata e riarredata come appariva all\'epoca in cui ci viveva.', 0, 60),
(276, './assets/Europa/Ibiza/activities/Cala d\'Hort/images/cover.webp', 'Ponte che collega la spiaggia rocciosa ad uno scoglio distante pochi metri. Il mare è ricoperto da un velo di nebbia durante il tramonto. In lontananza si vedono delle isole.', 1, 61),
(277, './assets/Europa/Ibiza/activities/Cala d\'Hort/images/cala_1.webp', 'Spiaggia di Cala d\'Hort. Sulla sinistra vi è la spiaggia sabbiosa con scogli solo sull\'estremità. Il mare è cristallino con qualche barca a vela parcheggiata oltre alle boe.', 0, 61),
(278, './assets/Europa/Ibiza/activities/Cala d\'Hort/images/cala_2.webp', 'Vista delle due isole che fronteggiano Cala d\'Hort: \'Es Vedra e Es Vedranell\', in una giornata di sole. Il mare cristallino con una barca a vela da sola che solca il mare. Si vede pure una piccola parte di spiaggia con degli ombrelloni e lettini.', 0, 61),
(279, './assets/Europa/Ibiza/activities/Cala d\'Hort/images/cala_3.webp', 'Diverse barche a vela attraccate in mare con le vele abbassate, in sfondo le due isole che fronteggiano la spiaggia durante il tramonto.', 0, 61),
(280, './assets/Europa/Ibiza/activities/Cova de Can Marçà/images/cover.webp', 'Stalattiti e stalagmiti formano delle decorazioni affilate illuminati da una luce bianca. Il pavimento è ricoperto da diversi centimetri di acqua che creano riflessi con la luce.', 1, 62),
(281, './assets/Europa/Ibiza/activities/Cova de Can Marçà/images/cova_de_can_1.webp', 'Grotta di Can Marçà con il soffitto centinaia di stalattiti e qualche stalagmite che parte dal suolo. La luce arancione è soffusa che crea una sensazione cupa alla vista.', 0, 62),
(282, './assets/Europa/Ibiza/activities/Cova de Can Marçà/images/cova_de_can_2.webp', 'Sulla destra vi sono delle scale artificiali, mentre sulla sinistra il soffitto della caverna è particolarmente obliquo con il pavimento ricoperto dall\'acqua. Si intravede nel fondo che illumina dall\'alto la caverna. ', 0, 62),
(283, './assets/Europa/Ibiza/activities/Cova de Can Marçà/images/cova_de_can_3.webp', 'In primo piano diverse stalagmiti immerse nell\'acqua per diversi centimentri, mentre dal soffitto si diramano sottili stalattiti. La luce bianca illumina la grotta.', 0, 62),
(284, './assets/Europa/Ibiza/activities/Dalt Vila/images/cover.webp', 'Città vecchia di Ibiza, Dalt Vila, situata su una collina di fronte al mare. Nella parte bassa della città le case sono tutte dipinte di bianco con in cima alla collina il castello che domina la città dall\'alto in una giornata soleggiata.', 1, 63),
(285, './assets/Europa/Ibiza/activities/Dalt Vila/images/dalt_vila_1.webp', 'Vista di tutta la città vecchia di Ibiza Dalt Vila, situata in una collina che fronteggia il mare. In cima alla collina il castello che occupa gran parte di essa, sovrasta dall\'alto le abitazioni cittadine. Il mare è di un blu acceso in una giornata di sole.', 0, 63),
(286, './assets/Europa/Ibiza/activities/Dalt Vila/images/dalt_vila_2.webp', 'Via della cittadina che costeggia diverse abitazioni tutte contraddistinte per il loro colore bianco. In primo piano, una casa ricoperta da una pianta arrampicante con dei frutti di colore rosso acceso.', 0, 63),
(287, './assets/Europa/Ibiza/activities/Dalt Vila/images/dalt_vila_3.webp', 'Dalt Vila illuminata dalle luci notturne, rivela le proprie abitazioni colorate di un giallo ocra da queste luci con il castello illuminato di bianco che sovrasta dall\'alto la città.', 0, 63),
(288, './assets/Europa/Ibiza/activities/Necropoli di Puig des Molins/images/cover.webp', 'Dama di Ibiza e altre 3 statue puniche della necropoli. ', 1, 64),
(289, './assets/Europa/Ibiza/activities/Necropoli di Puig des Molins/images/molins_1.webp', 'Nel primo piano due tombe vuote aperte, ricolme d\'acqua all\'interno della grotta della necropoli.', 0, 64),
(290, './assets/Europa/Ibiza/activities/Necropoli di Puig des Molins/images/molins_2.webp', 'Una stanza dell\'edificio della Necropoli in cui vi sono esposte dietro diverse vetrate manufatti tipici.', 0, 64),
(291, './assets/Europa/Ibiza/activities/Necropoli di Puig des Molins/images/molins_3.webp', 'Dietro una vetrata sono esposti manufatti come piatti e vasi illuminati da una forte luce dall\'alto.', 0, 64),
(292, './assets/Europa/Ibiza/activities/Tour in moto d\'acqua/images/cover.webp', 'Moto d\'acqua nera con dettagli gialli in acqua.', 1, 65),
(293, './assets/Europa/Ibiza/activities/Tour in moto d\'acqua/images/moto_1.webp', 'Uomo che saluta con il pollice in su sopra una moto d\'acqua nera con dettagli gialli in acqua.', 0, 65),
(294, './assets/Europa/Ibiza/activities/Tour in moto d\'acqua/images/moto_2.webp', 'Moto d\'acqua bianca con dettagli neri e gialli attraccata a riva.', 0, 65),
(295, './assets/Europa/Ibiza/activities/Tour in moto d\'acqua/images/moto_3.webp', 'Una coppia in moto d\'acqua che sfreccia ad alta velocità.', 0, 65),
(296, './assets/Europa/Nizza/activities/La Cattedrale di San Nicola/images/cover.webp', 'Vista della cattedrale da una bassa angolazione.', 1, 66),
(297, './assets/Europa/Nizza/activities/La Cattedrale di San Nicola/images/cattedrale_1.webp', 'Vista della cattedrale.', 0, 66);
INSERT INTO `image_activity` (`id`, `path`, `alt`, `is_cover`, `activity`) VALUES
(298, './assets/Europa/Nizza/activities/La Cattedrale di San Nicola/images/cattedrale_2.webp', 'Chiesa ortodossa russa di stile gotico. ', 0, 66),
(299, './assets/Europa/Nizza/activities/La Cattedrale di San Nicola/images/cattedrale_3.webp', 'Vista dalla vegetazione della cattedrale da lontano.', 0, 66),
(300, './assets/Europa/Nizza/activities/La città vecchia/images/cover.webp', 'Dipinto realistico che ritrae il fiume che attraversa la città per uno dei suoi canali. ', 1, 67),
(301, './assets/Europa/Nizza/activities/La città vecchia/images/citta_vecchia_1.webp', 'Piazza della città con diverse bancarelle e alberi che rendono la piazza viva. Attorno vi sono edifici popolari.', 0, 67),
(302, './assets/Europa/Nizza/activities/La città vecchia/images/citta_vecchia_2.webp', 'Via della città con diverse persone sedute a dei tavoli dei bar e ristoranti tipici.', 0, 67),
(303, './assets/Europa/Nizza/activities/La città vecchia/images/citta_vecchia_3.webp', 'Strada del centro cittadino provvista di binari per i tram. Vi è un particolare affollamento, anche in mezzo alla strada.', 0, 67),
(304, './assets/Europa/Nizza/activities/Museo Marc Chagall/images/cover.webp', 'Stanza del museo creato in onore al pittore Marc Chagall', 1, 68),
(305, './assets/Europa/Nizza/activities/Museo Marc Chagall/images/Chagall_1.webp', 'Tre dipinti del pittore Marc Chagall esposti al museo.', 0, 68),
(306, './assets/Europa/Nizza/activities/Museo Marc Chagall/images/Chagall_2.webp', 'Due dipinti del pittore Marc Chagall esposti al museo.', 0, 68),
(307, './assets/Europa/Nizza/activities/Museo Marc Chagall/images/Chagall_3.webp', 'Le passeur de lumière', 0, 68),
(308, './assets/Europa/Nizza/activities/Museo Matisse/images/cover.webp', 'Musèe Matisse, edificio in onore a Henri Matisse, un grande artista del 900. L\'edificio presenta un entrata principale raggiungibile solo tramite diversi scalini.', 1, 69),
(309, './assets/Europa/Nizza/activities/Museo Matisse/images/matisse_1.webp', 'Vista del Musèe Matisse, si nota il verde del giardino, degli alberi e della siepe che si trovano a fianco alla struttura.', 0, 69),
(310, './assets/Europa/Nizza/activities/Museo Matisse/images/matisse_2.webp', 'Stanza interna del museo con due quadri che sono formati da telo marrone e diversi disegni bianchi. Al centro della stanza vi è una teca con all\'interno un manufatto.', 0, 69),
(311, './assets/Europa/Nizza/activities/Museo Matisse/images/matisse_3.webp', 'Quadro raffigurante 5 uomini rossi che si tengono per mano mentre ballano in uno sfondo verde e blu.', 0, 69),
(312, './assets/Europa/Nizza/activities/Villa Massena/images/cover.webp', 'Facciata di Villa Massena, stile della belle èpoque con un giardino curato e ben diversificato con giochi di colore.', 1, 70),
(313, './assets/Europa/Nizza/activities/Villa Massena/images/massena_1.webp', 'Corridoio di Villa Massena in cui si nota il lusso di cui è ornamentata con colonne di marmo e mobili di lusso.', 0, 70),
(314, './assets/Europa/Nizza/activities/Villa Massena/images/massena_2.webp', 'Stanza di Villa Massena arredata con diversi dipinti a muro, un tappeto di grande taglia e un lampadario di cristallo.', 0, 70),
(315, './assets/Europa/Parigi/activities/Île de la Cité/images/cover.webp', 'Île de la Cité in una giornata di sole.', 1, 71),
(316, './assets/Europa/Parigi/activities/Île de la Cité/images/Cite_1.webp', 'Vista dal basso dell\'Île de la Cité.', 0, 71),
(317, './assets/Europa/Parigi/activities/Île de la Cité/images/Cite_2.webp', 'Fiume Senna e vista dell\'Île de la Cité.', 0, 71),
(318, './assets/Europa/Parigi/activities/Île de la Cité/images/Cite_3.webp', 'Île de la Cité in una giornata di sole, il fiume Senna presenta un acqua abbastanza limpida.', 0, 71),
(319, './assets/Europa/Parigi/activities/Montmartre/images/cover.webp', 'Vista da lontano di Montmartre in una giornata di sole. Attorno al palazzo vi è una forte vegetazione.', 1, 72),
(320, './assets/Europa/Parigi/activities/Montmartre/images/montmartre_1.webp', 'Vista dal basso di Montmartre, si notano le diverse rampe di scalini per accedere alla struttura. La vegetazione è fortemente presente attorno all\'edificio.', 0, 72),
(321, './assets/Europa/Parigi/activities/Montmartre/images/montmartre_2.webp', 'Scalinata di una stradina del centro cittadino. La via ha diversi lampadari del 900 e una folta vegetazione ai bordi. ', 0, 72),
(322, './assets/Europa/Parigi/activities/Montmartre/images/montmartre_3.webp', 'Vista della cupola di Montmartre dall\'interno. ', 0, 72),
(323, './assets/Europa/Parigi/activities/Montmartre/images/montmartre_4.webp', 'Vista della città storica di Parigi, con la presenza di Montmartre sopra un\'elevazione collinare, risaltando rispetto a tutto il resto degli edifici.', 0, 72),
(324, './assets/Europa/Parigi/activities/Museo del Louvre/images/cover.webp', 'Vista della piramide del Louvre dall\'esterno, con un riflesso sul pavimento che la fa sembrare un diamante.', 1, 73),
(325, './assets/Europa/Parigi/activities/Museo del Louvre/images/louvre_1.webp', 'Vista dall\'esterno della piazza contenente la piramide del Louvre e di tutta la struttura maestosa.', 0, 73),
(326, './assets/Europa/Parigi/activities/Museo del Louvre/images/louvre_2.webp', 'Una sala a forma di corridoio del museo del Louvre mentre diverse persone ammirano i quadri e le opere che ornano la struttura.', 0, 73),
(327, './assets/Europa/Parigi/activities/Museo del Louvre/images/louvre_3.webp', 'La Gioconda, detta anche Monna Lisa di Leonardo da Vinci', 0, 73),
(328, './assets/Europa/Parigi/activities/Museo del Louvre/images/louvre_4.webp', 'Vista dall\'interno della piramide di vetro del Louvre che scende fino a incontrare un altra piccola piramide che rende l\'idea che la piccola sorregga quella grande.', 0, 73),
(329, './assets/Europa/Parigi/activities/Museo d\'Orsay/images/cover.webp', 'Orologio del museo d\'Orsay', 1, 74),
(330, './assets/Europa/Parigi/activities/Museo d\'Orsay/images/orsay_1.webp', 'Entrata del museo d\'Orsay, si nota l\'orologio posto proprio sopra. Si nota l\'ampio spazio verso l\'alto, dovuto dalla presenza di un unico soffitto.', 0, 74),
(331, './assets/Europa/Parigi/activities/Museo d\'Orsay/images/orsay_2.webp', 'Vista dell\'orologio dal suo interno. ', 0, 74),
(332, './assets/Europa/Parigi/activities/Museo d\'Orsay/images/orsay_3.webp', 'Vista del museo d\'Orsay dal fiume Senna in una giornata nuvolosa.', 0, 74),
(333, './assets/Europa/Parigi/activities/Museo d\'Orsay/images/orsay_4.webp', 'In primo piano un quadro del museo d\'Orsay raffigurante un palazzo reale e diverse persone ammassate tra loro.', 0, 74),
(334, './assets/Europa/Parigi/activities/Tour Eiffel/images/cover.webp', 'Vista da lontano della Tour Eiffel e si nota in primo piano una piccola fontana con solo la testa di un toro e un piccolo vitello di fianco.', 1, 75),
(335, './assets/Europa/Parigi/activities/Tour Eiffel/images/eiffel_1.webp', 'Tour Eiffel di notte illuminata dalle luci.', 0, 75),
(336, './assets/Europa/Parigi/activities/Tour Eiffel/images/eiffel_2.webp', 'Vista della Torre Eiffel dal Senna in una giornata di sole, si nota un imbarcazione turistica.', 0, 75),
(337, './assets/Europa/Parigi/activities/Tour Eiffel/images/eiffel_3.webp', 'Tour Eiffel di notte illuminata dalle luci e un faro che illumina il cielo.', 0, 75),
(338, './assets/NordAmerica/chicago-illinois/activities/art-institute/images/cover.webp', 'Ingresso dell\'Art Istitute di Chicago', 1, 76),
(339, './assets/NordAmerica/chicago-illinois/activities/art-istitute/images/art1.webp', 'La Tiffany Window altrimenti nota come Hartwell Monumental Window, composta da 48 pannelli di diversi tipi di vetro si trova in cima alla scalinata Woman\'s Board Grand.', 0, 76),
(340, './assets/NordAmerica/chicago-illinois/activities/art-istitute/images/art2.webp', 'Famoso quadro \'I nottambuli\' di Edward Hopper.', 0, 76),
(341, './assets/NordAmerica/chicago-illinois/activities/art-istitute/images/art3.webp', 'American Gothic di Grant Wood.', 0, 76),
(342, './assets/NordAmerica/chicago-illinois/activities/art-istitute/images/art4.webp', 'Edificio Modern Wing che ospita l\'Art Istitute a Chicago.', 0, 76),
(343, './assets/NordAmerica/chicago-illinois/activities/centennial-wheel/images/cover.webp', 'Centennial Wheel di Chicago.', 1, 77),
(344, './assets/NordAmerica/chicago-illinois/activities/centennial-wheel/images/wheel1.webp', 'Interno della cabina della ruota panoramica con comodi sedili in pelle.', 0, 77),
(345, './assets/NordAmerica/chicago-illinois/activities/centennial-wheel/images/wheel2.webp', 'Tettoia di entrata e uscita dalle cabine della ruota panoramica.', 0, 77),
(346, './assets/NordAmerica/chicago-illinois/activities/centennial-wheel/images/wheel3.webp', 'Interno di una delle cabine della ruota panoramica, dalle vetrate si vede il mare e il panorama di Chicago.', 0, 77),
(347, './assets/NordAmerica/chicago-illinois/activities/guided-cruise/images/cover.webp', 'Crociera turistica del fiume Chicago.', 1, 78),
(348, './assets/NordAmerica/chicago-illinois/activities/guided-cruise/images/cruise2.webp', 'Traghetto turistico sul fiume Chicago da cui osservare i grattacieli della città.', 0, 78),
(349, './assets/NordAmerica/chicago-illinois/activities/guided-cruise/images/cruise3.webp', 'Turisti osservano dal traghetto uno dei ponti aprirsi.', 0, 78),
(350, './assets/NordAmerica/chicago-illinois/activities/guided-cruise/images/cruise4.webp', 'Tribune Tower di Chicago.', 0, 78),
(351, './assets/NordAmerica/chicago-illinois/activities/guided-tour/images/cover.webp', 'La scultura Cloud Gate, comunemente nota come The Bean.', 1, 79),
(352, './assets/NordAmerica/chicago-illinois/activities/guided-tour/images/tour1.webp', 'Chicago Cultural Center', 0, 79),
(353, './assets/NordAmerica/chicago-illinois/activities/guided-tour/images/tour2.webp', 'Franklin Street Bridge di Chicago.', 0, 79),
(354, './assets/NordAmerica/chicago-illinois/activities/guided-tour/images/tour3.webp', 'Tour del cibo, tappa da Downtown Dogs.', 0, 79),
(355, './assets/NordAmerica/chicago-illinois/activities/guided-tour/images/tour4.webp', 'Riverwalk Avanue, passaggiata lungo il fiume.', 0, 79),
(356, './assets/NordAmerica/chicago-illinois/activities/panoramic-view/images/cover.webp', 'Città di Chicago vista dall\'alto, i caratteristici grattacieli tra cui spicca la torre John Hancock Center.', 1, 80),
(357, './assets/NordAmerica/chicago-illinois/activities/panoramic-view/images/panoramic1.webp', 'Aperitivo con vista mozzafiato sulla città al Cloud Bar, al 94° piano del 360 Chicago.', 0, 80),
(358, './assets/NordAmerica/chicago-illinois/activities/panoramic-view/images/panoramic2.webp', 'Piattaforma di vetro e acciaio che consente ai turisti coraggiosi di vedere la città da una diversa... angolazione.', 0, 80),
(359, './assets/NordAmerica/chicago-illinois/activities/panoramic-view/images/panoramic3.webp', 'Metropoli di Chicago in uno scatto notturno, le strade e gli edifici della città sono illuminati a giorno.', 0, 80),
(360, './assets/NordAmerica/chicago-illinois/activities/panoramic-view/images/panoramic4.webp', 'Moderno ed elegante Cloud Bar al 94° piano di 360 Chicago.', 0, 80),
(361, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/cover.webp', 'Panoramica della Death Valley con 3 grosse formazioni rocciose nel mezzo.', 1, 81),
(362, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/death-valley1.webp', 'Canyon con formazioni rocciose caratterizzate da forme dolci e curvilinee causate dall\'erosione dell\'acqua. ', 0, 81),
(363, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/death-valley2.webp', 'La strada 66 che attraversa la death valley, con il deserto alle estremità e le spoglie montagne sullo sfondo.', 0, 81),
(364, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/death-valley3.webp', 'Un albero morto adagiato sul terreno roccioso e sabbioso della death valley.', 0, 81),
(365, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/death-valley4.webp', 'Due persone che risalgono una delle dune.', 0, 81),
(366, './assets/NordAmerica/losAngeles-california/activities/death-valley/images/death-valley5.webp', 'Alba vista dalla cima di un colle della death-valley.', 0, 81),
(367, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/cover.webp', 'Panoramica dalla cima del canyon, si vede un corso d\'acqua che lo attraversa.', 1, 82),
(368, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon1.webp', 'Panoramica dalla cima del canyon, con un corso d\'acqua che lo attraversa a valle.', 0, 82),
(369, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon4.webp', 'Vista interna da una delle gallerie del canyon, si nota la luce che entra dalle rocce erose.', 0, 82),
(370, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon2.webp', 'Panoramica dalla cima del canyon con un corso  d\'acqua che crea un anello attorno ad una delle formazioni rocciose.', 0, 82),
(371, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon3.webp', 'Panoramica del canyon.', 0, 82),
(372, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon5.webp', 'Vista dalla cima di una delle insenatura del canyon con alcuni sempreverdi cresciuti tra le rocce.', 0, 82),
(373, './assets/NordAmerica/losAngeles-california/activities/grand-canyon/images/canyon6.webp', 'Panoramica del canyon.', 0, 82),
(374, './assets/NordAmerica/losAngeles-california/activities/las-vegas/images/cover.webp', 'Iconico cartello di benvenuto a Las Vegas di forma romboidale, seguito da alcune palme e sullo sfondo da grandi palazzi.', 1, 83),
(375, './assets/NordAmerica/losAngeles-california/activities/las-vegas/images/lasVegas1.webp', 'Panoramica notturna del quartiere con la replica della torre eiffel e l\'arco di trionfo, seguiti dai grandi palazzi che fungono da hotel e casino.', 0, 83),
(376, './assets/NordAmerica/losAngeles-california/activities/las-vegas/images/lasVegas2.webp', 'Panoramica notturna della città vista da dietro il famoso hotel casinò Bellagio, si vedono le iconiche fontane dell\'hotel, la ruota Panoramica dietro alcuni palazzi e la riproduzione della torre eiffel sulla destra.', 0, 83),
(377, './assets/NordAmerica/losAngeles-california/activities/las-vegas/images/lasVegas3.webp', 'Un grande hotel casinò della città.', 0, 83),
(378, './assets/NordAmerica/losAngeles-california/activities/las-vegas/images/lasVegas4.webp', 'Il casinò hotel Ceasers Palace, set del film Una Notte Da Leoni.', 0, 83),
(379, './assets/NordAmerica/losAngeles-california/activities/madame-tussauds/images/cover.webp', 'Logo del Madame Tussauds di Hollywood.', 1, 84),
(380, './assets/NordAmerica/losAngeles-california/activities/madame-tussauds/images/tussauds1.webp', 'Statua di cera di un beduino con il cammello dietro.', 0, 84),
(381, './assets/NordAmerica/losAngeles-california/activities/madame-tussauds/images/tussauds2.webp', 'Statua di cera di Donald Trump circondato e immerso nella spazzatura.', 0, 84),
(382, './assets/NordAmerica/losAngeles-california/activities/madame-tussauds/images/tussauds3.webp', 'Ingresso del museo, è presente un bar con tavolini all\'esterno.', 0, 84),
(383, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/cover.webp', 'Statua del logo della Universal, globo terrestre con davanti la scritta Universal.', 1, 85),
(384, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/universal1.webp', 'Set di Hogwarts scuola di magia dei film di Harry Potter.', 0, 85),
(385, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/universal2.webp', 'Statue di due minion dal film Cattivissimo me intenti a farsi dispetti mentre cercano di pitturare un muro.', 0, 85),
(386, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/universal3.webp', 'Ingresso nell\'attrazione Krustyland, ispirato all\'iconica serie I Simpson, molto affollata.', 0, 85),
(387, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/universal4.webp', 'Ingresso del parco, un icona al neon con la scritta Universal Studios.', 0, 85),
(388, './assets/NordAmerica/losAngeles-california/activities/universal-tour/images/universal5.webp', 'Grande statua del salvatore del pianeta Optimus Prime nel film Transformers.', 0, 85),
(389, './assets/NordAmerica/newYork/activities/central-park-zoo/images/cover.webp', 'Un panda rosso intento a mangiare delle foglie di bambù.', 1, 86),
(390, './assets/NordAmerica/newYork/activities/central-park-zoo/images/zoo1.webp', 'Un leopardo delle nevi che cammina su un innevato terreno roccioso.', 0, 86),
(391, './assets/NordAmerica/newYork/activities/central-park-zoo/images/zoo2.webp', 'Un colorato pappagallo Ara.', 0, 86),
(392, './assets/NordAmerica/newYork/activities/central-park-zoo/images/zoo3.webp', 'La testa di un leone marino fuoriesce dall\'acqua con aria regale.', 0, 86),
(393, './assets/NordAmerica/newYork/activities/central-park-zoo/images/zoo4.webp', 'Un orso grizzly che osserva i turisti incuriosito.', 0, 86),
(394, './assets/NordAmerica/newYork/activities/empire-state-building/images/cover.webp', 'Panorama di New York con particolare con al centro l\'empire state building.', 1, 87),
(395, './assets/NordAmerica/newYork/activities/empire-state-building/images/empire1.webp', 'Panorama notturno di New York visto dall\'Empire State Building.', 0, 87),
(396, './assets/NordAmerica/newYork/activities/empire-state-building/images/empire2.webp', 'Vista diurna su New York dall\'Empire State Building verso sud est', 0, 87),
(397, './assets/NordAmerica/newYork/activities/empire-state-building/images/empire3.webp', 'Vista diurna su New York dall\'Empire State Building verso sud ovest.', 0, 87),
(398, './assets/NordAmerica/newYork/activities/helicopter-tour/images/cover.webp', 'Elicottero in fase di atterraggio all\'eliporto', 1, 88),
(399, './assets/NordAmerica/newYork/activities/helicopter-tour/images/helicopter1.webp', 'Elicottero che sorvola Manhattan.', 0, 88),
(400, './assets/NordAmerica/newYork/activities/helicopter-tour/images/helicopter2.webp', 'Vista dall\'elicottero della città di New York.', 0, 88),
(401, './assets/NordAmerica/newYork/activities/helicopter-tour/images/helicopter3.webp', 'Vista dal sedile di pilotaggio dell\'isola di Manhattan.', 0, 88),
(402, './assets/NordAmerica/newYork/activities/helicopter-tour/images/helicopter4.webp', 'Vista dall\'elicottero su Manhattan, in particolare su Central Park  con la città che si estende oltre l\'Hudson in secondo piano.', 0, 88),
(403, './assets/NordAmerica/newYork/activities/moma/images/cover.webp', 'Insegna al ingresso del MoMA.', 1, 89),
(404, './assets/NordAmerica/newYork/activities/moma/images/moma1.webp', 'Una turista che osserva alcune delle opere esposte al MoMA.', 0, 89),
(405, './assets/NordAmerica/newYork/activities/moma/images/moma2.webp', 'Alcuni dei quadri esposti al MoMA l\'area è molto illuminata.', 0, 89),
(406, './assets/NordAmerica/newYork/activities/moma/images/moma3.webp', 'Alcune delle opere esposte, l\'area è ben illuminata.', 0, 89),
(407, './assets/NordAmerica/newYork/activities/moma/images/moma4.webp', 'Vista dall\'alto di una delle sale di esposizione. Sono presenti dei posti a sedere su panchine in metallo senza schienale.', 0, 89),
(408, './assets/NordAmerica/newYork/activities/natural-history-museum/images/cover.webp', 'Sala del museo con alcuni animali imbalsamati, al centro un gruppo di elefanti.', 1, 90),
(409, './assets/NordAmerica/newYork/activities/natural-history-museum/images/museum1.webp', 'Ingresso del museo dall\'esterno.', 0, 90),
(410, './assets/NordAmerica/newYork/activities/natural-history-museum/images/museum2.webp', 'Uno scheletro di dinosauro carnivoro.', 0, 90),
(411, './assets/NordAmerica/newYork/activities/natural-history-museum/images/museum3.webp', 'Stanza con alcuni scheletri di creature preistoriche, in primo piano lo scheletro di un mammut.', 0, 90),
(412, './assets/NordAmerica/newYork/activities/natural-history-museum/images/museum4.webp', 'Statua della grande balenottera azzurra che pende dal soffitto del salone di esposizione a due piani.', 0, 90),
(413, './assets/NordAmerica/newYork/activities/natural-history-museum/images/museum5.webp', 'Alcuni bambini osservano la vetrina con degli orici imbalsamati.', 0, 90),
(414, './assets/NordAmerica/newYork/activities/statue-of-liberty/images/cover.webp', 'Primo piano della statua della libertà.', 1, 91),
(415, './assets/NordAmerica/newYork/activities/statue-of-liberty/images/statue1.webp', 'Foto aerea della Statua della Libertà e l\'isola su cui è costruita.', 0, 91),
(416, './assets/NordAmerica/newYork/activities/statue-of-liberty/images/statue2.webp', 'Mezzobusto della Statua della Libertà.', 0, 91),
(417, './assets/NordAmerica/newYork/activities/statue-of-liberty/images/statue3.webp', 'Isola e Statua della Libertà viste dal traghetto che naviga sull\'Hudson.', 0, 91),
(418, './assets/NordAmerica/newYork/activities/statue-of-liberty/images/statue4.webp', 'Foto aerea della Statua della LIbertà e l\'isola su cui è costruita.', 0, 91),
(419, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/cover.webp', 'Alcuni turisti nel tunnel che passa sotto una delle enormi vasche dell\'acquario.', 1, 92),
(420, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium1.webp', 'L\'istruttrice da ordini al delfino durante lo spettacolo sui delfini. I visitatori guardano il tutto dall\'alto protetti da un parapetto.', 0, 92),
(421, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium2.webp', 'Alcune meduse.', 0, 92),
(422, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium3.webp', 'Una lucertola del rettilario dell\'acquario.', 0, 92),
(423, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium4.webp', 'Un pitone verde appeso ad un ramo osserva il fotografo.', 0, 92),
(424, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium5.webp', 'Dei piranha.', 0, 92),
(425, './assets/NordAmerica/vancouver-britishColumbia/activities/aquarium/images/aquarium6.webp', 'Dei pinguini.', 0, 92),
(426, './assets/NordAmerica/vancouver-britishColumbia/activities/capilano-bridge/images/cover.webp', 'Alcuni turisti camminano sul ponte sospeso in mezzo alla natura circondati da una moltitudine di alberi verdi.', 1, 93),
(427, './assets/NordAmerica/vancouver-britishColumbia/activities/capilano-bridge/images/capilano1.webp', 'Alcune persone camminano sul ponte sospeso tra gli alberi.', 0, 93),
(428, './assets/NordAmerica/vancouver-britishColumbia/activities/capilano-bridge/images/capilano2.webp', 'Il lungo ponte sospeso arriva quasi a raggiungere la cima di alcuni pini.', 0, 93),
(429, './assets/NordAmerica/vancouver-britishColumbia/activities/capilano-bridge/images/capilano3.webp', 'Alcuni turisti osservano il panorama appoggiati al parapetto del ponte.', 0, 93),
(430, './assets/NordAmerica/vancouver-britishColumbia/activities/guided-tour/images/cover.webp', 'Alcuni totem degli indiani d\'america immersi nella natura.', 1, 94),
(431, './assets/NordAmerica/vancouver-britishColumbia/activities/guided-tour/images/tour1.webp', 'Il lions gate bridge.', 0, 94),
(432, './assets/NordAmerica/vancouver-britishColumbia/activities/guided-tour/images/tour2.webp', 'Granville island, località per lo shopping.', 0, 94),
(433, './assets/NordAmerica/vancouver-britishColumbia/activities/guided-tour/images/tour3.webp', 'L\'ingresso per il quartiere cinese costituito da 4 colonne che sorreggono 3 tetti di architettura asiatica.', 0, 94),
(434, './assets/NordAmerica/vancouver-britishColumbia/activities/lookout/images/cover.webp', 'Il punto panoramico di Vancouver, situato sopra l\'Harbour Center.', 1, 95),
(435, './assets/NordAmerica/vancouver-britishColumbia/activities/lookout/images/lookout1.webp', 'Il punto panoramico visto dal basso.', 0, 95),
(436, './assets/NordAmerica/vancouver-britishColumbia/activities/lookout/images/lookout2.webp', 'Vista dal punto panoramico di Vancouver, al suo interno ci sono alcuni binocoli che possono essere utilizzati dai turisti.', 0, 95),
(437, './assets/NordAmerica/vancouver-britishColumbia/activities/seaplane-tour/images/cover.webp', 'L\'idrovolante utilizzato per il tour aereo della città.', 1, 96),
(438, './assets/NordAmerica/vancouver-britishColumbia/activities/seaplane-tour/images/seaplane1.webp', 'Vista della città dall\'aereo.', 0, 96),
(439, './assets/NordAmerica/vancouver-britishColumbia/activities/seaplane-tour/images/seaplane2.webp', 'L\'aereo atterra sul mare di con la città sullo sfondo.', 0, 96),
(440, './assets/NordAmerica/vancouver-britishColumbia/activities/seaplane-tour/images/seaplane3.webp', 'Vista della città dall\'aereo.', 0, 96),
(441, './assets/Oceania/Auckland/activities/crociera/images/cover.webp', 'Gruppo di turisti su un catamarano fotografano sorpresi una balena che nuota vicino alla loro imbarcazione', 1, 97),
(442, './assets/Oceania/Auckland/activities/crociera/images/auc1.webp', 'Gita turistica in catamarano.', 0, 97),
(443, './assets/Oceania/Auckland/activities/crociera/images/auc2.webp', 'Una balena salta fuori dall\'acqua proprio di fronte a un catamarano turistico lasciando a bocca aperta i passeggeri.', 0, 97),
(444, './assets/Oceania/Auckland/activities/crociera/images/auc3.webp', 'Grande nave da crociera che naviga su un mare piatto e tranquillo.', 0, 97),
(445, './assets/Oceania/Auckland/activities/ghiacciaio/images/cover.webp', 'Gruppo di 4 amici durante un escursione sul ghiacciaio.', 1, 98),
(446, './assets/Oceania/Auckland/activities/ghiacciaio/images/ice1.webp', 'Spaccatura nel ghiacciaio.', 0, 98),
(447, './assets/Oceania/Auckland/activities/ghiacciaio/images/ice2.webp', 'Il paesaggio mostra la lingua del ghiacciaio incastonata nella gola tra i due versanti della montagna.', 0, 98),
(448, './assets/Oceania/Auckland/activities/ghiacciaio/images/ice3.webp', 'Qualche escursionista attraversa la lingua del ghiacciaio.', 0, 98),
(449, './assets/Oceania/Auckland/activities/hobbiville/images/cover.webp', 'Scorcio del villaggio di Hobbiville con le piccole casette scavate sotto le colline. Il laghetto in primo piano riflette le abitazioni e il cielo limpido.', 1, 99),
(450, './assets/Oceania/Auckland/activities/hobbiville/images/hobbit1.webp', 'Abitazioni della cittadina di Hobbiville direttamente dal set cinematografico del Signore degli Anelli.', 0, 99),
(451, './assets/Oceania/Auckland/activities/hobbiville/images/hobbit2.webp', 'Primo piano di una delle abitazioni tipiche degli hobbit.', 0, 99),
(452, './assets/Oceania/Auckland/activities/hobbiville/images/hobbit3.webp', 'Abitazione del villaggio di Hobbiville sotto la luce del tramonto.', 0, 99),
(453, './assets/Oceania/Auckland/activities/tour-cantine/images/cover.webp', 'Gruppo numeroso si gode la vista e la degustazione seduti su comodi pouf sotto ombrelloni bianchi posizionati su un ampio prato.', 1, 100),
(454, './assets/Oceania/Auckland/activities/tour-cantine/images/pic1.webp', 'Turisti degustano i vini seduti su tavoli di legno posizionati in una terrazza che da sul panorama.', 0, 100),
(455, './assets/Oceania/Auckland/activities/tour-cantine/images/pic2.webp', 'In primo piano due calici di vino e un piatto di assaggi, sullo sfondo il panorama collinare e il mare.', 0, 100),
(456, './assets/Oceania/Auckland/activities/tour-cantine/images/pic3.webp', 'Floridi filari di vigne affacciate sul mare.', 0, 100),
(457, './assets/Oceania/BoraBora/activities/catamarano/images/cover.webp', 'Famiglia su catamarano durante una gita a Bora Bora.', 1, 101),
(458, './assets/Oceania/BoraBora/activities/catamarano/images/cat1.webp', 'Gruppo di amici che si gode una gita in catamarano sull\'isola di Bora Bora.', 0, 101),
(459, './assets/Oceania/BoraBora/activities/catamarano/images/cat2.webp', 'Catamarano e isola di Bora Bora durante una giornata estiva.', 0, 101),
(460, './assets/Oceania/BoraBora/activities/catamarano/images/cat3.webp', 'Catamarano e isola di Bora Bora.', 0, 101),
(461, './assets/Oceania/BoraBora/activities/picnic/images/cover.webp', 'Picnic su una barca a Bora Bora.', 1, 102),
(462, './assets/Oceania/BoraBora/activities/picnic/images/pic1.webp', 'Picnic su una barca a Bora Bora.', 0, 102),
(463, './assets/Oceania/BoraBora/activities/picnic/images/pic2.webp', 'Gruppo di amici che prepara piatti tipici di Bora Bora.', 0, 102),
(464, './assets/Oceania/BoraBora/activities/safari-snorkeling/images/cover.webp', 'Una parte dell\'immagine rappresenta il safari e l\'altra l\'attività di snorkeling.', 1, 103),
(465, './assets/Oceania/BoraBora/activities/safari-snorkeling/images/safari1.webp', 'Famiglia che si gode su una jeep una visita al safari di Bora Bora.', 0, 103),
(466, './assets/Oceania/BoraBora/activities/safari-snorkeling/images/sea1.webp', 'Bambina che osserva i pesci sott\'acqua.', 0, 103),
(467, './assets/Oceania/BoraBora/activities/safari-snorkeling/images/sea2.webp', 'Ragazzi che fanno snorkeling.', 0, 103),
(468, './assets/Oceania/BoraBora/activities/tour-barca/images/cover.webp', 'Barca a Bora Bora pronta a salpare.', 1, 104),
(469, './assets/Oceania/Fiji/activities/crociera/images/cover.webp', 'Nave diretta verso una della isole Fiji.', 1, 105),
(470, './assets/Oceania/BoraBora/activities/tour-barca/images/barca1.webp', 'Barca al tramonto sulle acque di Bora Bora.', 0, 104),
(471, './assets/Oceania/BoraBora/activities/tour-barca/images/barca2.webp', 'Vista dall\'alto di una barca e di squali.', 0, 104),
(472, './assets/Oceania/Fiji/activities/crociera/images/pic1.webp', 'Nave diretta verso una della isole Fiji.', 0, 105),
(473, './assets/Oceania/Fiji/activities/crociera/images/pic2.webp', 'Nave diretta verso una della isole Fiji.', 0, 105),
(474, './assets/Oceania/Fiji/activities/crociera/images/pic3.webp', 'Nave diretta verso una della isole Fiji.', 0, 105),
(475, './assets/Oceania/Fiji/activities/malamala/images/cover.webp', 'Nave che arriva all\'isola di Malalmala.', 1, 106),
(476, './assets/Oceania/Fiji/activities/malamala/images/mal1.webp', 'Vista dell\'isola di Malamala.', 0, 106),
(477, './assets/Oceania/Fiji/activities/malamala/images/mal2.webp', 'Vista dell\'isola di Malamala.', 0, 106),
(478, './assets/Oceania/Fiji/activities/river-tubing/images/cover.webp', 'Gruppo di persone che fa river tubing su canoe.', 1, 107),
(479, './assets/Oceania/Fiji/activities/river-tubing/images/river1.webp', 'Vista dall\'alto sul fiume su cui si svolgono le attività di river tubing.', 0, 107),
(480, './assets/Oceania/Fiji/activities/river-tubing/images/river2.webp', 'Gruppo di persone che fa river tubing.', 0, 107),
(481, './assets/Oceania/Fiji/activities/river-tubing/images/river3.webp', 'Vista del fiume e dei gommoni che usati per river tubing.', 0, 107),
(482, './assets/Oceania/Fiji/activities/snorkeling-squali/images/cover.webp', 'Squalo che nuota tra i coralli.', 1, 108),
(483, './assets/Oceania/Fiji/activities/snorkeling-squali/images/shark1.webp', 'Ragazzo che nuota con uno squalo.', 0, 108),
(484, './assets/Oceania/Fiji/activities/snorkeling-squali/images/shark2.webp', 'Gruppo di persone che nuota con gli squali.', 0, 108),
(485, './assets/Oceania/Fiji/activities/snorkeling-squali/images/shark3.webp', 'Due persone che fanno snorkeling.', 0, 108),
(486, './assets/Oceania/Sydney/activities/sea-life/images/cover.webp', 'Famiglia che osserva degli squali all\'acquario.', 1, 109),
(487, './assets/Oceania/Sydney/activities/sea-life/images/sea1.webp', 'Gruppo di turisti che fotografano una tartaruga all\'acquario.', 0, 109),
(488, './assets/Oceania/Sydney/activities/sea-life/images/sea2.webp', 'Squali e pesci nell\'acquario.', 0, 109),
(489, './assets/Oceania/Sydney/activities/sea-life/images/sea3.webp', 'Ristorante con le pareti di vetro, posizionato sotto l\'acquario.', 0, 109),
(490, './assets/Oceania/Sydney/activities/tour-elicottero/images/cover.webp', 'Elicottero che sorvola la città di Sydney.', 1, 110),
(491, './assets/Oceania/Sydney/activities/tour-elicottero/images/eli1.webp', 'Elicottero che vola sulla città di Sydney.', 0, 110),
(492, './assets/Oceania/Sydney/activities/tour-elicottero/images/eli2.webp', 'Elicottero che vola sulla città di Sydney.', 0, 110),
(493, './assets/Oceania/Sydney/activities/tour-mountain/images/cover.webp', 'Vista delle Blue Mountains dall\'alto.', 1, 111),
(494, './assets/Oceania/Sydney/activities/tour-mountain/images/pic1.webp', 'Turisti che si fanno una foto con montagne sullo sfondo.', 0, 111),
(495, './assets/Oceania/Sydney/activities/tour-mountain/images/pic2.webp', 'Cabinovia che permette di spostarsi tra le montagne.', 0, 111),
(496, './assets/Oceania/Sydney/activities/tour-mountain/images/pic3.webp', 'Terrazzo tra le montagne.', 0, 111),
(497, './assets/Oceania/Sydney/activities/zoo-taronga/images/cover.webp', 'Giraffe allo zoo di Taronga.', 1, 112),
(498, './assets/Oceania/Sydney/activities/zoo-taronga/images/zoo1.webp', 'Facciata esterna dello zoo di Taronga.', 0, 112),
(499, './assets/Oceania/Sydney/activities/zoo-taronga/images/zoo2.webp', 'Bambino che guarda un cucciolo di leone.', 0, 112),
(500, './assets/Oceania/Sydney/activities/zoo-taronga/images/zoo3.webp', 'Leone allo zoo di Taronga.', 0, 112);

-- --------------------------------------------------------

--
-- Struttura della tabella `image_airline`
--

CREATE TABLE `image_airline` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 1,
  `airline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `image_airline`
--

INSERT INTO `image_airline` (`id`, `path`, `alt`, `is_cover`, `airline`) VALUES
(1, './assets/Africa/capeTown-southAfrica/airline/images/klm-logo.png', 'Scritta della KLM Royal Dutch Airlines, la scritta KLM è in grassetto maiuscolo, sopra il logo di una corona stilizzata.', 1, '<span lang=\"en\">KLM Royal Dutch Airlines</span>'),
(2, './assets/Africa/mwanza-tanzania/airline/images/af-logo.svg', 'Scritta Air France con un parallelogramma rosso sulla destra, logo della compagnia.', 1, '<span lang=\"en\">Air France</span>'),
(3, './assets/Africa/sharmElSheikh-egitto/airline/images/turkish-logo.png', 'Cerchio con disegnato un uccello bianco su sfondo rosso. Logo compagnia aerea.', 1, '<span lang=\"en\">Turkish Airlines</span>'),
(4, './assets/Africa/windhoek-namibia/airline/images/lufthansa-logo.png', 'Logo Lufthansa, un uccello all\'interno di un cerchio.', 1, 'Lufthansa'),
(6, './assets/America_del_Sud/Buenos Aires/airline/images/fe-logo.png', 'Fly Emirates logo.', 1, '<span lang=\"en\">Fly Emirates</span>'),
(7, './assets/America_del_Sud/Galápagos/airline/images/name.png', 'America Airlines logo.', 1, '<span lang=\"en\">America Airlines</span>'),
(8, './assets/America_del_Sud/Patagonia/airline/images/AA-logo.webp', 'America Airlines logo.', 1, '<span lang=\"en\">America Airlines</span>'),
(9, './assets/Asia/Bali/airline/images/logo.png', 'Scritta Fly Emirates.', 1, '<span lang=\"en\">Fly Emirates</span>'),
(10, './assets/Asia/HongKong/airline/images/logo.png', 'Logo compagnia aerea, è una scritta che dice Fly Emirates.', 1, '<span lang=\"en\">Fly Emirates</span>'),
(11, './assets/Asia/Seoul/airline/images/logo.png', 'Logo compagnia aerea, è una scritta che dice Fly Emirates.', 1, '<span lang=\"en\">Fly Emirates</span>'),
(12, './assets/Asia/Tokyo/airline/images/logo.png', 'Logo compagnia aerea, è una scritta che dice Fly Emirates.', 1, '<span lang=\"en\">Fly Emirates</span>'),
(13, './assets/Europa/Bruxelles/airline/images/ba-logo.png', 'Scritta Bussels airlines, sulla sinistra il logo, una b puntinata.', 1, '<span lang=\"fr\">Brussels</span> <span lang=\"en\">airlines</span>'),
(14, './assets/Europa/Ibiza/airline/images/ry-logo.png', 'Logo della Ryanair.', 1, '<span lang=\"en\">Ryanair</span>'),
(17, './assets/NordAmerica/chicago-illinois/airline/images/logo-iberia.svg', 'Scritta Iberia, simbolo di una bandiera sul lato destro della scritta.', 1, 'Iberia'),
(18, './assets/NordAmerica/losAngeles-california/airline/images/british-airways-logo.png', 'Logo british airways.', 1, '<span lang=\"en\">British Airways</span>'),
(20, './assets/NordAmerica/vancouver-britishColumbia/airline/images/air-canada-logo.svg', 'Logo di air canada, una foglia d\'acero rossa.', 1, '<span lang=\"en\">Air Canada</span>'),
(21, './assets/Oceania/Auckland/airline/images/logo.png', 'Scritta della Quatar Airways, sulla destra il logo con un orice arabo.', 1, '<span lang=\"en\">Qatar Airways</span>'),
(22, './assets/Oceania/BoraBora/airline/images/logo.png', 'Scritta della Quatar Airways, sulla destra il logo con un orice arabo.', 1, '<span lang=\"en\">Qatar Airways</span>'),
(23, './assets/Oceania/Fiji/airline/images/logo.png', 'Scritta della Quatar Airways, sulla destra il logo con un orice arabo.', 1, '<span lang=\"en\">Qatar Airways</span>'),
(24, './assets/Oceania/Sydney/airline/images/logo.png', 'Scritta di Quatar Airways con un logo solla destra di un orice arabo.', 1, '<span lang=\"en\">Qatar Airways</span>');

-- --------------------------------------------------------

--
-- Struttura della tabella `image_destination`
--

CREATE TABLE `image_destination` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 0,
  `destination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `image_destination`
--

INSERT INTO `image_destination` (`id`, `path`, `alt`, `is_cover`, `destination`) VALUES
(1, './assets/Africa/capeTown-southAfrica/images/cover.webp', 'Cape Town illuminata dal sole con i suoi edifici che si stendono dalle montagne alla costa e lo stadio Green Point circondato dal verde.', 1, 1),
(2, './assets/Africa/capeTown-southAfrica/images/cape1.webp', 'Visuale dall\'alto della città di Cape Town affacciata sul mare, sullo sfondo la montagna del Leone.', 0, 1),
(3, './assets/Africa/capeTown-southAfrica/images/cape2.webp', 'Parte costiera della città di Cape Town che si affaccia sul mare blu, dietro, le montagne.', 0, 1),
(4, './assets/Africa/capeTown-southAfrica/images/cape3.webp', 'Viale con le casette colora de di Cape Town.', 0, 1),
(5, './assets/Africa/capeTown-southAfrica/images/cape4.webp', 'L\'imponente struttura semicircolare del Green Point Stadium situato vicino alla costa.', 0, 1),
(6, './assets/Africa/capeTown-southAfrica/images/cape5.webp', 'Cape Town e la sua montagna caratteristica montagna.', 0, 1),
(7, './assets/Africa/capeTown-southAfrica/images/cape6.webp', 'Visuale dall\'alto della città di Cape Town con i suoi edifici che si stendono dalle montagne alla costa e lo stadio Green Point circondato dal verde.', 0, 1),
(8, './assets/Africa/mwanza-tanzania/images/cover.webp', 'Foto di Mwanza vista da una delle due sponde del golfo. La città appare immersa nella natura e presenta una conformazione collinare.', 1, 2),
(9, './assets/Africa/mwanza-tanzania/images/lake-victoria1.webp', 'Spiaggia di Mwanza sul lago Vittoria, l\'acqua è un po\'torbida. Sono presenti alcuni alberi sulla spiaggia che creano zone d\'ombra.', 0, 2),
(10, './assets/Africa/mwanza-tanzania/images/lake-victoria2.webp', 'Vista dall\'alto di un pezzo del lago Vittoria in cui la giungla ha creato un promontorio su di esso.', 0, 2),
(11, './assets/Africa/mwanza-tanzania/images/mwanza1.webp', 'Una roccia posta in equilibrio sopra una formazione rocciosa nel lago, attrazione turistica chiamata Bismarck Rock.', 0, 2),
(12, './assets/Africa/mwanza-tanzania/images/mwanza2.webp', 'Contrasto tra i palazzi di Mwanza e la natura che circonda e avvolge la città.', 0, 2),
(13, './assets/Africa/sharmElSheikh-egitto/images/cover.webp', 'Spiaggia con sdraio in legno ed ombrelloni in vimini accessoriati con un piccolo tavolino portaoggetti. L\'acqua del mare risulta limpida.', 1, 3),
(14, './assets/Africa/sharmElSheikh-egitto/images/sharm1.webp', 'Moschea di Sharm el-Sheikh preceduta da un\'ampia piazza e circondata da negozi. La moschea alterna mattoni chiari e scuri.', 0, 3),
(15, './assets/Africa/sharmElSheikh-egitto/images/sharm2.webp', 'Un sub che pratica snorkeling nel Mar Rosso, sotto di lui la barriera corallina popolata da molti pesci colorati.', 0, 3),
(16, './assets/Africa/sharmElSheikh-egitto/images/sharm3.webp', 'Foto subacquea del Mar Rosso raffigurante alcune formazioni coralline e dei pesci.', 0, 3),
(17, './assets/Africa/sharmElSheikh-egitto/images/sharm4.webp', 'Diverse specie di pesci colorati che nuotano sopra la barriera corallina in un\'acqua molto limpida.', 0, 3),
(18, './assets/Africa/sharmElSheikh-egitto/images/sharm5.webp', 'Foto subacquea che raffigura una formazione corallina vista dall\'alto.', 0, 3),
(19, './assets/Africa/sharmElSheikh-egitto/images/sharm6.webp', 'Una tomba egiziana nel deserto, l\'ingresso è scavato nel muro e decorato con statue di faraoni. È preceduto da un obelisco.', 0, 3),
(20, './assets/Africa/sharmElSheikh-egitto/images/sharm7.webp', 'Una piazza antistante una moschea. La moschea è costruita utilizzando mattoni chiari. Si notano le usuali cupole e le due torri.', 0, 3),
(21, './assets/Africa/windhoek-namibia/images/cover.webp', 'Sullo sfondo delle dune, precedute da una pianura desertica sulla quale si trova un\'antilope orice.', 1, 4),
(22, './assets/Africa/windhoek-namibia/images/windhoek1.webp', 'Contrasto tra i palazzi cittadini e la natura che popola la città.', 0, 4),
(23, './assets/Africa/windhoek-namibia/images/windhoek2.webp', 'Un grande palazzo situato di fronte ad una strada a due carreggiate con due corsie ciascuna ed oltre ad essa un parco.', 0, 4),
(24, './assets/Africa/windhoek-namibia/images/windhoek3.webp', 'La famosa chiesa di Cristo di Windhoek.', 0, 4),
(25, './assets/Africa/windhoek-namibia/images/windhoek4.webp', 'La città di windhoek immersa nel verde della natura.', 0, 4),
(26, './assets/Africa/windhoek-namibia/images/windhoek5.webp', 'Vista da dietro della statua di Sam Nujoma, situata vicino alla Chiesa di Cristo che fa da sfondo.', 0, 4),
(27, './assets/Africa/windhoek-namibia/images/windhoek6.webp', 'Deserto del Deadvlei con gli alberi morti uccisi dallo strato di bicarbonato di calcio che ricopre la sabbia, fanno da sfondo le dune rosse particolarità di questa zona.', 0, 4),
(28, './assets/America_del_Sud/Aruba/images/cover.webp', 'Spiaggia bianca bagnata dal mare dei Caraibi.', 1, 5),
(29, './assets/America_del_Sud/Aruba/images/aruba_1.webp', 'Paradisiaca spiaggia di Eagle Beach', 0, 5),
(30, './assets/America_del_Sud/Aruba/images/aruba_2.webp', 'Tram vintage attraversa la città di Aruba.', 0, 5),
(31, './assets/America_del_Sud/Aruba/images/aruba_3.webp', 'Fenicotteri rosa nelle acque cristalline del mare.', 0, 5),
(32, './assets/America_del_Sud/Aruba/images/aruba_4.webp', 'Visuale dall\'alto della spiaggia, l\'acqua cristallina bagna la sabbia bianca', 0, 5),
(33, './assets/America_del_Sud/Aruba/images/aruba_5.webp', 'Fenicottero rosa sulla spiaggia.', 0, 5),
(34, './assets/America_del_Sud/Aruba/images/aruba_6.webp', 'Turista nuota nelle acque cristalline del mare dei Caraibi', 0, 5),
(35, './assets/America_del_Sud/Buenos Aires/images/cover.webp', 'Plaza de Mayo, in primo piano il giardino con tanto di fontana e in background il piazzo di Congresso.', 1, 6),
(36, './assets/America_del_Sud/Buenos Aires/images/buenos_aires_1.webp', 'Palazzo del congresso di Buenos Aires.', 0, 6),
(37, './assets/America_del_Sud/Buenos Aires/images/buenos_aires_2.webp', 'Palazzo del congresso di Buenos Aires visto dall\'alto al tramonto.', 0, 6),
(38, './assets/America_del_Sud/Buenos Aires/images/buenos_aires_3.webp', 'Vista di notte della Plaza de Mayo illuminata dalle luci notturne. Si distingue dal resto degli edifici il palazzo del congresso.', 0, 6),
(39, './assets/America_del_Sud/Buenos Aires/images/buenos_aires_4.webp', 'In primo piano l\'Obelisco di Buenos Aires, con i fanali delle auto che creano una scia nella notte.', 0, 6),
(40, './assets/America_del_Sud/Buenos Aires/images/buenos_aires_5.webp', 'In primo piano una statua di un fiore aperto in metallo.', 0, 6),
(41, './assets/America_del_Sud/Galápagos/images/cover.webp', 'Tartaruga d\'acqua.', 1, 7),
(42, './assets/America_del_Sud/Galápagos/images/galapagos_1.webp', 'Tartaruga di terra molto grande.', 0, 7),
(43, './assets/America_del_Sud/Galápagos/images/galapagos_2.webp', 'Granchio caratteristico per il suo colore rosso e azzurro molto acceso.', 0, 7),
(44, './assets/America_del_Sud/Galápagos/images/galapagos_3.webp', 'Spiaggia scogliosa con poca spiaggia sabbiosa e acqua cristallina.', 0, 7),
(45, './assets/America_del_Sud/Galápagos/images/galapagos_4.webp', 'Iguana di colore giallo ocra sopra gli scogli.', 0, 7),
(46, './assets/America_del_Sud/Galápagos/images/galapagos_5.webp', 'Quattro tartarughe di terra molto grandi.', 0, 7),
(47, './assets/America_del_Sud/Galápagos/images/galapagos_6.webp', 'Scogli arancioni e spiaggia cristallina in un terreno collinare.', 0, 7),
(48, './assets/America_del_Sud/Patagonia/images/cover.webp', 'Vista del ghiacciaio Perito Moreno dall\'alto e dal mare cristallino che lo bagna.', 1, 8),
(49, './assets/America_del_Sud/Patagonia/images/patagonia_1.webp', 'Vista dall\'alto del ghiacciaio Perito Moreno da lontano e da vicino la fine della foresta. In lontananza si vedono le montagne innevate.', 0, 8),
(50, './assets/America_del_Sud/Patagonia/images/patagonia_2.webp', 'Parte del ghiacciaio Perito Moreno che crea un ponte ad arco con il ghiaccio.', 0, 8),
(51, './assets/America_del_Sud/Patagonia/images/patagonia_3.webp', 'Parte del ghiacciaio, si immortala lo distaccamento di una parte del ghiacciaio che si riversa in mare.', 0, 8),
(52, './assets/America_del_Sud/Patagonia/images/patagonia_4.webp', 'Vista da lontano e dall\'alto del ghiacciaio in una giornata di sole.', 0, 8),
(53, './assets/America_del_Sud/Patagonia/images/patagonia_5.webp', 'Tre turisti che da sopra una roccia ammira le montagne innevate.', 0, 8),
(54, './assets/Asia/Bali/images/cover.webp', 'Pura Ulun Danu Bratan tempio indù si specchia sulla riva del lago Bratan.', 1, 9),
(55, './assets/Asia/Bali/images/bali2.webp', 'Risaie di bali strutturate in terrazzamenti sulle colline.', 0, 9),
(56, './assets/Asia/Bali/images/bali3.webp', 'Costa rocciosa con montagna quasi a picco sul mare, solo una piccola lingua di sabbia consente di avvicinarsi all\'acqua.', 0, 9),
(57, './assets/Asia/Bali/images/bali4.webp', 'Panorama della zona rurale con risaie, alberi e le montagne sullo sfondo.', 0, 9),
(58, './assets/Asia/Bali/images/bali5.webp', 'Monte Bromo facente parte delle Tangger mountains rimane una dei vulcani ancora attivi della zona.', 0, 9),
(59, './assets/Asia/HongKong/images/cover.webp', 'Vista dall\'alto della città di Hongkong.', 1, 10),
(60, './assets/Asia/HongKong/images/hongkong1.webp', 'Strade notturne illuminate della città di Hong Kong.', 0, 10),
(61, './assets/Asia/HongKong/images/hongkong2.webp', 'Vista della città di Hong Kong dall\'alto.', 0, 10),
(62, './assets/Asia/HongKong/images/hongkong3.webp', 'Vista dal mare della città di Hong Kong.', 0, 10),
(63, './assets/Asia/HongKong/images/hongkong4.webp', 'Strada trafficata di Hong Kong.', 0, 10),
(64, './assets/Asia/Seoul/images/cover.webp', 'Vista del palazzo che rappresenta la Seoul vecchia e sullo sfondo si scorgono i grattacieli della Seoul moderna. ', 1, 11),
(65, './assets/Asia/Seoul/images/seoul1.webp', 'Vista dall\'alto dei palazzi della Seoul moderna di sera.', 0, 11),
(66, './assets/Asia/Seoul/images/seoul3.webp', 'Vista dei palazzi in centro a Seoul.', 0, 11),
(67, './assets/Asia/Seoul/images/seoul4.webp', 'Vista del ponte che permette di arrivare a Seoul.', 0, 11),
(68, './assets/Asia/Seoul/images/seoul5.webp', 'Strada principale di Seoul molto trafficata.', 0, 11),
(69, './assets/Asia/Tokyo/images/cover.webp', 'Vista panoramica della città di Tokyo con Sky Tree e monte Fuji sullo sfondo.', 1, 12),
(70, './assets/Asia/Tokyo/images/tokyo2.webp', 'Scorcio dei palazzi illuminati di sera in centro a Tokyo.', 0, 12),
(71, './assets/Asia/Tokyo/images/tokyo3.webp', 'Vista di Tokyo dall\'alto, si vedono il monte Fuji e numerosi grattacieli moderni.', 0, 12),
(72, './assets/Asia/Tokyo/images/tokyo4.webp', 'Vista della Tokyo più antica.', 0, 10),
(73, './assets/Asia/Tokyo/images/tokyo5.webp', 'Vista di un palazzo giapponese antico che si erge tra i giardini in fiore di Tokyo.', 0, 12),
(74, './assets/Europa/Bruxelles/images/cover.webp', 'Gran Place nelle ore notturne.', 1, 13),
(75, './assets/Europa/Bruxelles/images/bruxelles_1.webp', 'La maestosa Gran Place con i suoi lussuosi edifici e il cielo colorato dal tramonto.', 0, 13),
(76, './assets/Europa/Bruxelles/images/bruxelles_2.webp', 'La Gran Place illuminata.', 0, 13),
(77, './assets/Europa/Bruxelles/images/bruxelles_3.webp', 'La Grand Place decorata dal grande tappeto di fiori che la occupa periodicamente ogni due anni.', 0, 13),
(78, './assets/Europa/Bruxelles/images/bruxelles_4.webp', 'Parco del Cinquantenario con il famoso Arco.', 0, 13),
(79, './assets/Europa/Bruxelles/images/bruxelles_5.webp', 'Scalinata del palazzo di giustizia.', 0, 13),
(80, './assets/Europa/Bruxelles/images/bruxelles_6.webp', 'Lussuosi palazzi della Grand Place con facciate decorate con dettagli dorati.', 0, 13),
(81, './assets/Europa/Bruxelles/images/bruxelles_7.webp', 'Municipio di Bruxelles.', 0, 13),
(82, './assets/Europa/Ibiza/images/cover.webp', 'Dalt Vila, la città vecchia di Ibiza situata in collina. In primo piano vi è il porto e i diversi yatch e barche vele ormeggiati.', 1, 14),
(83, './assets/Europa/Ibiza/images/ibiza_1.webp', 'In primo piano un piccolo yatch e  3 barche a vele in un acqua cristallina di una giornata di sole e di sfondo l\'isola che fronteggia Ibiza. Le foglie due palme fanno da cornice all\'immagine.', 0, 14),
(84, './assets/Europa/Ibiza/images/ibiza_2.webp', 'L\'acqua cristallina di Ibiza di una giornata di sole con diverse barche a vela ormeggiate a largo e di sfondo l\'isola che fronteggia Ibiza.', 0, 14),
(85, './assets/Europa/Ibiza/images/ibiza_3.webp', 'Sulla sinistra una spiaggia di sabbia dorata con ombrelloni e lettini e scogli su una parte della riva. L\'acqua è cristallina in una giornata di sole. ', 0, 14),
(86, './assets/Europa/Nizza/images/cover.webp', 'Piccolo porto di nizza in cui sono ormeggiate diverse barche e yatch. Vista della città dall\'alto.', 1, 15),
(87, './assets/Europa/Nizza/images/nizza_1.webp', 'Spiaggia cristallina, si nota la grande edificazione della cittadina in riva al mare. La spiaggia è sabbiosa, lunga e stretta.', 0, 15),
(88, './assets/Europa/Nizza/images/nizza_2.webp', 'Porto di Nizza, ci sono molti yatch e barche turistiche. Si nota la presenza collinare su cui Nizza è in parte costruita.', 0, 15),
(89, './assets/Europa/Nizza/images/nizza_3.webp', 'Viale in riva al mare con palme. Spiaggia sabbiosa lunga e stretta.', 0, 15),
(90, './assets/Europa/Parigi/images/cover.webp', 'Vista della Torre Eiffel da lontano, si nota la il verde attorno tra alberi e piazze. In primo piano una fontana riflette la torre.', 1, 16),
(91, './assets/Europa/Parigi/images/parigi_1.webp', 'Champs Elysées, vista monumentale dal basso in una giornata di sole.', 0, 16),
(92, './assets/Europa/Parigi/images/parigi_2.webp', 'Ponte di Alessandro III sopra al Senna, si notano i tipici lampioni storici che lo illuminano di notte. ', 0, 16),
(93, './assets/Europa/Parigi/images/parigi_3.webp', 'Piramide del museo del Louvre illuminato di notte. Si intravede l\'entrata principale del museo.', 0, 16),
(94, './assets/Europa/Parigi/images/parigi_4.webp', 'Vista dall\'alto di Champs Elysées, si nota che dalla piazza partono tutte le strade principali di Parigi, rendendolo almeno visivamente il centro storico.', 0, 16),
(95, './assets/Europa/Parigi/images/parigi_5.webp', 'Cattedrale di Notre Dame in una giornata di sole mentre in piazza ci sono tanti turisti.', 0, 16),
(96, './assets/NordAmerica/chicago-illinois/images/cover.webp', 'Il mare bagna la piccola porzione di spiaggia della città, sullo sfondo i grattacieli della metropoli.', 1, 17),
(97, './assets/NordAmerica/chicago-illinois/images/chicago1.webp', 'Il fiume Chicago attraversa la città e inerseca le sue strade e grattacieli.', 0, 17),
(98, './assets/NordAmerica/chicago-illinois/images/chicago2.webp', 'Il Cloud Gate contornato da alberi con le foglie colorate di rosso.', 0, 17),
(99, './assets/NordAmerica/chicago-illinois/images/chicago3.webp', 'Entrata esterna del famoso Chicago Theatre sulla State St.', 0, 17),
(101, './assets/NordAmerica/chicago-illinois/images/chicago4.webp', 'Foto notturna dal mare della città illuminata.', 0, 17),
(102, './assets/NordAmerica/chicago-illinois/images/chicago5.webp', 'Visuale dall\'alto della città con i caratteristici grattacieli, sullo sfondo si vede il mare.', 0, 17),
(103, './assets/NordAmerica/losAngeles-california/images/cover.webp', 'Primo piano della caratteristica scritta hollywood sulle colline di Los Angeles.', 1, 18),
(104, './assets/NordAmerica/losAngeles-california/images/losAngeles1.webp', 'Vista da distante della caratteristica scritta hollywood sulle colline di Los Angeles.', 0, 18),
(105, './assets/NordAmerica/losAngeles-california/images/losAngeles2.webp', 'Panoramica della città vista dalla cima della collina con la scritta hollywood.', 0, 18),
(106, './assets/NordAmerica/losAngeles-california/images/losAngeles3.webp', 'Alcuni grattacieli di Los Angeles.', 0, 18),
(107, './assets/NordAmerica/losAngeles-california/images/losAngeles4.webp', 'Panoramica della città di notte.', 0, 18),
(108, './assets/NordAmerica/losAngeles-california/images/losAngeles5.webp', 'Panoramica della città.', 0, 18),
(109, './assets/NordAmerica/losAngeles-california/images/losAngeles6.webp', 'Panoramica della città al tramonto con alcune palme controluce in primo piano.', 0, 18),
(110, './assets/NordAmerica/newYork/images/cover.webp', 'Panorama di New York, al centro l\'empire state building circondato dagli elevati edifici che caratterizzano la città.', 1, 19),
(111, './assets/NordAmerica/newYork/images/newYork1.webp', 'Strada di New York inquadrata in mezzo ad elevati edifici.', 0, 19),
(112, './assets/NordAmerica/newYork/images/newYork2.webp', 'Vista da brooklyn sul ponte di Manhattan.', 0, 19),
(113, './assets/NordAmerica/newYork/images/newYork3.webp', 'Vista sull\'isola di Manhattan.', 0, 19),
(114, './assets/NordAmerica/newYork/images/newYork4.webp', 'Vista dall\'alto di Times Square con i caratteristici pannelli pubblicitari.', 0, 19),
(115, './assets/NordAmerica/newYork/images/newYork5.webp', 'La statua della Libertà.', 0, 19),
(116, './assets/NordAmerica/newYork/images/newYork6.webp', 'Flatiron building', 0, 19),
(117, './assets/NordAmerica/vancouver-britishColumbia/images/cover.webp', 'Il porto di Vancouver seguito da imponenti palazzi.', 1, 20),
(118, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver1.webp', 'Vista aerea della città, risaltano gli alti grattacieli, il mare ed il fiume che. ', 0, 20),
(119, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver2.webp', 'Foto del porto seguito dai molteplici grattacieli che popolano la città.', 0, 20),
(120, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver3.webp', 'Panorama aereo di Vancouver divisa dal fiume che la attraversa.', 0, 20),
(121, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver4.webp', 'Punto di vista acquatico, si vedono alcuni yacht in primo piano seguii da grattacieli.', 0, 20),
(122, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver5.webp', 'Alcuni grattacieli di Vancouver.', 0, 20),
(123, './assets/NordAmerica/vancouver-britishColumbia/images/vancouver6.webp', 'Panorama del porto seguito dalla città in secondo piano.', 0, 20),
(124, './assets/Oceania/Auckland/images/cover.webp', 'Porto principale di Auckland con i moli e le barche in primo piano. Sullo sfondo moderni grattacieli con vetrate illuminati dalla luce del tramonto.', 1, 21),
(125, './assets/Oceania/Auckland/images/auck1.webp', 'Vista della città e dei suoi grattacieli dall\'alto alla luce calda del tramonto, sullo sfondo il mare.', 0, 21),
(126, './assets/Oceania/Auckland/images/auck2.webp', 'Canale di Auckland con edifici e grattacieli.', 0, 21),
(127, './assets/Oceania/Auckland/images/auck3.webp', 'Parte del molo di Auckland al tramonto, lussuosi edifici sulla costa sono illuminati con luci al neon colorate.', 0, 21),
(128, './assets/Oceania/BoraBora/images/cover.webp', 'Vista panoramica delle spiaggie e della montagna di Bora Bora.', 1, 22),
(129, './assets/Oceania/BoraBora/images/bora1.webp', 'Vista delle spiagge di Bora Bora.', 0, 22),
(130, './assets/Oceania/BoraBora/images/bora2.webp', 'Due ragazzi che nuotano nelle acque limpide del mare di Bora Bora.', 0, 22),
(131, './assets/Oceania/BoraBora/images/bora4.webp', 'Vista dall\'alto di Bora Bora.', 0, 22),
(132, './assets/Oceania/Fiji/images/cover.webp', 'Vista delle fiji dall\'alto.', 1, 23),
(133, './assets/Oceania/Fiji/images/fiji1.webp', 'Vista di una delle spiagge delle isole Fiji.', 0, 23),
(134, './assets/Oceania/Fiji/images/fiji2.webp', 'Vista dall\'alto delle isole Fiji.', 0, 23),
(135, './assets/Oceania/Fiji/images/fiji3.webp', 'Vista di una delle spiagge dell\'isola, ci sono delle barche che navigano in mare.', 0, 23),
(136, './assets/Oceania/Fiji/images/fiji4.webp', 'Animatori che ballano in abiti tipici.', 0, 23),
(137, './assets/Oceania/Fiji/images/fiji5.webp', 'Uno dei resort presenti sull\'isola.', 0, 23),
(138, './assets/Oceania/Sydney/images/cover.webp', 'Vista del porto di Sydney al tramonto, si scorge il ponte che porta alla città e la città stessa sullo sfondo.', 1, 24),
(139, './assets/Oceania/Sydney/images/sydeny.webp', 'Museo di Sydney.', 0, 24),
(140, './assets/Oceania/Sydney/images/sydeny2.webp', 'Ponte di Sydney che porta alla città.', 0, 24),
(141, './assets/Oceania/Sydney/images/sydeny4.webp', 'Vista di Sydney e del ponte che porta ad essa.', 0, 24),
(142, './assets/Oceania/Sydney/images/sydeny5.webp', 'Una delle strade dello shopping in centro città.', 0, 24);

-- --------------------------------------------------------

--
-- Struttura della tabella `image_hotel`
--

CREATE TABLE `image_hotel` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `alt` varchar(300) NOT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 0,
  `hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `image_hotel`
--

INSERT INTO `image_hotel` (`id`, `path`, `alt`, `is_cover`, `hotel`) VALUES
(1, './assets/Africa/capeTown-southAfrica/hotel/images/cover.webp', 'Visuale dell\'sterno dell\'hotel, l\'edificio è bianco a 8 piani, area esterna con piccola piscina, area sdraio e palme. Sullo sfondo la montagna.', 1, 1),
(2, './assets/Africa/capeTown-southAfrica/hotel/images/bedroom1.webp', 'Interno di una camera da letto matrimoniale, l\'arredamento è contemporaneo e curato, alla sinistra del letto un\'ampia finestra illumina la stanza e offre la vista che da sul mare. Di frote al letto una cassettiera con sopra la televisione appesa al muro.', 0, 1),
(3, './assets/Africa/capeTown-southAfrica/hotel/images/bedroom2.webp', 'Salottino della camera da letto in stanza comunicante provvisto di grande vetrata, un divano, una poltrona con al centro un tavolino da caffè posizionati sopra ad un tappeto. Sulla parete la tv con sotto un mobile. È presente una scrivania appoggiata alla parete un tavolo rotondo di vetro con sedie.', 0, 1),
(4, './assets/Africa/capeTown-southAfrica/hotel/images/breakfast1.webp', 'Esempio di colazione inglese offerta dall\'hotel.Il tavolo posto nei pressi della piscina esterna mostra una alzatina con numerosi pasticcini di ogni varietà, tazze di te e calici di succo di frutta.', 0, 1),
(5, './assets/Africa/capeTown-southAfrica/hotel/images/external1.webp', 'Esterno dell\'hotel con piscina a sfioro, zona straio con ombrelloni.', 0, 1),
(6, './assets/Africa/capeTown-southAfrica/hotel/images/restaurant1.webp', 'Terrazza ristorante con vista mare, due ospiti dell\'albergo brindano seduti a tavola.', 0, 1),
(7, './assets/Africa/mwanza-tanzania/hotel/images/cover.webp', 'Esterno dell\'hotel, giardino con ristorante con vista sul lago e l\'altra sponda del golfo. Alcuni tavoli sono coperti da gazebo.', 1, 2),
(8, './assets/Africa/mwanza-tanzania/hotel/images/bedroom1.webp', 'Stanza con due letti singoli provvisti di zanzariere separati da un comodino, due tavolini, una sedia in legno e una lampada. Stanza luminosa. 2 cuscini per letto.', 0, 2),
(9, './assets/Africa/mwanza-tanzania/hotel/images/bedroom2.webp', 'Stanza con due letti singoli a baldacchino separati da un comodino con zanzariera, 2 cuscini per letto. 1 comodino per letto, piccola lampada tra i due letti.', 0, 2),
(10, './assets/Africa/mwanza-tanzania/hotel/images/bedroom3.webp', 'Stanza con letto matrimoniale a baldacchino con zanzariera, due comodini con piccole lampade ai lati del letto. Ventilatore a soffitto.', 0, 2),
(11, './assets/Africa/mwanza-tanzania/hotel/images/external1.webp', 'Piscina dell\'hotel circondata da alcuni tavoli coperti da gazebo e piante ornamentali. L\'acqua è limpida.', 0, 2),
(12, './assets/Africa/mwanza-tanzania/hotel/images/external2.webp', 'Un\'altra piscina dell\'hotel con area bar al coperto, l\'acqua è limpida.', 0, 2),
(13, './assets/Africa/mwanza-tanzania/hotel/images/external3.webp', 'Vista dall\'alto dell\'hotel. La struttura con vista lago risulta immersa nella natura.', 0, 2),
(14, './assets/Africa/sharmElSheikh-egitto/hotel/images/cover.webp', 'Piazza con palme e fontane antistante l\'ingresso del resort costituito da un grande arco a tutto sesto.', 1, 3),
(15, './assets/Africa/sharmElSheikh-egitto/hotel/images/bedroom1.webp', 'Camera matrimoniale ben illuminata con portafinestra con vista sulla piscina. Si vedono 1 poltrona, 1 sedia ed 1 scrivania. C\'è uno spazio esterno appartenente alla camera.', 0, 3),
(16, './assets/Africa/sharmElSheikh-egitto/hotel/images/bedroom2.webp', 'Camera con 2 letti singoli separati da un comodino, 2 cuscini per letto. È presente 1 tv, 1 scrivania con sedia ed una portafinestra che consente di accedere al terrazzo.', 0, 3),
(17, './assets/Africa/sharmElSheikh-egitto/hotel/images/lounge1.webp', 'Lounge dell\'hotel piena di posti a sedere per mezzo di sedie poltrone o divanetti. È presente un\'area bar e ci sono dei tavolini.', 0, 3),
(18, './assets/Africa/sharmElSheikh-egitto/hotel/images/resort1.webp', 'Vista del resort sulla piazza d\'ingresso, ricca di palme e decorata con alcune fontane a pavimento.', 0, 3),
(19, './assets/Africa/sharmElSheikh-egitto/hotel/images/resort2.webp', 'Una piscina del resort, circondata da sdraio in legno ed ombrelloni con alcune isolette artificiali al suo interno accessibili tramite ponti. Acqua limpida.', 0, 3),
(20, './assets/Africa/sharmElSheikh-egitto/hotel/images/resort3.webp', 'Letti a baldacchino usati come area di relax sulla spiaggia. ', 0, 3),
(21, './assets/Africa/sharmElSheikh-egitto/hotel/images/restaurant1.webp', 'Tavolo del ristorante con vista sulla piscina. Poltrone in vimini e tavolo in vetro.', 0, 3),
(22, './assets/Africa/sharmElSheikh-egitto/hotel/images/restaurant2.webp', 'Ristorante interno ci si può sedere su sedie in vimini, poltroncine oppure divanetti. Area ben illuminata.', 0, 3),
(23, './assets/Africa/sharmElSheikh-egitto/hotel/images/spa1.webp', 'Ingresso della spa, si nota la cassa con davanti un tavolino con posti a sedere, una caraffa di acqua e limone ed alcuni bicchieri.', 0, 3),
(24, './assets/Africa/windhoek-namibia/hotel/images/cover.webp', 'Ingresso del resort con posto di blocco.', 1, 4),
(25, './assets/Africa/windhoek-namibia/hotel/images/bedroom1.webp', 'Camera matrimoniale con due comodini ai lati del letto, due cuscini a testa, un condizionatore che punta sul letto.', 0, 4),
(26, './assets/Africa/windhoek-namibia/hotel/images/bedroom2.webp', 'Camera con due letti singoli separati da un comodino, sono presenti due cuscini per letto.', 0, 4),
(27, './assets/Africa/windhoek-namibia/hotel/images/dining1.webp', 'Sala con due divani e due poltrone di vimini posti attorno a dun tavolino di legno.', 0, 4),
(28, './assets/Africa/windhoek-namibia/hotel/images/external1.webp', 'Una piccola piscina posta all\'interno di un giardino, l\'acqua è limpida.', 0, 4),
(29, './assets/Africa/windhoek-namibia/hotel/images/external2.webp', 'Grande piscina attraversata da un ponte che conduce ad una piscina sopraelevata con idromassaggio. L\'area è ricca di piante.', 0, 4),
(30, './assets/Africa/windhoek-namibia/hotel/images/external3.webp', 'Vista dall\'alto della piscina grande, ci sono sdraio con cuscini ed ombrelloni.', 0, 4),
(31, './assets/Africa/windhoek-namibia/hotel/images/kitchen1.webp', 'Cucina con microonde, bollitore, forno, frigorifero e cappa anti odori. È presente un tavolo da pranzo in legno ed un tavolo in legno con panche all\'esterno.', 0, 4),
(32, './assets/Africa/windhoek-namibia/hotel/images/reception.webp', 'Reception ordinata con una caraffa di succo e alcuni bicchieri e dei fiori alle estremità del bancone.', 0, 4),
(33, './assets/America_del_Sud/Aruba/hotel/images/cover.webp', 'Struttura dell\'hotel visto dall\'alto, situato in riva al mare è composto da tre edifici a 10 piani posti a ferro di cavallo, in mezzo ai quali si trova l\'ampia piscina e il giardino.', 1, 5),
(34, './assets/America_del_Sud/Aruba/hotel/images/biliardo.webp', 'Sala con tavolo da biliardo.', 0, 5),
(35, './assets/America_del_Sud/Aruba/hotel/images/external_1.webp', 'Visuale dall\'alto dell\'esterno dell\'hotel, si nota uno dei tre edifici, la piscina, la spiaggia subito vicina e il mare.', 0, 5),
(36, './assets/America_del_Sud/Aruba/hotel/images/food.webp', 'Sala ristorante con buffet allestito.', 0, 5),
(37, './assets/America_del_Sud/Aruba/hotel/images/hall.webp', 'Lussuosa hall dell\'hotel con pavimenti e colonne di marmo, al centro un tavolo con un vaso di fiori sopra.', 0, 5),
(38, './assets/America_del_Sud/Aruba/hotel/images/internal_1.webp', 'Una delle stanze dell\'hotel con due letti singoli vicini, comò con tv di fronte al letto, di fianco il salottino con divanetto e poltrone. Un\'ampia portafinestra da accesso al  terrazino provvisto di stradio.', 0, 5),
(39, './assets/America_del_Sud/Aruba/hotel/images/internal_2.webp', 'Camera matrimoniale con ampio letto, zona salottino adiacente separata da un basso muretto e due gradini con divanetto e comò. Terrazino esterno.', 0, 5),
(40, './assets/America_del_Sud/Aruba/hotel/images/pool.webp', 'Grande piscina esterna dell\'hotel.', 0, 5),
(41, './assets/America_del_Sud/Buenos Aires/hotel/images/cover.webp', 'Piscina sopra il tetto dell\'hotel con 3 sdrai e delle piccole piantine a bordo piscina.', 1, 6),
(42, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_1.webp', 'Buffet della colazione.', 0, 6),
(43, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_2.webp', 'Entrata dell\'hotel, con gradini posti prima della porta principale con corrimano sui muri e due piantine all\'altezza del primo gradino.', 0, 6),
(44, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_3.webp', 'Salotto principale dell\'hotel con diversi tavoli e sedie cubiche e piccoli divanetti tutti bianchi con dettagli rossi.', 0, 6),
(45, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_4.webp', 'Salotto dell\'hotel provvisto di tavoli e sedie cubiche e piccoli divanetti tutti bianchi.', 0, 6),
(46, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_5.webp', 'Hall dell\'hotel con tavoli, poltrone e divanetti.', 0, 6),
(47, './assets/America_del_Sud/Buenos Aires/hotel/images/nh_6.webp', 'Piscina dell\'hotel disposta sul tetto dell\'hotel.', 0, 6),
(48, './assets/America_del_Sud/Galápagos/hotel/images/cover.webp', 'Camera d\'hotel con un piccolo tavolo e due comodini ai bordi del letto con delle lampade poste sopra.', 1, 7),
(49, './assets/America_del_Sud/Galápagos/hotel/images/external_1.webp', 'Terrazzo dell\'hotel vista mare con due poltrone.', 0, 7),
(50, './assets/America_del_Sud/Galápagos/hotel/images/external_2.webp', 'Bar esterno dell\'hotel con tavoli e sedie in legno', 0, 7),
(51, './assets/America_del_Sud/Galápagos/hotel/images/internal_1.webp', 'Bagno di una camera dell\'hotel.', 0, 7),
(52, './assets/America_del_Sud/Galápagos/hotel/images/internal_3.webp', 'Camera matrimoniale dell\'hotel con due comodini con delle lampade sopra posti ai bordi del letto e un piccolo tavolino.', 0, 7),
(53, './assets/America_del_Sud/Galápagos/hotel/images/internal_4.webp', 'Bagno di una camera dell\'hotel con doccia in vetro e una jacuzzi raggiungibile percorrendo due gradini.', 0, 7),
(54, './assets/America_del_Sud/Galápagos/hotel/images/pool.webp', 'Piscina esterna dell\'hotel a forma circolare, non sono presenti lettini.', 0, 7),
(55, './assets/America_del_Sud/Patagonia/hotel/images/cover.webp', 'Entrata dell\'hotel, la porta è raggiungibile sia da degli scalini che da una rampa.', 1, 8),
(56, './assets/America_del_Sud/Patagonia/hotel/images/external_1.webp', 'Vista dal basso della facciata dell\'hotel, si nota l\'elevata presenza di verde tra alberi e cespugli davanti.', 0, 8),
(57, './assets/America_del_Sud/Patagonia/hotel/images/external_2.webp', 'Vista della facciata dell\'hotel.', 0, 8),
(58, './assets/America_del_Sud/Patagonia/hotel/images/internal_1.webp', 'Camera matrimoniale con due comodini, un piccolo tavolino circolare con due sedie e una scrivania con una sedia e una TV.', 0, 8),
(59, './assets/America_del_Sud/Patagonia/hotel/images/internal_2.webp', 'Parte di una camera d\'hotel con la zona salotto della camera, con due poltrone e un divanetto in primo piano.', 0, 8),
(60, './assets/America_del_Sud/Patagonia/hotel/images/internal_3.webp', 'Bagno di una camera d\'hotelcon una vasca che fornisce la possibilitò di usarla come doccia.', 0, 8),
(61, './assets/America_del_Sud/Patagonia/hotel/images/internal_4.webp', 'Camera matrimoniale dell\'hotel con due comodini e un letto singolo in aggiunta, un piccolo tavolino circolare con due sedie e una scivania con una sedia.', 0, 8),
(62, './assets/Asia/Bali/hotel/images/cover.webp', 'Grande piscina lussuosa all\'esterno dell\'hotel, alcune aiuole con palme si trovano nell\'acqua ai bordi della piscina. Il bordovasca è attrezzato con numerosi lettini a sdraio. La piscina e le stanze dell\'hotel, fotografate nelle ore crepuscolari risaltano illuminato da calde luci.', 1, 9),
(63, './assets/Asia/Bali/hotel/images/bedroom1.webp', 'Interno di una camera dell\'hotel, ampio spazio per gli ospiti, letto matrimoniale con panca ai piedi, mobile e tv appesa alla parete di fronte, a sinistra del letto, verso la finestra, divanetto con tavolino da caffè e una scrivania con sedia. Portafinestra da su un terrazzino con vista mare.', 0, 9),
(64, './assets/Asia/Bali/hotel/images/bedroom2.webp', 'Zona ristorante dell\'hotel arredata in stile contemporaneo con allestimenti il legno scuro, tavoli con divanetti e sedie si trovano al centro della stanza. Una grande finestra sul soffitto fa entrare la luce che illumina l\'ambiente. Si intravede il bancone del bar nella sala adiacente.', 0, 9),
(65, './assets/Asia/Bali/hotel/images/external1.webp', 'Esterno dell\'hotel e della sua struttura, l\'edificio si trova sulla costa rialzata e il panorama circostante è mozzafiato. Si vede il mare che bagna la spiaggia stretta e l\'altopiano circostante costellato di palme verdi e cespugli.', 0, 9),
(66, './assets/Asia/Bali/hotel/images/external2.webp', 'Esterno della lussuosa suite dell\'hotel situata nella piscina a sfioro.', 0, 9),
(67, './assets/Asia/Bali/hotel/images/external3.webp', 'Visuale dall\'alto dell\'hotel e della sua struttura a ferro di cavallo in cui sono disposti gli edifici contenti le stanze e la piscina disposta al centro.', 0, 9),
(68, './assets/Asia/HongKong/hotel/images/cover.webp', 'Hotel visto dall\'esterno, precisamente una foto scattata dal mare.', 1, 10),
(69, './assets/Asia/HongKong/hotel/images/bedroom1.webp', 'Soggiorno dallo stile moderno dove si possono individuare un divano e quattro pltrone e due tavolini posti centralmente.', 0, 10),
(70, './assets/Asia/HongKong/hotel/images/bedroom2.webp', 'Camera con vita su un palazzo, si notano dei divanetti, un tavolino e un tavolo da pranzo.', 0, 10),
(71, './assets/Asia/HongKong/hotel/images/bedroom3.webp', 'Camera da letto con vista sulla città di Hong Kong, dallo stile moderno.', 0, 10),
(72, './assets/Asia/HongKong/hotel/images/external1.webp', 'Area relax dell\'hotel, dove viene rappresentata una piscina e dei lettini.', 0, 10),
(73, './assets/Asia/HongKong/hotel/images/external2.webp', 'Parcheggio dell\'hotel.', 0, 10),
(74, './assets/Asia/HongKong/hotel/images/external3.webp', 'Vista esterna dell\'hotel, scattata dal mare.', 0, 10),
(75, './assets/Asia/Seoul/hotel/images/cover.webp', 'Esterno dell\'hotel in centro a Seoul.', 1, 11),
(76, './assets/Asia/Seoul/hotel/images/bar.webp', 'Bar dell\'hotel.', 0, 11),
(77, './assets/Asia/Seoul/hotel/images/bedroom1.webp', 'Camera dal letto doppia con vista su Seoul.', 0, 11),
(78, './assets/Asia/Seoul/hotel/images/external1.webp', 'Vista dell\'Hotel al tramonto dall\'esterno.', 0, 11),
(79, './assets/Asia/Seoul/hotel/images/external2.webp', 'Esterno dell\'hotel.', 0, 11),
(80, './assets/Asia/Seoul/hotel/images/external3.webp', 'Vista dell\'esterno dell\'hotel.', 0, 11),
(81, './assets/Asia/Seoul/hotel/images/reception.webp', 'Reception dell\'hotel.', 0, 11),
(82, './assets/Asia/Tokyo/hotel/images/cover.webp', 'Esterno dell\'hotel.', 1, 12),
(83, './assets/Asia/Tokyo/hotel/images/bar.webp', 'Bar dell\'hotel.', 0, 12),
(84, './assets/Asia/Tokyo/hotel/images/bedroom2.webp', 'Camera da letto doppia.', 0, 12),
(85, './assets/Asia/Tokyo/hotel/images/bedroom3.webp', 'Camera da letto con due letti singoli.', 0, 12),
(86, './assets/Asia/Tokyo/hotel/images/external1.webp', 'Esterno dell\'hotel illuminato di sera.', 0, 12),
(87, './assets/Asia/Tokyo/hotel/images/external2.webp', 'Parcheggio dell\'hotel.', 0, 12),
(88, './assets/Asia/Tokyo/hotel/images/external3.webp', 'Reception dell\'hotel.', 0, 12),
(89, './assets/Europa/Bruxelles/hotel/images/cover.webp', 'Ingresso dell\'hotel Hilton visto dall\'esterno con porta di vetro girevole.', 1, 13),
(90, './assets/Europa/Bruxelles/hotel/images/food.webp', 'Buffet della colazione.', 0, 13),
(91, './assets/Europa/Bruxelles/hotel/images/internal_1.webp', 'Una delle camere matrimoniali dell\'hotel, due finestre illuminano la stanza. Ai lati del letto i due comodini e ai suoi piedi la panca.', 0, 13),
(92, './assets/Europa/Bruxelles/hotel/images/internal_3.webp', 'Una delle camere doppie dell\'albergo con letto matrimoniale. Nella stanza adiscente il bagno.', 0, 13),
(93, './assets/Europa/Bruxelles/hotel/images/internal_4.webp', 'Bagno della camera, pavimenti, ripiano e muri in  marmo, ampio specchio sopra il lavabo e vasca da bagno.', 0, 13),
(94, './assets/Europa/Bruxelles/hotel/images/kitchen.webp', 'Sala ristornate dell\'albergo arredata sui toni del nero e del legno. Numerosi tavoli sono disposti nella stanza.', 0, 13),
(95, './assets/Europa/Ibiza/hotel/images/cover.webp', 'In primo piano una vasca di lusso bianca al centro della stanza avvolta da pannelli di legno su 3 lati. La stanza presenta sia sulla destra che sulla sinistra una scrivania con sedia e specchio uguali simmetrici.', 1, 14),
(96, './assets/Europa/Ibiza/hotel/images/external.webp', 'Salotto esterno coperto con un apertura vista mare. In questo salotto con pavimento di parquet vi è un tavolino di legno scuro con una sedia e un divanetto con un piccolo tavolo in legno chiaro. Vi è uno sdraio vista mare raggiungibile percorrendo 3 scalini. ', 0, 14),
(97, './assets/Europa/Ibiza/hotel/images/internal.webp', 'Stanza con letto matrimoniale vista mare tramite una vetrata a muro con tenda richiudibile. Pavimento bianco con un tappeto che lo copre per la maggior parte e una sedia con cuscini di tessuto bianchi e un piccolo poggia gambe movibile. ', 0, 14),
(98, './assets/Europa/Ibiza/hotel/images/pool.webp', 'Grande piscina caratteristica per la sua forma ondeggiante a differenza della classica forma rettangolare. Sono presenti diversi ombrelloni e sdrai e in aggiunta una decina di casette aperte per coprirsi dal sole.', 0, 14),
(99, './assets/Europa/Nizza/hotel/images/cover.webp', 'Lussuosa facciata esterna con l\'ingresso principale dell\'edificio.', 1, 15),
(100, './assets/Europa/Nizza/hotel/images/external_1.webp', 'Terrazza vista mare di una camera d\'hotel con tavolino e due sedie.', 0, 15),
(101, './assets/Europa/Nizza/hotel/images/hall.webp', 'Hall lussuosa dell\'hotel con al centro un tavolo in cui vi sono diversi vasi di fiori.', 0, 15),
(102, './assets/Europa/Nizza/hotel/images/hotel.webp', 'Vista strada dell\'hotel in riva al mare. Si nota l\'evelata illuminazione dell\'hotel nelle ore notturne.', 0, 15),
(103, './assets/Europa/Nizza/hotel/images/internal_1.webp', 'Camera d\'hotel di lusso, con letto matrimoniale, tre poltrone disposte per la camera, un piccolo tavolino con un vaso di fiori e una panca imbottita ai piedi del letto.', 0, 15),
(104, './assets/Europa/Nizza/hotel/images/internal_2.webp', 'Bagno della camera dell\'hotel con una piccola vasca in marmo e piano in marmo con due lavandini e un vaso in vetro di fiori, phon per capelli al muro.', 0, 15),
(105, './assets/Europa/Parigi/hotel/images/cover.webp', 'Entrata dell\'hotel Saint Charles, la porta d\'entrata è automatica e scorrevole.', 1, 16),
(106, './assets/Europa/Parigi/hotel/images/external_1.webp', 'Vista di una camera dell\'hotel della città, con terrazzino.', 0, 16),
(107, './assets/Europa/Parigi/hotel/images/external_2.webp', 'Entrata dell\'hotel Saint Charles, non sono presenti gradini ed è presente uno scorrimano.', 0, 16),
(108, './assets/Europa/Parigi/hotel/images/internal_1.webp', 'Camera matrimoniale dell\'hotel, non ci sono tappeti, c\'è una piccola scrivania con sedia.', 0, 16),
(109, './assets/Europa/Parigi/hotel/images/internal_2.webp', 'Camera d\'hotel del Saint Charles, con una poltrona in un angolo della stanza, e due comodini a fianco al letto. Non ci sono tappeti ed è presente un solo quadro sul muro alla testa del letto raffigurante la torre Eiffel.', 0, 16),
(110, './assets/Europa/Parigi/hotel/images/meeting_room.webp', 'Salotto accessibile a gli ospiti dell\'hotel dove riposarsi o fare uno spuntino. Nella stanza sono presenti tanti oggetti tra sedie, tavoli, divani e poltrone.', 0, 16),
(111, './assets/NordAmerica/chicago-illinois/hotel/images/cover.webp', 'Berkshire Room, uno dei più famosi cocktail bar di Chicago.', 1, 17),
(112, './assets/NordAmerica/chicago-illinois/hotel/images/bedroom1.webp', 'Camera doppia con 2 spaziosi letti singoli, tra i sue letti un comodino con lampada. Due sedie e un piccolo tavolino si trovano a ridosso della parete in fondo alla stanza.', 0, 17),
(113, './assets/NordAmerica/chicago-illinois/hotel/images/gym1.webp', 'Paletra dell\'hotel con macchinari e sacco da boxe.', 0, 17),
(114, './assets/NordAmerica/chicago-illinois/hotel/images/lounge1.webp', 'Lounge dell\'hotel con bancone bar e divanetti.', 0, 17),
(115, './assets/NordAmerica/chicago-illinois/hotel/images/reception1.webp', 'Reception dell\'hotel con moderno graffito alla parete.', 0, 17),
(116, './assets/NordAmerica/chicago-illinois/hotel/images/toilet1.webp', 'Bagno dei una delle camere dell\'hotel con largo specchio sulla parete e vasca da bagno.', 0, 17),
(117, './assets/NordAmerica/losAngeles-california/hotel/images/cover.webp', 'Ingresso dell\'Hotel che presenta delle tende arrotolate alle estremità.', 1, 18),
(118, './assets/NordAmerica/losAngeles-california/hotel/images/bedroom1.webp', 'Camera da letto matrimoniale ben illuminata con due cuscini a testa. È presente un frigo bar ed una macchina per il caffè, una poltrona ed un poggiapiedi di fronte al letto.', 0, 18),
(119, './assets/NordAmerica/losAngeles-california/hotel/images/reception.webp', 'Reception dell\'Hotel, design lussuoso con piante ornamentali alle estremità ed un alto vaso nel mezzo.', 0, 18),
(120, './assets/NordAmerica/losAngeles-california/hotel/images/toilet1.webp', 'Bagno di una stanza, campioncini di detergenti gratuiti, asciugamani forniti. C\'è uno specchio. Davanti al wc c\'è la doccia, è presente una finestra.', 0, 18),
(121, './assets/NordAmerica/newYork/hotel/images/cover.webp', 'Ingresso del pod hotel.', 1, 19),
(122, './assets/NordAmerica/newYork/hotel/images/bedroom1.webp', 'Camera matrimoniale con 2 cuscini a testa, è presente una tv di fronte al letto. Di fianco ad esso una scrivania con una sedia. Moquette al pavimento.', 0, 19),
(123, './assets/NordAmerica/newYork/hotel/images/bedroom2.webp', 'Camera singola con 2 cuscini, sotto il letto spazio per la valigia. Sono presenti una finestra e un TV di fronte al letto. Di fronte all\'altra porzione di finestra una scrivania con sedia e cestino.', 0, 19),
(124, './assets/NordAmerica/newYork/hotel/images/external1.webp', 'Tetto dell\'hotel con vista sulla città. Sono presenti delle sedie in metallo. Erba sintetica al pavimento.', 0, 19),
(125, './assets/NordAmerica/newYork/hotel/images/reception1.webp', 'Reception dell\'hotel, area ben illuminata.', 0, 19),
(126, './assets/NordAmerica/newYork/hotel/images/toilet1.webp', 'Bagno dell\'hotel ben illuminato e pulito. Ci sono gli asciugamani e bottigliette di detergenti. Un gradino separa il pavimento della doccia e del bagno.', 0, 19),
(127, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/cover.webp', 'Ingresso dell\'hotel.', 1, 20),
(128, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/bar1.webp', 'Il bar dell\'hotel con una ricca selezione di alcolici, è provvista di bancone e alte sedie, ci sono tavolini e sedie per sedersi.', 0, 20),
(129, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/bedroom1.webp', 'Camera matrimoniale ben illuminata con due cuscini a testa, un comodino per lato del letto. È presente una poltrona, una sedia da ufficio ed una scrivania.', 0, 20),
(130, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/gym1.webp', 'La palestra dell\'hotel, attrezzata con due tapisrulan, una panca con dei manubri, una cyclette, un\'ellittica ed una macchina con cavi.', 0, 20),
(131, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/restaurant1.webp', 'Il ristorante dell\'hotel con grandi tavoli ed un pianoforte, aerea ben illuminata.', 0, 20),
(132, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/spa1.webp', 'La vasca idromassaggio della spa, vi si accede tramite 2 scalini sulla destra.', 0, 20),
(133, './assets/NordAmerica/vancouver-britishColumbia/hotel/images/toilet1.webp', 'Bagno di una delle camere, ci sono asciugamani e bottigliette con i detergenti, la doccia è divisa tramite parete e porta in vetro.', 0, 20),
(134, './assets/Oceania/Auckland/hotel/images/cover.webp', 'Esterno dell\'hotel con piscina e sedie a sdraio sul bordo vasca. Edifici tutto intorno.', 1, 21),
(135, './assets/Oceania/Auckland/hotel/images/bedroom1.webp', 'Accogliente camera da letto matrimoniale con divano sulla parte, tappeto circolare con tavolino da caffè e poltrona al centro della stanza. Ampia vetrata illumina l\'ambiente. Accanto al letto tavolino con giradischi.', 0, 21),
(136, './assets/Oceania/Auckland/hotel/images/bedroom2.webp', 'Luminosa camera da letto singola con vetrate lungo due pareti, a fianco al letto un tappeto con tavolino da caffè e poltronta, di fronte un ampio televisore.', 0, 21),
(137, './assets/Oceania/Auckland/hotel/images/bedroom3.webp', 'Camera da letto singola con ampie vetrate, tappeto e tavolo da caffè e poltrona a fianco al letto e televisore sulla parete. Vasca da bagno nella stanza.', 0, 21),
(138, './assets/Oceania/Auckland/hotel/images/external1.webp', 'Visuale di palazzi dal terrazzino di una camera dal letto.', 0, 21),
(139, './assets/Oceania/Auckland/hotel/images/external2.webp', 'Vista della piscina dell\'hotel dall\'alto e dei palazzi circostanti.', 0, 21),
(140, './assets/Oceania/Auckland/hotel/images/external3.webp', 'Ingresso dalla strada dell\'hotel, accesso con rampa o gradini.', 0, 21),
(141, './assets/Oceania/BoraBora/hotel/images/cover.webp', 'Vista dall\'alto dell\'hotel con tutte le casette che danno direttamente sulla spiaggia.', 1, 22),
(142, './assets/Oceania/BoraBora/hotel/images/bedroom1.webp', 'Bagno di una delle stanze dell\'hotel, a lato si nota una grande vasca idromassaggio.', 0, 22),
(143, './assets/Oceania/BoraBora/hotel/images/bedroom2.webp', 'Camera matrimoniale con vista direttamente sul mare.', 0, 22),
(144, './assets/Oceania/BoraBora/hotel/images/bedroom3.webp', 'Camera matrimoniale con giardino privato.', 0, 22),
(145, './assets/Oceania/BoraBora/hotel/images/external1.webp', 'Sala da pranzo all\'aperto.', 0, 22),
(146, './assets/Oceania/BoraBora/hotel/images/external2.webp', 'Alcune delle casette disponibili per soggiornare.', 0, 22),
(147, './assets/Oceania/BoraBora/hotel/images/external3.webp', 'Alcune delle casette con cista sulla spiaggia disponibili per soggiornare.', 0, 22),
(148, './assets/Oceania/Fiji/hotel/images/cover.webp', 'Vista dall\'alto dell\'hotel con piscina e accesso diretto alla spiaggia.', 1, 23),
(149, './assets/Oceania/Fiji/hotel/images/bedroom1.webp', 'Camera doppia con bagno.', 0, 23),
(150, './assets/Oceania/Fiji/hotel/images/bedroom2.webp', 'Camera matrimoniale con vista sulla spiaggia.', 0, 23),
(151, './assets/Oceania/Fiji/hotel/images/bedroom3.webp', 'Bagno di una delle camere matrimoniali.', 0, 23),
(152, './assets/Oceania/Fiji/hotel/images/external1.webp', 'Piscina con bar.', 0, 23),
(153, './assets/Oceania/Fiji/hotel/images/external2.webp', 'Bambini che giocano in piscina.', 0, 23),
(154, './assets/Oceania/Fiji/hotel/images/external3.webp', 'Salottino all\'aperto all\'ora del tramonto.', 0, 23),
(155, './assets/Oceania/Sydney/hotel/images/cover.webp', 'Vista dall\'alto dell\'hotel in centro a Sydney.', 1, 24),
(156, './assets/Oceania/Sydney/hotel/images/bedroom1.webp', 'Salottino di una camera doppia.', 0, 24),
(157, './assets/Oceania/Sydney/hotel/images/bedroom2.webp', 'Camera matrimoniale con vista sulla città.', 0, 24),
(158, './assets/Oceania/Sydney/hotel/images/bedroom3.webp', 'Bagno di una delle camere matrimoniali.', 0, 24),
(159, './assets/Oceania/Sydney/hotel/images/external1.webp', 'Reception dell\'hotel.', 0, 24),
(160, './assets/Oceania/Sydney/hotel/images/external2.webp', 'Sala della colazione.', 0, 24),
(161, './assets/Oceania/Sydney/hotel/images/external3.webp', 'Facciata esterna dell\'hotel.', 0, 24);

-- --------------------------------------------------------

--
-- Struttura della tabella `offers`
--

CREATE TABLE `offers` (
  `destination` int(11) NOT NULL,
  `activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `offers`
--

INSERT INTO `offers` (`destination`, `activity`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(9, 39),
(9, 40),
(9, 41),
(10, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(11, 47),
(11, 48),
(11, 49),
(11, 50),
(11, 51),
(12, 52),
(12, 53),
(12, 54),
(12, 55),
(12, 56),
(13, 57),
(13, 58),
(13, 59),
(13, 60),
(14, 61),
(14, 62),
(14, 63),
(14, 64),
(14, 65),
(15, 66),
(15, 67),
(15, 68),
(15, 69),
(15, 70),
(16, 71),
(16, 72),
(16, 73),
(16, 74),
(16, 75),
(17, 76),
(17, 77),
(17, 78),
(17, 79),
(17, 80),
(18, 81),
(18, 82),
(18, 83),
(18, 84),
(18, 85),
(19, 86),
(19, 87),
(19, 88),
(19, 89),
(19, 90),
(19, 91),
(20, 92),
(20, 93),
(20, 94),
(20, 95),
(20, 96),
(21, 97),
(21, 98),
(21, 99),
(21, 100),
(22, 101),
(22, 102),
(22, 103),
(22, 104),
(23, 105),
(23, 106),
(23, 107),
(23, 108),
(24, 109),
(24, 110),
(24, 111),
(24, 112);

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipant`
--

CREATE TABLE `partecipant` (
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` enum('M','W','U') NOT NULL DEFAULT 'U',
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `purchase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `payment_method`
--

CREATE TABLE `payment_method` (
  `card_number` varchar(16) NOT NULL,
  `cvc` varchar(3) NOT NULL,
  `expiration` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `moment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(50) NOT NULL,
  `card` varchar(16) NOT NULL,
  `destination` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `travel`
--

CREATE TABLE `travel` (
  `destination` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `travel`
--

INSERT INTO `travel` (`destination`, `start_date`, `end_date`, `price`) VALUES
(1, '2023-03-09', '2023-03-16', 2560),
(1, '2023-04-12', '2023-04-19', 2630),
(1, '2023-05-22', '2023-05-29', 2695),
(1, '2023-06-11', '2023-06-18', 3090),
(1, '2023-06-28', '2023-07-05', 3145),
(1, '2023-07-18', '2023-07-25', 3450),
(1, '2023-08-02', '2023-08-16', 5740),
(1, '2023-08-12', '2023-08-19', 4235),
(1, '2023-08-23', '2023-08-30', 4075),
(1, '2023-09-13', '2023-09-20', 3870),
(2, '2023-03-12', '2023-03-26', 3122),
(2, '2023-05-14', '2023-05-28', 3456),
(2, '2023-06-02', '2023-06-16', 3520),
(2, '2023-06-16', '2023-06-30', 3612),
(2, '2023-06-28', '2023-07-12', 3590),
(2, '2023-07-24', '2023-08-07', 4120),
(2, '2023-08-08', '2023-08-22', 4327),
(2, '2023-08-22', '2023-09-05', 3823),
(3, '2023-04-12', '2023-04-19', 2245),
(3, '2023-04-25', '2023-05-02', 2850),
(3, '2023-05-22', '2023-05-29', 3280),
(3, '2023-06-02', '2023-06-09', 3452),
(3, '2023-06-23', '2023-06-30', 3380),
(3, '2023-07-03', '2023-07-14', 3920),
(3, '2023-07-21', '2023-07-28', 3750),
(3, '2023-08-01', '2023-08-12', 4235),
(3, '2023-08-10', '2023-08-24', 6345),
(3, '2023-08-22', '2023-08-29', 4785),
(3, '2023-08-29', '2023-09-05', 4120),
(3, '2023-09-16', '2023-09-23', 3745),
(4, '2023-03-09', '2023-03-16', 2700),
(4, '2023-05-14', '2023-05-21', 2845),
(4, '2023-06-22', '2023-06-29', 2895),
(4, '2023-07-15', '2023-07-22', 3120),
(4, '2023-08-10', '2023-08-22', 3765),
(5, '2023-01-10', '2023-01-17', 3100),
(5, '2023-01-22', '2023-01-29', 3260),
(5, '2023-02-17', '2023-02-24', 3370),
(5, '2023-03-13', '2023-03-20', 3140),
(5, '2023-04-01', '2023-04-08', 2970),
(5, '2023-05-16', '2023-05-23', 2850),
(5, '2023-07-08', '2023-07-15', 2990),
(5, '2023-08-14', '2023-08-21', 3150),
(6, '2023-03-15', '2023-03-22', 2600),
(6, '2023-04-11', '2023-04-18', 2710),
(6, '2023-05-06', '2023-05-13', 2780),
(6, '2023-06-17', '2023-06-24', 2860),
(6, '2023-07-23', '2023-07-30', 2890),
(6, '2023-08-05', '2023-08-12', 2950),
(6, '2023-09-24', '2023-10-01', 2440),
(6, '2023-10-08', '2023-10-15', 2390),
(7, '2023-03-14', '2023-03-21', 2870),
(7, '2023-04-19', '2023-04-26', 2940),
(7, '2023-05-02', '2023-05-09', 2750),
(7, '2023-06-10', '2023-06-17', 3100),
(7, '2023-06-21', '2023-06-28', 3190),
(7, '2023-07-08', '2023-07-15', 3230),
(7, '2023-08-16', '2023-08-23', 3450),
(7, '2023-10-04', '2023-10-11', 2960),
(8, '2023-03-11', '2023-03-18', 2120),
(8, '2023-04-02', '2023-04-09', 2050),
(8, '2023-05-17', '2023-05-24', 2230),
(8, '2023-06-22', '2023-06-29', 2370),
(8, '2023-07-04', '2023-07-11', 2390),
(8, '2023-07-15', '2023-07-22', 2430),
(8, '2023-08-16', '2023-08-23', 2550),
(8, '2023-09-10', '2023-09-17', 2260),
(9, '2023-04-22', '2023-04-16', 2050),
(9, '2023-05-07', '2023-05-18', 2200),
(9, '2023-06-02', '2023-06-13', 2300),
(9, '2023-07-04', '2023-07-14', 2530),
(9, '2023-07-16', '2023-07-22', 2830),
(9, '2023-08-09', '2023-08-19', 3000),
(9, '2023-09-28', '2023-10-05', 2560),
(9, '2024-01-05', '2024-01-16', 2120),
(10, '2023-02-09', '2023-02-17', 2100),
(10, '2023-03-10', '2023-03-20', 3200),
(10, '2023-04-20', '2023-04-28', 2750),
(10, '2023-07-05', '2023-07-12', 1900),
(10, '2023-08-16', '2023-08-23', 2290),
(10, '2023-10-22', '2023-10-29', 1750),
(10, '2023-11-08', '2023-11-15', 2340),
(10, '2023-12-01', '2023-12-08', 2450),
(11, '2023-01-13', '2023-01-20', 2100),
(11, '2023-03-10', '2023-03-17', 2200),
(11, '2023-04-20', '2023-04-27', 3750),
(11, '2023-05-14', '2023-05-21', 1100),
(11, '2023-06-16', '2023-06-23', 1290),
(11, '2023-10-22', '2023-10-29', 1750),
(11, '2023-11-08', '2023-11-15', 1340),
(11, '2023-12-01', '2023-12-08', 2450),
(12, '2023-01-18', '2023-01-25', 1950),
(12, '2023-02-20', '2023-02-27', 1350),
(12, '2023-03-11', '2023-03-18', 1360),
(12, '2023-04-02', '2023-04-09', 2950),
(12, '2023-05-08', '2023-05-15', 1950),
(12, '2023-07-20', '2023-07-27', 2340),
(12, '2023-11-10', '2023-11-17', 1440),
(12, '2023-12-13', '2023-12-20', 1770),
(13, '2023-02-15', '2023-02-20', 2200),
(13, '2023-03-03', '2023-03-08', 2340),
(13, '2023-04-12', '2023-04-17', 2260),
(13, '2023-05-25', '2023-05-30', 2410),
(13, '2023-06-13', '2023-06-18', 2500),
(13, '2023-06-22', '2023-06-27', 2590),
(13, '2023-07-10', '2023-07-15', 2670),
(13, '2023-08-14', '2023-08-19', 2950),
(14, '2023-04-12', '2023-04-19', 2400),
(14, '2023-05-07', '2023-05-14', 2520),
(14, '2023-06-11', '2023-06-18', 2680),
(14, '2023-06-23', '2023-06-30', 2730),
(14, '2023-07-02', '2023-07-09', 2710),
(14, '2023-07-15', '2023-07-22', 2990),
(14, '2023-08-05', '2023-08-12', 3170),
(14, '2023-08-19', '2023-08-26', 3040),
(15, '2023-05-12', '2023-05-19', 2450),
(15, '2023-05-21', '2023-05-28', 2380),
(15, '2023-06-01', '2023-06-08', 2700),
(15, '2023-06-10', '2023-06-17', 2810),
(15, '2023-06-23', '2023-06-30', 3100),
(15, '2023-07-05', '2023-07-12', 2970),
(15, '2023-07-26', '2023-08-02', 3250),
(15, '2023-08-14', '2023-08-21', 3600),
(16, '2023-02-12', '2023-02-17', 2160),
(16, '2023-03-21', '2023-03-26', 2280),
(16, '2023-04-08', '2023-04-13', 2400),
(16, '2023-04-20', '2023-04-25', 2530),
(16, '2023-05-13', '2023-05-18', 2470),
(16, '2023-06-05', '2023-06-10', 2670),
(16, '2023-06-22', '2023-06-27', 2750),
(16, '2023-07-11', '2023-07-16', 2890),
(17, '2023-02-10', '2023-02-17', 2890),
(17, '2023-02-25', '2023-03-04', 2990),
(17, '2023-04-22', '2023-04-29', 2935),
(17, '2023-05-15', '2023-05-22', 3120),
(17, '2023-06-12', '2023-06-19', 3055),
(17, '2023-07-11', '2023-07-18', 3125),
(17, '2023-07-28', '2023-08-04', 3420),
(17, '2023-08-24', '2023-09-30', 3300),
(17, '2023-09-28', '2023-10-05', 2650),
(17, '2023-11-16', '2023-11-23', 2960),
(17, '2023-12-14', '2023-12-21', 2855),
(18, '2023-02-08', '2023-02-15', 1678),
(18, '2023-02-25', '2023-03-04', 1832),
(18, '2023-04-12', '2023-04-19', 1934),
(18, '2023-05-14', '2023-05-21', 2245),
(18, '2023-05-20', '2023-06-03', 2450),
(18, '2023-06-15', '2023-06-22', 2784),
(18, '2023-07-13', '2023-06-20', 2812),
(18, '2023-07-22', '2023-08-05', 2907),
(18, '2023-08-07', '2023-08-21', 3108),
(18, '2023-08-10', '2023-08-17', 3034),
(18, '2023-08-24', '2023-08-31', 3025),
(18, '2023-09-05', '2023-09-12', 2980),
(19, '2023-02-23', '2023-02-28', 3400),
(19, '2023-03-24', '2023-03-31', 3234),
(19, '2023-04-07', '2023-04-14', 3321),
(19, '2023-05-12', '2023-05-19', 3125),
(19, '2023-06-15', '2023-06-26', 3840),
(19, '2023-07-11', '2023-07-18', 3756),
(19, '2023-08-02', '2023-08-09', 4210),
(19, '2023-08-12', '2023-08-21', 4521),
(19, '2023-08-25', '2023-09-01', 4325),
(19, '2023-09-24', '2023-10-01', 3103),
(20, '2023-03-05', '2023-03-16', 3120),
(20, '2023-04-04', '2023-04-11', 2985),
(20, '2023-05-09', '2023-05-18', 3450),
(20, '2023-05-22', '2023-05-29', 3215),
(20, '2023-06-10', '2023-06-20', 3555),
(20, '2023-06-21', '2023-06-28', 3434),
(20, '2023-06-26', '2023-07-10', 3840),
(20, '2023-07-24', '2023-07-31', 3545),
(20, '2023-08-09', '2023-08-16', 3640),
(20, '2023-08-22', '2023-08-29', 4124),
(20, '2023-09-25', '2023-10-02', 3230),
(21, '2023-01-18', '2023-01-25', 2950),
(21, '2023-02-20', '2023-02-27', 2350),
(21, '2023-03-11', '2023-03-18', 2360),
(21, '2023-04-02', '2023-04-09', 2950),
(21, '2023-05-14', '2023-05-21', 3100),
(21, '2023-06-16', '2023-06-23', 1290),
(21, '2023-11-20', '2023-11-27', 2350),
(21, '2023-12-01', '2023-12-08', 2450),
(22, '2023-02-01', '2023-02-13', 3400),
(22, '2023-04-15', '2023-04-22', 2600),
(22, '2023-05-08', '2023-05-16', 3040),
(22, '2023-08-01', '2023-08-08', 2900),
(22, '2023-09-09', '2023-09-21', 2800),
(22, '2023-10-02', '2023-10-16', 3600),
(22, '2023-11-20', '2023-11-27', 2350),
(22, '2023-12-01', '2023-12-08', 2450),
(23, '2023-01-18', '2023-01-25', 2950),
(23, '2023-02-20', '2023-02-27', 3350),
(23, '2023-03-11', '2023-03-18', 3360),
(23, '2023-04-02', '2023-04-09', 2950),
(23, '2023-08-16', '2023-08-23', 2290),
(23, '2023-10-22', '2023-10-29', 3750),
(23, '2023-11-08', '2023-11-15', 2340),
(23, '2023-12-01', '2023-12-08', 3450),
(24, '2023-02-13', '2023-02-20', 1400),
(24, '2023-04-15', '2023-04-22', 1600),
(24, '2023-06-20', '2023-06-27', 1350),
(24, '2023-08-01', '2023-08-08', 2950),
(24, '2023-09-13', '2023-09-20', 1895),
(24, '2023-10-15', '2023-10-22', 1670),
(24, '2023-11-20', '2023-11-27', 2350),
(24, '2023-12-01', '2023-12-08', 2450);

-- --------------------------------------------------------

--
-- Struttura della tabella `userprofile`
--

CREATE TABLE `userprofile` (
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` enum('M','W','U') NOT NULL DEFAULT 'U',
  `date_of_birth` date NOT NULL,
  `pw_hash` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `permission` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`name`);

--
-- Indici per le tabelle `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`destination`,`airline`),
  ADD KEY `airline` (`airline`);

--
-- Indici per le tabelle `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`);

--
-- Indici per le tabelle `image_activity`
--
ALTER TABLE `image_activity`
  ADD PRIMARY KEY (`id`,`activity`),
  ADD KEY `activity` (`activity`);

--
-- Indici per le tabelle `image_airline`
--
ALTER TABLE `image_airline`
  ADD PRIMARY KEY (`id`,`airline`),
  ADD KEY `airline` (`airline`);

--
-- Indici per le tabelle `image_destination`
--
ALTER TABLE `image_destination`
  ADD PRIMARY KEY (`id`,`destination`),
  ADD KEY `destination` (`destination`);

--
-- Indici per le tabelle `image_hotel`
--
ALTER TABLE `image_hotel`
  ADD PRIMARY KEY (`id`,`hotel`),
  ADD KEY `hotel` (`hotel`);

--
-- Indici per le tabelle `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`destination`,`activity`),
  ADD KEY `activity` (`activity`);

--
-- Indici per le tabelle `partecipant`
--
ALTER TABLE `partecipant`
  ADD PRIMARY KEY (`document_type`,`document_number`),
  ADD KEY `purchase` (`purchase`);

--
-- Indici per le tabelle `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`card_number`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `card` (`card`),
  ADD KEY `destination` (`destination`,`start_date`,`end_date`);

--
-- Indici per le tabelle `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`destination`,`start_date`,`end_date`);

--
-- Indici per le tabelle `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT per la tabella `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT per la tabella `image_activity`
--
ALTER TABLE `image_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT per la tabella `image_airline`
--
ALTER TABLE `image_airline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `image_destination`
--
ALTER TABLE `image_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT per la tabella `image_hotel`
--
ALTER TABLE `image_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT per la tabella `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airline`) REFERENCES `airline` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_activity`
--
ALTER TABLE `image_activity`
  ADD CONSTRAINT `image_activity_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_airline`
--
ALTER TABLE `image_airline`
  ADD CONSTRAINT `image_airline_ibfk_1` FOREIGN KEY (`airline`) REFERENCES `airline` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_destination`
--
ALTER TABLE `image_destination`
  ADD CONSTRAINT `image_destination_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `image_hotel`
--
ALTER TABLE `image_hotel`
  ADD CONSTRAINT `image_hotel_ibfk_1` FOREIGN KEY (`hotel`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `partecipant`
--
ALTER TABLE `partecipant`
  ADD CONSTRAINT `partecipant_ibfk_1` FOREIGN KEY (`purchase`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userprofile` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userprofile` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`card`) REFERENCES `payment_method` (`card_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`destination`,`start_date`,`end_date`) REFERENCES `travel` (`destination`, `start_date`, `end_date`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`destination`) REFERENCES `destination` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
