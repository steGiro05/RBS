-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 16, 2024 alle 17:38
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5bi_news`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `fkGenre` int(11) DEFAULT NULL,
  `fkJournalist` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `publishing_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `articles`
--

INSERT INTO `articles` (`id`, `title`, `subtitle`, `content`, `fkGenre`, `fkJournalist`, `imgUrl`, `publishing_date`) VALUES
(1, 'La Rivoluzione Tecnologica nel Tennis: Come le Nuove Tecnologie Stanno Cambiando il Gioco', 'Dalle Racchette Intelligenti alle Analisi Statistiche Avanzate, il Futuro del Tennis è Qui', 'Il mondo del tennis sta vivendo una rivoluzione tecnologica senza precedenti. Le racchette intelligenti, dotate di sensori e tecnologie di analisi del movimento, stanno consentendo ai giocatori di ottenere dati dettagliati sulle loro prestazioni, dalla velocità dei colpi all\'angolo di impatto. Questo non solo aiuta i giocatori a migliorare le proprie abilità, ma sta anche cambiando il modo in cui gli allenatori analizzano e sviluppano i talenti emergenti.\r\n\r\nParallelamente, le analisi statistiche avanzate stanno diventando sempre più importanti nel tennis professionistico. I team di analisti studiano meticulosamente i dati per identificare i modelli di gioco, le debolezze degli avversari e le strategie vincenti. Questo approccio basato sui dati sta portando a una maggiore precisione nelle decisioni tattiche durante le partite e sta influenzando il modo in cui i giocatori si preparano agli incontri.\r\n\r\nMa la tecnologia non riguarda solo i giocatori e gli allenatori. Anche l\'esperienza dei tifosi sta cambiando radicalmente. Le applicazioni mobili offrono aggiornamenti in tempo reale, statistiche dettagliate e persino la possibilità di rivivere i momenti salienti delle partite attraverso la riproduzione in realtà virtuale. Questo livello di coinvolgimento sta trasformando il modo in cui i tifosi seguono e vivono il tennis.\r\n\r\nIn definitiva, la combinazione di racchette intelligenti, analisi statistiche avanzate e esperienze interattive sta ridefinendo il panorama del tennis moderno. Queste innovazioni non solo migliorano le prestazioni dei giocatori, ma rendono il tennis più avvincente e accessibile per tutti gli appassionati di questo sport.', 1, 2, 'v9mlw6.jpg', '2024-04-14 07:23:45'),
(2, 'L\'Impatto dell\'Alimentazione sulla Performance degli Atleti: Strategie Nutrizionali per il Successo', 'Come una Corretta Alimentazione può Fare la Differenza tra la Vittoria e la Sconfitta negli Sport', 'Nel mondo dello sport di alto livello, l\'alimentazione gioca un ruolo fondamentale nella performance degli atleti. Le scelte alimentari non solo influenzano l\'energia e la resistenza, ma possono anche avere un impatto significativo sulla capacità di recupero e sulle prestazioni cognitive durante la competizione.\r\n\r\nLe strategie nutrizionali per gli atleti sono personalizzate in base alle esigenze specifiche del loro sport, del loro corpo e del loro programma di allenamento. Gli integratori alimentari, come proteine, carboidrati complessi e antiossidanti, vengono spesso utilizzati per ottimizzare le prestazioni e favorire il recupero muscolare dopo lo sforzo fisico.\r\n\r\nTuttavia, l\'alimentazione degli atleti va ben oltre la semplice scelta degli alimenti. La corretta idratazione è essenziale per mantenere l\'equilibrio elettrolitico e prevenire l\'affaticamento durante l\'attività fisica. Inoltre, la pianificazione dei pasti prima e dopo gli allenamenti e le gare è cruciale per massimizzare l\'assorbimento dei nutrienti e garantire una performance ottimale.\r\n\r\nUn\'alimentazione adeguata può fare la differenza tra il successo e la sconfitta per gli atleti di tutti i livelli. I professionisti del settore dedicano tempo e risorse considerevoli allo sviluppo di piani alimentari personalizzati, dimostrando che l\'alimentazione è una componente fondamentale del loro regime di allenamento. In un ambiente competitivo in cui ogni vantaggio conta, l\'alimentazione rappresenta un elemento chiave per ottenere prestazioni di alto livello.', 1, 3, NULL, '2024-04-14 12:37:21'),
(3, 'L\'Evolvere dell\'Equitazione: Come la Tecnologia Sta Rivoluzionando il Mondo dell\'Ippica', 'Dalle Selle Intelligenti alle Analisi Biometriche, il Futuro dei Cavalli da Corsa è Tecnologico', 'L\'equitazione, uno sport intriso di tradizione e storia, sta abbracciando sempre più la tecnologia per migliorare le prestazioni dei cavalli e dei loro cavalieri. Le selle intelligenti, dotate di sensori di pressione e di movimento, consentono ai fantini di monitorare l\'andatura e il comportamento del cavallo in tempo reale, ottimizzando l\'adattamento e il comfort durante le corse.\r\n\r\nMa non sono solo le selle a essere trasformate dalla tecnologia. Le analisi biometriche stanno diventando sempre più diffuse nel mondo dell\'ippica, consentendo ai veterinari e agli allenatori di valutare la salute e il benessere dei cavalli in modo più accurato. Dalle misurazioni della frequenza cardiaca alla valutazione della biomeccanica del movimento, queste tecnologie offrono un\'istantanea dettagliata della condizione fisica degli animali atleti.\r\n\r\nInoltre, la tecnologia sta influenzando anche l\'esperienza degli spettatori. Le trasmissioni in diretta delle corse, arricchite da dati biometrici e analisi delle prestazioni, offrono agli appassionati un\'immersione più profonda nel mondo dell\'ippica, permettendo loro di apprezzare appieno la bellezza e la potenza di questi magnifici animali.\r\n\r\nMentre l\'equitazione continua a evolversi, la tecnologia svolge un ruolo sempre più importante nel plasmare il futuro di questo sport secolare. Dalle piste di gara alle stalle, la combinazione di innovazione tecnologica e tradizione equina sta portando l\'equitazione verso nuovi orizzonti, migliorando la salute, le prestazioni e l\'esperienza complessiva per tutti coloro che vi partecipano.', 1, 3, 'folamp.jpg', '2024-04-15 06:45:12'),
(4, 'Il Boom degli Sport Elettronici: Come i Videogiochi Stanno Diventando una Vera Disciplina Sportiva', 'Dalla Console alla Competizione Mondiale, l\'Ascesa degli E-Sports nel Panorama Sportivo Globale', 'Gli sport elettronici, o E-Sports, stanno vivendo un\'esplosione di popolarità senza precedenti in tutto il mondo. Ciò che un tempo era considerato un semplice passatempo per ragazzi è diventato una vera e propria industria globale, con milioni di appassionati che seguono le competizioni in streaming e partecipano a tornei internazionali.\r\n\r\nA differenza degli sport tradizionali, gli E-Sports coinvolgono l\'abilità nei videogiochi competitivi, richiedendo riflessi fulminei, strategie complesse e una profonda conoscenza del gioco. I professionisti degli E-Sports sono atleti virtuali che si dedicano ad allenamenti intensivi e competono a livello mondiale per vincere premi in denaro e prestigio.\r\n\r\nMa gli E-Sports non sono solo una questione di giocatori individuali. Le squadre organizzate competono in giochi come League of Legends, Dota 2 e Counter-Strike: Global Offensive, sfidando altre squadre in tornei che attirano milioni di spettatori online e offline.\r\n\r\nL\'ascesa degli E-Sports ha anche attirato l\'attenzione degli sponsor e degli investitori, che vedono in questo settore un enorme potenziale di crescita. Le partnership con marchi globali, trasmissioni televisive e sponsorizzazioni di eventi hanno contribuito a portare gli E-Sports al centro dell\'attenzione mediatica e culturale.\r\n\r\nIn definitiva, gli E-Sports sono diventati una parte integrante del panorama sportivo globale, offrendo un\'alternativa innovativa e avvincente agli sport tradizionali. Con la continua crescita della tecnologia e della connettività, è probabile che gli E-Sports continueranno a prosperare e a trasformarsi, ridefinendo ciò che significa essere uno sportivo nel mondo moderno', 1, 2, NULL, '2024-04-15 14:58:39'),
(5, 'La Corsa all\'Altitudine: Come l\'Addestramento in Alte Quote Sta Rivoluzionando il Mondo dell\'Atletica', 'Dall\'Incremento dell\'EPO alla Migliorata Resistenza, i Benefici dell\'Allenamento in Alte Quote', 'L\'allenamento in alte quote sta diventando sempre più popolare tra gli atleti di resistenza in tutto il mondo. L\'aria rarefatta e la minore concentrazione di ossigeno in queste regioni stimolano il corpo a produrre più globuli rossi, migliorando così l\'efficienza del trasporto di ossigeno e la resistenza aerobica.\r\n\r\nNumerosi studi hanno dimostrato che gli atleti che si allenano in alte quote possono ottenere significativi miglioramenti nelle loro prestazioni, sia in competizioni ad altitudini elevate che a livello del mare. Questo tipo di allenamento è particolarmente popolare tra i corridori, i ciclisti e i fondisti che cercano di ottenere un vantaggio competitivo sul campo.\r\n\r\nTuttavia, l\'allenamento in alte quote non è privo di sfide. L\'adattamento del corpo all\'altitudine può richiedere tempo e può essere accompagnato da sintomi come affaticamento, mal di testa e nausea. Inoltre, l\'efficacia dell\'allenamento in alte quote dipende da una serie di fattori, tra cui la durata e l\'intensità della sessione di allenamento, l\'altitudine specifica e le caratteristiche individuali dell\'atleta.\r\n\r\nNonostante queste sfide, molti atleti continuano a sfruttare i benefici dell\'allenamento in alte quote per migliorare le loro prestazioni e ottenere risultati di livello mondiale. Con una pianificazione adeguata e una supervisione esperta, l\'allenamento in alte quote può essere un\'arma potente nel arsenale degli atleti di resistenza, consentendo loro di superare i propri limiti e raggiungere nuovi traguardi sul campo.', 1, 2, '635xaf.jpg', '2024-04-16 08:12:05'),
(6, 'Il Risorgere della Boxe: Come il Ritorno dei Campioni Sta Riaccendendo l\'Interesse per lo Sport', 'Da Tyson a Mayweather, la Rinascita della Boxe nel Panorama Sportivo Mondiale', 'La boxe, uno degli sport più antichi e affascinanti, sta vivendo una rinascita grazie al ritorno dei grandi campioni sul ring. Leggende come Mike Tyson e Floyd Mayweather hanno riacceso l\'interesse del pubblico per questo sport, attirando l\'attenzione dei media e generando entusiasmo per le loro sfide epiche.\r\n\r\nIl fascino della boxe risiede nella sua brutalità e nella sua bellezza, nella strategia e nella potenza dei pugili che si affrontano nel quadrato di lotta. Ma è la presenza di superstar come Tyson e Mayweather che ha veramente catalizzato l\'attenzione del pubblico e ha portato la boxe di nuovo sotto i riflettori.\r\n\r\nInoltre, la boxe sta vivendo una nuova era di accessibilità grazie alla trasmissione in streaming e alla presenza sui social media. Le piattaforme digitali consentono ai fan di seguire da vicino le carriere dei pugili, di accedere a contenuti esclusivi e di interagire direttamente con i propri campioni preferiti, creando così un senso di vicinanza e coinvolgimento senza precedenti.\r\n\r\nCon il ritorno dei grandi campioni e l\'innovazione tecnologica che rende lo sport più accessibile che mai, la boxe sta vivendo una nuova era d\'oro. Mentre le leggende del passato continuano a ispirare nuove generazioni di pugili, il futuro della boxe sembra più luminoso che mai, con appassionanti incontri e storie emozionanti che continuano a catturare l\'immaginazione di milioni di fan in tutto il mondo.', 1, 3, 'n8c5vu.jpg', '2024-04-20 16:24:33'),
(7, 'La Bellezza della Simbiosi Uomo-Natura nello Sport Estremo: Esplorando i Limiti dell\'Avventura', 'Dalle Montagne Innevate alle Onde Infuocate, Come lo Sport Estremo Celebra la Connessione con l\'Ambiente Naturale', 'Lo sport estremo è molto più di una semplice competizione; è un\'espressione di pura connessione tra l\'uomo e la natura. Dalle scintillanti cime innevate delle montagne alle imponenti onde dell\'oceano, gli atleti estremi sfidano i limiti del corpo e della mente mentre esplorano l\'ambiente naturale in tutto il suo splendore e la sua selvaggia bellezza.\r\n\r\nGli sport estremi come lo snowboard, il surf, l\'arrampicata e il paracadutismo richiedono una profonda comprensione e rispetto per l\'ambiente circostante. Gli atleti devono essere in sintonia con la natura, compresi i suoi pericoli e i suoi capricci, mentre cercano di superare ostacoli e raggiungere nuovi traguardi.\r\n\r\nMa oltre alla sfida fisica, gli sport estremi offrono anche un\'opportunità unica di esplorare e preservare l\'ambiente naturale. Gli atleti estremi sono spesso tra i primi a testimoniare i cambiamenti climatici e l\'impatto dell\'attività umana sugli ecosistemi delicati del pianeta, spingendo per un maggiore impegno nella conservazione e nella sostenibilità ambientale.\r\n\r\nIn definitiva, gli sport estremi celebrano la bellezza e la potenza della natura mentre esplorano i limiti dell\'avventura umana. Attraverso la loro audacia e il loro spirito pionieristico, gli atleti estremi ispirano non solo con le loro imprese eroiche, ma anche con il loro impegno per proteggere e preservare il nostro pianeta per le generazioni future.', 1, 2, NULL, '2024-04-17 09:38:17'),
(8, 'Lo Sport Come Strumento di Inclusione: Promuovere l\'Equità e la Diversità nel Mondo dello Sport', 'Dalla Parità di Genere alla Partecipazione delle Persone con Disabilità, L\'Importanza dell\'Accesso Equo allo Sport', 'Lo sport ha il potere di unire le persone e di abbattere le barriere sociali ed economiche. Tuttavia, per realizzare pienamente questo potenziale, è fondamentale promuovere l\'equità e la diversità nel mondo dello sport, garantendo che tutti abbiano l\'opportunità di partecipare e di eccellere, indipendentemente dal loro background o dalle loro capacità.\r\n\r\nUna delle sfide principali è garantire la parità di genere nello sport. Le donne e le ragazze continuano ad affrontare discriminazioni e disparità di trattamento in molte discipline sportive, dall\'accesso alle risorse alla copertura mediatica. Promuovere l\'uguaglianza di genere nello sport non solo è giusto dal punto di vista morale, ma anche essenziale per liberare il pieno potenziale dello sport e per creare modelli positivi per le future generazioni.\r\n\r\nInoltre, è importante garantire che le persone con disabilità abbiano accesso equo allo sport e alle opportunità di competere. Lo sport adattato offre una via per l\'inclusione e l\'empowerment delle persone con disabilità, permettendo loro di superare sfide fisiche e sociali e di sviluppare abilità e fiducia in sé stessi attraverso la partecipazione sportiva.\r\n\r\nPromuovere l\'equità e la diversità nello sport richiede un impegno collettivo da parte delle federazioni sportive, dei governi, delle organizzazioni non governative e della società nel suo insieme. Solo attraverso una cooperazione globale e un impegno concreto possiamo creare un mondo dello sport più inclusivo e accessibile per tutti.', 1, 2, NULL, '2024-04-17 13:49:58'),
(9, 'L\'Arte del Tai Chi: Come questa Antica Pratica Cinese Sta Guadagnando Popolarità nello Sport Moderno', 'Dalla Calma Interiore alla Forza Fisica, i Benefici del Tai Chi per la Salute e il Benessere', 'Il Tai Chi, un\'antica pratica cinese basata su movimenti fluidi e meditazione, sta guadagnando popolarità nello sport moderno grazie ai suoi molteplici benefici per la salute e il benessere. Originariamente sviluppato come un\'arte marziale, il Tai Chi si concentra sull\'equilibrio, la flessibilità e la concentrazione mentale, offrendo una via per raggiungere la calma interiore e la forza fisica.\r\n\r\nUna delle caratteristiche distintive del Tai Chi è la sua combinazione di movimenti lenti e controllati con la respirazione profonda e consapevole. Questa pratica favorisce il rilassamento e la riduzione dello stress, aiutando a migliorare la qualità del sonno, a ridurre la pressione sanguigna e a promuovere una maggiore consapevolezza del corpo e della mente.\r\n\r\nInoltre, il Tai Chi è adatto a persone di tutte le età e livelli di fitness, rendendolo una forma di esercizio accessibile e inclusiva. Gli esercizi possono essere adattati alle esigenze individuali, consentendo a chiunque di sfruttare i benefici del Tai Chi per migliorare la propria salute e il proprio benessere.\r\n\r\nMentre il Tai Chi continua a guadagnare popolarità in tutto il mondo, è importante riconoscere e rispettare le sue radici culturali e filosofiche. Oltre a essere uno strumento per la salute fisica, il Tai Chi è anche un\'arte che promuove l\'armonia con il mondo naturale e la consapevolezza di sé, offrendo una via per il benessere totale del corpo, della mente e dello spirito.', 1, 3, NULL, '2024-04-18 06:02:44'),
(10, 'La Crisi Umanitaria in Afghanistan: Sfide e Prospettive per il Futuro del Paese', 'Dalla Fuga dei Rifugiati alla Crescente Instabilità Politica, Cosa Aspettarsi dopo il Ritiro delle Forze Straniere', 'L\'Afghanistan è attualmente al centro di una crisi umanitaria senza precedenti dopo il ritiro delle truppe straniere e il ritorno al potere dei talebani. Milioni di persone hanno cercato rifugio all\'estero, mentre all\'interno del paese si registra un aumento delle violenze e delle violazioni dei diritti umani.\r\n\r\nLe prospettive per il futuro dell\'Afghanistan sono incerte, con molte domande senza risposta. Il ritorno dei talebani al potere solleva preoccupazioni riguardo alla libertà e ai diritti delle donne, alla libertà di stampa e all\'accesso all\'istruzione. Inoltre, l\'instabilità politica e la presenza di gruppi terroristici rendono difficile prevedere come il paese affronterà le sfide economiche e sociali nei prossimi anni.\r\n\r\nLa comunità internazionale sta cercando di rispondere a questa crisi attraverso l\'invio di aiuti umanitari e lo sviluppo di strategie per sostenere i rifugiati afghani e mitigare le conseguenze della crisi. Tuttavia, la situazione rimane estremamente complessa e richiederà un impegno a lungo termine da parte di tutti gli attori coinvolti per garantire una transizione pacifica e sostenibile verso un futuro più stabile e prospero per il popolo afghano.\r\n\r\n', 2, 2, '8opfq.jpg', '2024-04-18 11:16:20'),
(11, 'La Crisi del Clima: Come il Rapporto dell\'IPCC Mette in Evidenza l\'Urgenza dell\'Azione Globale', 'Dalle Onde di Calore ai Disastri Naturali, Le Conseguenze del Cambiamento Climatico sono Ormai Ineludibili', 'Il recente rapporto dell\'IPCC ha messo in luce la gravità del cambiamento climatico e la necessità di azioni urgenti da parte della comunità internazionale per affrontare questa minaccia esistenziale. Le conclusioni del rapporto sono chiare: il cambiamento climatico è reale, è causato dall\'attività umana e sta avendo gravi conseguenze per il pianeta e per le persone che lo abitano.\r\n\r\nLe onde di calore estreme, gli incendi boschivi devastanti, le inondazioni catastrofiche e gli uragani sempre più intensi sono solo alcune delle manifestazioni del cambiamento climatico che stiamo già sperimentando in tutto il mondo. Questi eventi non solo mettono a rischio vite umane e mezzi di sussistenza, ma minacciano anche la stabilità economica e sociale dei paesi colpiti.\r\n\r\nAffrontare la crisi climatica richiederà azioni su più fronti, tra cui la riduzione delle emissioni di gas serra, l\'adattamento ai cambiamenti climatici già in corso e il sostegno ai paesi più vulnerabili. È necessaria una cooperazione internazionale senza precedenti per raggiungere gli obiettivi dell\'Accordo di Parigi e limitare l\'aumento della temperatura globale a livelli accettabili.\r\n\r\nIl tempo stringe, ma c\'è ancora speranza. Con un impegno deciso e una leadership forte, è possibile affrontare la crisi climatica e creare un futuro sostenibile per le generazioni future.', 2, 2, '4ut7k8.jpg', '2024-04-19 07:29:55'),
(12, 'La Crisi Umanitaria in Ucraina: Impatto della Guerra sull\'economia e sulla Popolazione Civile', 'Dalle Dislocazioni Forzate alla Carestia, Le Conseguenze della Guerra nel Donbass e oltre', 'La situazione in Ucraina continua a peggiorare a causa del conflitto in corso nel Donbass e delle tensioni con la Russia. Milioni di persone sono state costrette a fuggire dalle proprie case, cercando rifugio in altre parti del paese o all\'estero. Le città e i villaggi del Donbass sono stati devastati dai combattimenti, con gravi danni alle infrastrutture e alla vita civile.\r\n\r\nInoltre, la guerra ha avuto un impatto significativo sull\'economia ucraina, con una contrazione del PIL e un aumento della disoccupazione e dell\'inflazione. Le sanzioni internazionali e l\'instabilità politica hanno reso difficile per il governo ucraino affrontare le sfide economiche e sociali del paese.\r\n\r\nLa comunità internazionale ha risposto alla crisi in Ucraina attraverso l\'invio di aiuti umanitari e il sostegno alla mediazione dei conflitti. Tuttavia, la situazione rimane estremamente complessa e richiederà un impegno a lungo termine da parte di tutti gli attori coinvolti per garantire una soluzione pacifica e sostenibile al conflitto e per aiutare il popolo ucraino a ricostruire le proprie vite e il proprio paese.', 2, 3, 'kdig8v.jpg', '2024-04-19 15:43:29'),
(13, 'Il Futuro del Lavoro: Come la Pandemia ha Trasformato il Modo in cui Lavoriamo', 'Dal Lavoro Remoto alla Digitalizzazione, Le Tendenze Che Stanno Ridefinendo il Concetto di Lavoro', 'La pandemia da COVID-19 ha avuto un impatto duraturo sul mondo del lavoro, accelerando tendenze già in corso e spingendo le organizzazioni a ripensare il modo in cui operano. Una delle trasformazioni più evidenti è stata l\'adozione diffusa del lavoro remoto, con milioni di persone che hanno iniziato a lavorare da casa per evitare il contagio e ridurre la diffusione del virus.\r\n\r\nQuesto spostamento verso il lavoro remoto ha portato a una maggiore flessibilità e adattabilità nei modelli di lavoro, consentendo alle persone di conciliare meglio lavoro e vita personale. Tuttavia, ha anche sollevato nuove sfide, tra cui la gestione del tempo, la comunicazione virtuale e il mantenimento del benessere mentale e fisico.\r\n\r\nInoltre, la pandemia ha accelerato anche la digitalizzazione dell\'economia, con un aumento dell\'adozione di tecnologie come l\'intelligenza artificiale, l\'automazione e la robotica. Questo ha creato nuove opportunità di lavoro in settori come la tecnologia dell\'informazione e la programmazione, ma ha anche sollevato preoccupazioni riguardo alla sicurezza del lavoro e all\'equità nell\'accesso alle opportunità.\r\n\r\nMentre il mondo si prepara a emergere dalla pandemia, è chiaro che il futuro del lavoro sarà significativamente diverso da prima. Le organizzazioni dovranno adattarsi a queste nuove realtà e trovare modi innovativi per sfruttare le nuove opportunità e affrontare le sfide che si presenteranno lungo il cammino.', 2, 2, 'wrl46.jpg', '2024-04-20 08:57:11'),
(14, 'La Crisi Migratoria al Confine tra Stati Uniti e Messico: Sfide e Soluzioni per Gestire il Flusso di Migranti', 'Dall\'Aumento delle Arrivate ai Cambiamenti nella Politica Migratoria, Come Affrontare la Crisi Umanitaria al Confine Sud degli Stati Uniti', 'La crisi migratoria al confine tra Stati Uniti e Messico continua a rappresentare una sfida per entrambi i paesi e per la comunità internazionale nel suo complesso. Un numero sempre maggiore di persone, tra cui molte famiglie e minori non accompagnati, sta cercando di attraversare il confine in cerca di sicurezza e opportunità migliori.\r\n\r\nLe cause di questa migrazione sono complesse e multifattoriali, tra cui la violenza, la povertà, la corruzione e il cambiamento climatico nei paesi di origine. Tuttavia, la politica migratoria degli Stati Uniti ha svolto un ruolo significativo nell\'aggravare la situazione, con restrizioni e politiche punitive che hanno reso più difficile per i migranti accedere legalmente al paese e cercare asilo.\r\n\r\nAffrontare la crisi migratoria richiederà una risposta globale e coordinata, che includa non solo misure per gestire il flusso di migranti al confine, ma anche sforzi per affrontare le cause sottostanti della migrazione. Questo potrebbe includere investimenti nella sicurezza e nello sviluppo dei paesi di origine, nonché politiche migratorie più umane ed equilibrate che garantiscano il rispetto dei diritti umani e la protezione delle persone vulnerabili.\r\n\r\nMentre la crisi migratoria continua a sfidare le autorità e la società civile, è fondamentale mantenere un approccio compassionevole e basato sui diritti umani nel trovare soluzioni sostenibili e durature per affrontare questa sfida.', 2, 3, NULL, '2024-04-20 12:08:55'),
(15, 'Cybersecurity in un Mondo Interconnesso: Sfide e Strategie per Proteggere Dati e Infrastrutture Critiche', 'Dalle Minacce Informatiche agli Attacchi alla Sicurezza Nazionale, Come Affrontare le Crescenti Minacce Cibernetiche', 'La cybersecurity è diventata una delle principali preoccupazioni nel mondo moderno, con un aumento esponenziale delle minacce informatiche e degli attacchi cibernetici contro individui, aziende e istituzioni governative. Le organizzazioni devono affrontare una vasta gamma di minacce, tra cui hackeraggio, malware, phishing e attacchi ransomware, che possono causare danni finanziari, compromettere la privacy e mettere a rischio la sicurezza nazionale.\r\n\r\nLe infrastrutture critiche, come reti energetiche, sistemi finanziari e servizi sanitari, sono particolarmente vulnerabili agli attacchi informatici e possono avere conseguenze catastrofiche se compromesse. Di conseguenza, è essenziale per i governi e le organizzazioni investire in misure di cybersecurity robuste, comprese la protezione dei dati, la gestione dei rischi e la formazione del personale.\r\n\r\nTuttavia, la cybersecurity non riguarda solo la protezione delle infrastrutture critiche, ma anche la difesa dei dati personali e la protezione della privacy degli individui. Con sempre più persone che lavorano da remoto e condividono informazioni sensibili online, è fondamentale per tutti essere consapevoli delle minacce informatiche e adottare pratiche di sicurezza informatica migliori.\r\n\r\nAffrontare le minacce cibernetiche richiederà una risposta globale e collaborativa, che coinvolga governi, industrie e società civile. Solo attraverso una cooperazione internazionale e un impegno concreto è possibile mitigare le minacce cibernetiche e proteggere la sicurezza e la privacy nel mondo digitale sempre più interconnesso in cui viviamo.', 2, 2, NULL, '2024-04-21 06:20:39'),
(16, 'La Rivoluzione dell\'Intelligenza Artificiale: Come la Tecnologia Sta Trasformando Ogni Aspetto della Nostra Vita', 'Dalle Auto Guidate agli Assistenti Virtuali, Il Potenziale Infinito dell\'IA nell\'Età Digitale', 'L\'intelligenza artificiale (IA) sta rivoluzionando il modo in cui viviamo e lavoriamo, offrendo nuove opportunità e sfide in ogni settore e settore industriale. Dalle auto guidate alla diagnostica medica, dall\'analisi dei dati alla produzione automatizzata, l\'IA sta trasformando radicalmente il panorama tecnologico e socio-economico.\r\n\r\nUna delle applicazioni più evidenti dell\'IA è nel settore dei trasporti, con l\'emergere delle auto autonome che promettono di migliorare la sicurezza stradale, ridurre gli incidenti e rendere il trasporto più efficiente ed ecologico. Tuttavia, l\'adozione su larga scala delle auto autonome solleva anche questioni etiche e giuridiche riguardo alla responsabilità e alla sicurezza dei veicoli.\r\n\r\nOltre al settore dei trasporti, l\'IA sta anche rivoluzionando il settore sanitario, con sistemi di intelligenza artificiale in grado di diagnosticare malattie, pianificare trattamenti e migliorare l\'efficienza delle cure mediche. Tuttavia, l\'adozione di tali tecnologie solleva anche questioni riguardo alla privacy dei dati e all\'equità nell\'accesso alle cure.\r\n\r\nIn definitiva, l\'IA offre un potenziale infinito per migliorare la nostra vita e il nostro mondo, ma presenta anche sfide significative che devono essere affrontate. È essenziale che governi, industrie e società civile collaborino per sviluppare e utilizzare l\'IA in modo responsabile ed etico, garantendo che sia al servizio del bene comune e del progresso umano.', 2, 2, NULL, '2024-04-21 14:33:22'),
(17, 'Il Futuro del Trasporto Sostenibile: Innovazioni e Tendenze nel Settore dei Veicoli Elettrici', 'Dalla Riduzione delle Emissioni alla Mobilità Urbana, Come i Veicoli Elettrici Stanno Cambiando il Modo in cui Ci Spostiamo', 'I veicoli elettrici (EV) stanno diventando sempre più popolari come alternativa ai veicoli tradizionali a combustibile fossile, offrendo una soluzione sostenibile per ridurre le emissioni di gas serra e mitigare il cambiamento climatico. Con l\'aumento della consapevolezza ambientale e l\'avanzamento della tecnologia delle batterie, i veicoli elettrici stanno rapidamente diventando una scelta attraente per i consumatori di tutto il mondo.\r\n\r\nUna delle principali sfide per l\'adozione su larga scala dei veicoli elettrici è l\'infrastruttura di ricarica, con la necessità di sviluppare reti di ricarica accessibili e convenienti per consentire ai proprietari di veicoli elettrici di ricaricare facilmente i loro veicoli ovunque si trovino. Tuttavia, con gli investimenti in nuove stazioni di ricarica e tecnologie di ricarica rapida, l\'infrastruttura di ricarica sta migliorando rapidamente in tutto il mondo.\r\n\r\nInoltre, i veicoli elettrici stanno anche cambiando il modo in cui concepiamo la mobilità urbana, con l\'emergere di nuovi modelli di condivisione e servizi di mobilità condivisa che utilizzano veicoli elettrici per ridurre l\'inquinamento e migliorare la qualità dell\'aria nelle città. Questo cambiamento verso una mobilità più sostenibile è fondamentale per affrontare le sfide legate all\'inquinamento atmosferico e al cambiamento climatico nelle aree urbane densamente popolate.\r\n\r\nCon il continuo sviluppo della tecnologia delle batterie e l\'espansione dell\'infrastruttura di ricarica, il futuro dei veicoli elettrici appare sempre più luminoso. Tuttavia, è importante che governi, industrie e società civile lavorino insieme per superare le sfide e massimizzare i benefici dei veicoli elettrici per le generazioni future.', 2, 2, NULL, '2024-04-14 05:12:34'),
(18, 'La Rivoluzione delle Criptovalute: Impatti e Opportunità nel Mondo delle Finanze Digitali', 'Dalle Nuove Forme di Pagamento alla Finanza Decentralizzata, Come le Criptovalute Stanno Cambiando il Modo in cui Pensiamo al Denaro', 'Le criptovalute stanno rivoluzionando il mondo delle finanze digitali, offrendo nuove forme di pagamento, investimento e finanza decentralizzata che sfidano i modelli tradizionali di banche e istituzioni finanziarie. Con l\'aumento della popolarità e dell\'adozione delle criptovalute, stiamo assistendo a un cambiamento radicale nel modo in cui pensiamo al denaro e alle transazioni finanziarie.\r\n\r\nUna delle principali innovazioni delle criptovalute è la tecnologia blockchain, che consente transazioni sicure e trasparenti senza la necessità di intermediari o autorità centrali. Questo ha il potenziale per ridurre i costi delle transazioni, eliminare le frodi e consentire un accesso più equo ai servizi finanziari per le persone non bancarizzate in tutto il mondo.\r\n\r\nInoltre, le criptovalute stanno anche aprendo nuove opportunità di investimento e finanziamento attraverso la finanza decentralizzata (DeFi), consentendo agli utenti di accedere a prestiti, risparmi e altre forme di servizi finanziari senza intermediari tradizionali. Tuttavia, la DeFi solleva anche preoccupazioni riguardo alla sicurezza e alla regolamentazione, con il rischio di frodi e truffe che minacciano gli investitori e gli utenti.\r\n\r\nAffrontare queste sfide richiederà una risposta globale e coordinata da parte di governi, istituzioni finanziarie e società civile. È essenziale sviluppare un quadro normativo chiaro e coerente per regolare le criptovalute e proteggere gli utenti, mentre si promuove l\'innovazione e si sfruttano i benefici delle nuove tecnologie finanziarie per creare un sistema finanziario più inclusivo e resiliente per tutti.', 2, 2, NULL, '2024-04-14 10:26:17'),
(19, 'Ritorno al Vinile: Il Resurgere dell\'Amore per i Dischi in un\'Epoca Digitale', 'Dalla Qualità del Suono all\'Esperienza Tattile, Perché i Vinili Stanno Tornando di Moda', 'Negli ultimi anni, c\'è stato un notevole ritorno dell\'amore per i dischi in vinile, nonostante l\'era digitale dominante della musica streaming. Gli appassionati di musica di tutte le età stanno riscoprendo il fascino dei vinili per la loro calda qualità del suono, la copertina artistica e l\'esperienza tattile unica che offrono.\r\n\r\nI vinili offrono una qualità del suono che molti appassionati ritengono superiore a quella delle versioni digitali, con un suono più ricco e autentico che cattura l\'essenza originale della registrazione. Inoltre, il vinile offre un\'esperienza fisica tangibile, con la possibilità di sfogliare le copertine degli album e leggere le note di copertina mentre si ascolta la musica.\r\n\r\nOltre alla qualità del suono e all\'esperienza tattile, i vinili hanno anche un valore collezionistico, con molte edizioni rare e limitate che diventano pezzi da collezione ambiti tra gli appassionati di musica. Questo ha contribuito a creare un mercato fiorente per i dischi in vinile, con una crescente domanda da parte di collezionisti e appassionati in tutto il mondo.\r\n\r\nIn un\'epoca in cui la musica è diventata sempre più digitale e facilmente accessibile, il ritorno dell\'amore per i vinili è un segno che c\'è ancora spazio per l\'esperienza fisica e tangibile della musica. Mentre la tecnologia continua a evolversi, i vinili rimangono un\'importante parte del panorama musicale, offrendo un ponte tra il passato e il presente per gli appassionati di musica di tutte le generazioni.', 3, 3, 'u9f27.jpg', '2024-04-15 07:39:50'),
(20, 'La Rivoluzione del Podcast: Come il Medium Audio Sta Ridefinendo il Consumo di Contenuti Musicali', 'Dalle Conversazioni Intime ai Programmi di Approfondimento, L\'Innovazione dei Podcast nel Mondo della Musica', 'I podcast musicali stanno diventando sempre più popolari come mezzo per esplorare e approfondire la musica in modi nuovi e innovativi. Da conversazioni intime con artisti e musicisti a programmi di approfondimento sulla storia della musica e sui generi musicali, i podcast offrono una vasta gamma di contenuti per gli appassionati di musica di tutte le età e gusti.\r\n\r\nUna delle ragioni del successo dei podcast musicali è la loro natura intima e personale, che consente agli ascoltatori di connettersi più profondamente con la musica e gli artisti che amano. Le interviste con musicisti, produttori e esperti del settore offrono uno sguardo dietro le quinte del processo creativo e delle storie dietro le canzoni che amiamo.\r\n\r\nInoltre, i podcast offrono anche una piattaforma per esplorare nuove forme di narrazione musicale, con programmi che esplorano temi come la politica, la cultura e la società attraverso il filtro della musica. Questo ha creato un\'opportunità per gli appassionati di musica di approfondire la loro comprensione del mondo e di scoprire nuove prospettive attraverso la musica.\r\n\r\nCon il continuo sviluppo della tecnologia e l\'aumento dell\'accessibilità dei podcast, il medium audio sta diventando sempre più importante nel mondo della musica. Mentre l\'industria continua a evolversi, i podcast continueranno a svolgere un ruolo significativo nel plasmare il modo in cui consumiamo e interagiamo con la musica.', 3, 2, '6s13ls.jpg', '2024-04-15 16:51:28'),
(21, 'Il Potere della Musica dal Vivo: Ritorno agli Spettacoli dal Vivo Dopo la Pandemia', 'Dalle Esibizioni Intime ai Festival Epici, L\'Importanza dei Concerti e degli Eventi Musicali per la Comunità', 'Dopo mesi di chiusure e restrizioni dovute alla pandemia da COVID-19, il ritorno agli spettacoli dal vivo è diventato un momento di celebrazione e rinascita per gli amanti della musica in tutto il mondo. Dalle esibizioni intime nei locali alle grandi masse dei festival musicali, gli eventi dal vivo stanno riprendendo vita, offrendo una via per riconnettersi con la musica e con la comunità.\r\n\r\nGli spettacoli dal vivo non sono solo una forma di intrattenimento, ma anche un\'esperienza sociale e culturale che unisce le persone attraverso la musica. La condivisione di emozioni e esperienze con altri fan durante un concerto crea un senso di appartenenza e comunione che va oltre la musica stessa, creando ricordi indelebili e legami duraturi tra gli spettatori.\r\n\r\nInoltre, gli eventi dal vivo sono fondamentali per l\'industria musicale, offrendo agli artisti una piattaforma per esibirsi, guadagnare e connettersi con i propri fan. Dopo mesi di cancellazioni e posticipi, il ritorno agli spettacoli dal vivo è una luce alla fine del tunnel per molti artisti e professionisti del settore che hanno subito perdite finanziarie e creative durante la pandemia.\r\n\r\nMentre il mondo si riprende dalla pandemia, è importante riconoscere il valore dei concerti e degli eventi musicali dal vivo nella nostra vita e nella nostra cultura. Che si tratti di un concerto in un piccolo club locale o di un festival di musica internazionale, gli spettacoli dal vivo continuano a svolgere un ruolo fondamentale nel nutrire la nostra anima e nel portare gioia e ispirazione nelle nostre vite.', 3, 2, 'brf0vj.jpg', '2024-04-16 06:04:11'),
(22, 'Musica e Benessere: Il Potere Terapeutico della Musica nella Salute Mentale e Fisica', 'Dalla Riduzione dello Stress alla Promozione della Guarigione, Come la Musica Sta Influendo sulla Nostra Salute e Benessere', 'La musica ha un potere straordinario di influenzare la nostra salute mentale e fisica, offrendo una forma di terapia accessibile e efficace per affrontare una vasta gamma di problemi e disturbi. Dalla riduzione dello stress e dell\'ansia alla promozione della guarigione e del benessere generale, la musica può svolgere un ruolo significativo nel migliorare la nostra qualità di vita e nel promuovere il nostro equilibrio emotivo e fisico.\r\n\r\nLa ricerca ha dimostrato che ascoltare musica può avere effetti positivi sul nostro umore, riducendo lo stress e l\'ansia e promuovendo sentimenti di calma e relax. Inoltre, la musica può anche avere un impatto sulla nostra salute fisica, migliorando la funzione cardiaca, riducendo la pressione sanguigna e alleviando il dolore.\r\n\r\nOltre all\'ascolto passivo della musica, la musica attiva, come suonare uno strumento o cantare, può anche offrire benefici significativi per la salute e il benessere. Partecipare attivamente alla creazione musicale può stimolare il cervello, migliorare la coordinazione e offrire un\'opportunità per l\'espressione creativa e l\'autoscatto.\r\n\r\nCon il crescente riconoscimento del potere terapeutico della musica, sempre più professionisti della salute mentale e fisica stanno integrando la musica nella loro pratica clinica per aiutare i pazienti a raggiungere i loro obiettivi di salute e benessere. Mentre continuiamo a scoprire i molteplici modi in cui la musica può influenzare la nostra vita, è chiaro che la musica continuerà a svolgere un ruolo significativo nel promuovere la nostra salute e felicità.', 3, 2, NULL, '2024-04-16 12:17:55'),
(23, 'Musica e Tecnologia: Come l\'Intelligenza Artificiale Sta Rivoluzionando la Creazione Musicale', 'Dalle Composizioni Generative agli Strumenti Virtuali, Il Futuro della Musica Attraverso l\'IA', 'L\'intelligenza artificiale sta trasformando il modo in cui la musica viene creata, prodotta e consumata, aprendo nuove frontiere creative e rivoluzionando l\'industria musicale. Grazie agli algoritmi di apprendimento automatico e alle tecnologie di intelligenza artificiale, gli artisti e i musicisti hanno a disposizione strumenti sempre più sofisticati per esplorare nuovi territori musicali e sperimentare con suoni e generi innovativi.\r\n\r\nUna delle applicazioni più promettenti dell\'IA nella musica è la composizione generativa, dove gli algoritmi sono in grado di creare musica originale utilizzando pattern e strutture musicali apprese da un vasto corpus di dati. Questo ha il potenziale per ampliare le possibilità creative degli artisti e per creare musica che va oltre i confini della tradizione e della convenzione.\r\n\r\nInoltre, l\'IA sta anche rivoluzionando il processo di produzione musicale, con strumenti virtuali e plug-in che utilizzano algoritmi avanzati per creare suoni e effetti sonori unici e innovativi. Questo offre agli artisti una gamma sempre più ampia di opzioni per sperimentare con la produzione musicale e per creare suoni che erano impensabili solo pochi anni fa.\r\n\r\nTuttavia, mentre l\'IA offre infinite possibilità per l\'innovazione musicale, solleva anche domande riguardo alla creatività e all\'autenticità artistica. Mentre gli algoritmi possono generare musica tecnicamente competente, manca loro la profondità emotiva e l\'individualità che caratterizzano le grandi opere musicali. Di conseguenza, è importante che gli artisti utilizzino l\'IA come uno strumento per esplorare nuovi orizzonti musicali, piuttosto che come un sostituto per la creatività umana.\r\n\r\nCon il continuo sviluppo della tecnologia e l\'innovazione nell\'ambito dell\'intelligenza artificiale, il futuro della musica è entusiasmante e pieno di possibilità. Mentre esploriamo le nuove frontiere della creazione musicale, è fondamentale che mantengamo il rispetto per la tradizione e per l\'essenza stessa della musica come espressione umana e universale.', 3, 3, 'patjtv.jpg', '2024-04-17 08:29:38'),
(24, 'Musica e Identità Culturale: Come la Musica Riflette e Modella le Identità Culturali di Diverse Comunità', 'Dalla Musica Tradizionale alla Musica Popolare, L\'Influenza della Musica sulla Costruzione dell\'Identità Culturale', 'La musica ha sempre giocato un ruolo fondamentale nella costruzione e nell\'espressione delle identità culturali di diverse comunità in tutto il mondo. Dalla musica tradizionale che celebra le radici e la storia di un popolo alla musica popolare che riflette le sfide e le aspirazioni di una generazione, la musica è un veicolo potente per la trasmissione di valori, credenze e storie culturali.\r\n\r\nIn molte culture, la musica è una parte integrante delle celebrazioni, dei riti di passaggio e delle pratiche spirituali, svolgendo un ruolo centrale nel rafforzare il senso di identità e appartenenza di un individuo a una comunità più ampia. Attraverso la musica, le persone possono connettersi con le loro radici culturali, mantenere vive le tradizioni e trasmettere conoscenze e insegnamenti ai posteri.\r\n\r\nAllo stesso tempo, la musica popolare ha il potere di unire le persone attraverso la condivisione di esperienze comuni e la creazione di una cultura condivisa. La musica popolare riflette le sfide e le aspirazioni di una generazione, offrendo uno specchio della società e una voce per coloro che altrimenti potrebbero sentirsi emarginati o non rappresentati.\r\n\r\nIn un mondo sempre più globale e interconnesso, la musica continua a svolgere un ruolo cruciale nel plasmare la nostra comprensione delle diverse culture e nel promuovere il rispetto e la comprensione tra le persone di background diversi. Mentre continuiamo a esplorare e celebrare la diversità culturale attraverso la musica, è importante riconoscere il potere unificante e trasformativo della musica nel nostro mondo sempre più interconnesso.\r\n\r\n', 3, 2, NULL, '2024-04-17 14:43:20'),
(25, 'La Musica come Linguaggio Universale: Come la Musica Supera le Barriere Culturali e Linguistiche', 'Dalle Melodie alle Armonie, Come la Musica Ci Unisce Oltre le Differenze', 'La musica ha il potere di superare le barriere culturali e linguistiche, offrendo un linguaggio universale che può essere compreso e apprezzato da persone di tutto il mondo. Attraverso le melodie, le armonie e i ritmi, la musica comunica emozioni, sentimenti e esperienze condivise che vanno oltre le differenze di lingua, cultura e background.\r\n\r\nUna delle ragioni per cui la musica è così potente come linguaggio universale è che parla direttamente al cuore umano, trasmettendo emozioni e sentimenti in modi che vanno oltre le parole. Anche se non conosciamo la lingua o la cultura di origine di una determinata musica, possiamo comunque connetterci con essa attraverso le sue qualità emotive e universali.\r\n\r\nInoltre, la musica ha il potere di unire le persone attraverso la condivisione di esperienze e tradizioni musicali. Eventi musicali come concerti e festival offrono un\'opportunità per le persone di diverse culture e background di riunirsi e celebrare la musica insieme, creando un senso di comunità e appartenenza che va oltre le differenze.\r\n\r\nCon il crescente accesso alla musica attraverso piattaforme di streaming e social media, la musica continua a svolgere un ruolo sempre più importante nel connettere le persone di tutto il mondo. Mentre continuiamo a esplorare e celebrare la diversità musicale del nostro pianeta, è importante riconoscere il potere unificante e trasformativo della musica nel promuovere la comprensione e l\'unità tra le persone.', 3, 3, NULL, '2024-04-18 05:55:03'),
(26, 'usica e Memoria: Il Potere della Musica nel Richiamare Ricordi e Emozioni', 'Dalle Canzoni della Nostra Infanzia alle Soundtrack della Nostra Vita, Come la Musica Ci Accompagna Attraverso i Momenti Chiave', 'La musica ha il potere di richiamare ricordi e emozioni in modi profondi e significativi, offrendo un ponte verso il passato e un\'ancora di stabilità nel presente. Dalle canzoni della nostra infanzia alle soundtrack dei nostri momenti più significativi, la musica è intrecciata nella trama della nostra vita, ricordandoci momenti speciali e accompagnandoci attraverso le sfide e le gioie della vita.\r\n\r\nUno dei motivi per cui la musica è così efficace nel richiamare ricordi è che è associata a esperienze specifiche nella nostra vita, creando collegamenti neurali che legano la musica agli eventi e alle emozioni che abbiamo vissuto. Anche una breve melodia o un frammento di una canzone può scatenare una cascata di ricordi e sensazioni che ci riportano indietro nel tempo.\r\n\r\nInoltre, la musica può anche influenzare il nostro stato emotivo e il nostro benessere psicologico, offrendo conforto, ispirazione e sostegno durante i momenti difficili. Molte persone trovano sollievo dallo stress e dall\'ansia attraverso l\'ascolto della musica, che agisce come una forma di terapia emotiva e un mezzo per esprimere e elaborare le proprie emozioni.\r\n\r\nCon il passare del tempo, la musica diventa un tesoro di ricordi preziosi che ci accompagnano lungo il nostro viaggio attraverso la vita. Che si tratti di una canzone che ci ricorda un amore perduto, una melodia che ci riporta indietro alla nostra infanzia o una soundtrack che accompagna i momenti più significativi della nostra vita, la musica continua a svolgere un ruolo importante nel plasmare la nostra esperienza umana.\r\n\r\n', 3, 3, NULL, '2024-04-18 13:08:46'),
(27, 'Musica e Movimento: L\'Interconnessione tra Musica e Danza nell\'Espressione Umana', 'Dalla Gioia del Ritmo alla Libera Espressione del Corpo, Come la Musica e la Danza si Intrecciano per Creare Arte e Bellezza', 'La musica e la danza sono intrinsecamente legate nell\'espressione umana, offrendo un modo per comunicare emozioni, sentimenti e storie attraverso il movimento e il suono. Dalla gioia del ritmo al piacere della libera espressione del corpo, la musica e la danza si intrecciano in un intricato intreccio di arte e bellezza che risuona nel cuore umano.\r\n\r\nLa musica ha il potere di ispirare il movimento, fornendo un ritmo e una melodia che invitano il corpo a muoversi e ballare. La danza, a sua volta, offre un modo per interpretare e tradurre la musica in movimento fisico, creando uno spettacolo visivo che amplifica e arricchisce l\'esperienza musicale.\r\n\r\nIn molte culture di tutto il mondo, la musica e la danza sono parte integrante delle celebrazioni, delle cerimonie e delle pratiche spirituali, offrendo un\'opportunità per le persone di connettersi con se stesse, con gli altri e con il mondo intorno a loro attraverso il movimento e il suono. La danza è un linguaggio universale che supera le barriere culturali e linguistiche, offrendo un modo per esprimere emozioni e sentimenti che vanno oltre le parole.\r\n\r\nCon il passare del tempo, la musica e la danza continuano a evolversi e a cambiare, riflettendo e influenzando le tendenze culturali e sociali del momento. Tuttavia, la loro essenza rimane la stessa: un\'espressione dell\'anima umana che celebra la bellezza e la diversità della nostra esperienza umana.', 3, 2, NULL, '2024-04-19 09:20:29');
INSERT INTO `articles` (`id`, `title`, `subtitle`, `content`, `fkGenre`, `fkJournalist`, `imgUrl`, `publishing_date`) VALUES
(28, 'Cambiamenti Climatici e Politiche Ambientali: Affrontare la Crisi Climatica attraverso Azioni Concrete e Cooperazione Globale', 'Dalle Emissioni di Gas Serra alla Conservazione della Biodiversità, L\'Urgenza di Politiche Ambiziose per Salvaguardare il Nostro Pianeta', 'La crisi climatica rappresenta una delle sfide più urgenti e pressanti del nostro tempo, con gravi conseguenze per l\'ambiente, la salute umana e la sicurezza globale. Affrontare efficacemente i cambiamenti climatici richiederà azioni concrete e politiche ambiziose da parte dei governi, insieme a una forte cooperazione globale per ridurre le emissioni di gas serra, proteggere e ripristinare gli ecosistemi e adattarsi agli impatti climatici in corso.\r\n\r\nLe politiche ambientali devono affrontare una serie di questioni cruciali, tra cui la riduzione delle emissioni di gas serra, la transizione verso fonti energetiche rinnovabili, la conservazione della biodiversità e la gestione sostenibile delle risorse naturali. Queste politiche devono essere integrate in tutti i settori della società, compresa l\'energia, l\'agricoltura, i trasporti e l\'industria, per massimizzare l\'impatto e ridurre al minimo gli effetti negativi sulle comunità più vulnerabili.\r\n\r\nInoltre, è essenziale che i governi lavorino insieme attraverso accordi internazionali come l\'Accordo di Parigi sul clima per stabilire obiettivi ambiziosi e impegni vincolanti per ridurre le emissioni di gas serra e limitare l\'aumento delle temperature globali. Solo attraverso una cooperazione globale e un impegno concreto è possibile affrontare la crisi climatica e proteggere il nostro pianeta per le generazioni future.', 6, 2, 'nj0muh.jpg', '2024-04-19 17:32:11'),
(29, 'Democrazia e Diritti Umani: Promuovere Valori Fondamentali in un Mondo in Evoluzione Politica', 'Dalle Minacce alla Libertà di Espressione alla Lotta per l\'Uguaglianza di Genere, I Sfide e Le Opportunità per la Democrazia nel 21° Secolo', 'La democrazia e i diritti umani rimangono fondamentali nel plasmare le società giuste e inclusive del 21° secolo, ma affrontano sempre più minacce e sfide in un mondo in evoluzione politica. Dalle crescenti minacce alla libertà di espressione e all\'indipendenza dei media alla persistente discriminazione e violenza contro le minoranze e le donne, è essenziale che i governi e la società civile lavorino insieme per promuovere e difendere questi valori fondamentali.\r\n\r\nLa protezione della libertà di espressione e dei diritti umani è essenziale per garantire una società aperta, inclusiva e democratica, in cui ogni individuo ha la libertà di esprimere le proprie opinioni e partecipare attivamente al processo decisionale. Tuttavia, in molti paesi in tutto il mondo, la libertà di espressione è minacciata da leggi repressive, censura e persecuzioni politiche, che limitano la voce e l\'agency dei cittadini.\r\n\r\nInoltre, la lotta per l\'uguaglianza di genere rimane una sfida chiave per la democrazia, con molte donne che continuano a subire discriminazioni, violenze e disparità di potere in molte aree della vita pubblica e privata. È essenziale che i governi adottino politiche e misure concrete per promuovere l\'uguaglianza di genere e proteggere i diritti delle donne e delle ragazze in tutto il mondo.\r\n\r\nAffrontare queste sfide richiederà un impegno concreto e sostenuto da parte dei governi, insieme a una forte mobilitazione della società civile e dei cittadini per promuovere e difendere i valori fondamentali della democrazia e dei diritti umani. Solo attraverso una cooperazione globale e un impegno concreto è possibile costruire un mondo più giusto, libero e inclusivo per tutti.', 6, 2, NULL, '2024-04-20 07:44:54'),
(30, 'Crisi Umanitaria e Cooperazione Internazionale: Affrontare le Sfide Globali attraverso Solidarietà e Impegno Comune', 'Dalle Emergenze Umanitarie alle Migrazioni Forzate, Il Ruolo Cruciale della Cooperazione Globale nella Risoluzione delle Crisi Umanitarie', 'Le crisi umanitarie rappresentano una delle sfide più pressanti e urgenti del nostro tempo, con milioni di persone in tutto il mondo che affrontano violenza, conflitti armati, povertà estrema, fame e dislocazione forzata. Affrontare efficacemente queste crisi richiederà una forte cooperazione internazionale e un impegno comune da parte dei governi, delle organizzazioni internazionali e della società civile.\r\n\r\nUna delle sfide principali è la gestione delle emergenze umanitarie causate da conflitti armati, disastri naturali e altre crisi, che richiedono una risposta rapida e coordinata per garantire l\'accesso ai beni essenziali, come cibo, acqua, riparo e assistenza medica. Tuttavia, spesso la risposta umanitaria è ostacolata da ostacoli politici, burocratici e finanziari, che limitano la capacità di aiutare coloro che ne hanno più bisogno.\r\n\r\nInoltre, la migrazione forzata rappresenta un\'altra sfida umanitaria significativa, con milioni di persone che fuggono da conflitti, persecuzioni e povertà in cerca di sicurezza e protezione in altri paesi. Affrontare le cause sottostanti della migrazione forzata richiederà un impegno globale per promuovere la pace, la stabilità e lo sviluppo nei paesi colpiti dalla crisi, insieme a politiche e pratiche di accoglienza e integrazione nei paesi di destinazione.\r\n\r\nCon il continuo aumento delle crisi umanitarie in tutto il mondo, è essenziale che i governi, le organizzazioni internazionali e la società civile lavorino insieme per affrontare queste sfide in modo efficace e umanitario. Solo attraverso la solidarietà e l\'impegno comune è possibile garantire un futuro migliore e più sicuro per le persone colpite dalle crisi umanitarie in tutto il mondo.', 6, 2, NULL, '2024-04-20 12:57:37'),
(31, 'Tecnologia e Privacy: Bilanciare l\'Innovazione Tecnologica con la Protezione dei Dati Personali', 'Dalle Tecnologie di Sorveglianza alla Raccolta dei Dati, I Dilemmi Etici e Politici della Tecnologia nell\'Era Digitale', 'L\'avanzamento della tecnologia digitale ha portato a un\'esplosione di innovazione e opportunità in tutti gli aspetti della nostra vita, ma ha anche sollevato importanti questioni etiche e politiche sulla privacy e la sicurezza dei dati personali. Affrontare queste sfide richiederà un bilanciamento delicato tra l\'innovazione tecnologica e la protezione dei diritti individuali e della privacy.\r\n\r\nUna delle principali preoccupazioni è la diffusione delle tecnologie di sorveglianza, che consentono ai governi e alle aziende di monitorare e tracciare i movimenti e le attività delle persone in modi senza precedenti. Mentre queste tecnologie possono offrire vantaggi in termini di sicurezza pubblica e prevenzione del crimine, sollevano anche serie preoccupazioni riguardo alla privacy e alla libertà civili, mettendo a rischio la nostra libertà e autonomia individuali.\r\n\r\nInoltre, la raccolta e l\'uso dei dati personali da parte delle aziende e delle piattaforme online hanno sollevato preoccupazioni riguardo alla protezione della privacy e alla sicurezza dei dati. Con il crescente utilizzo di algoritmi e intelligenza artificiale per analizzare e sfruttare i dati personali, è essenziale che vengano adottate misure per garantire la trasparenza, la responsabilità e il consenso informato degli utenti nella gestione dei loro dati.\r\n\r\nAffrontare questi dilemmi richiederà politiche e regolamentazioni robuste che bilancino l\'innovazione tecnologica con la protezione dei diritti individuali e della privacy. È essenziale che i governi lavorino insieme con le aziende, la società civile e gli esperti del settore per sviluppare normative e pratiche che garantiscano che la tecnologia sia utilizzata in modo etico e responsabile, nel rispetto dei diritti umani e della dignità individuale.', 6, 3, 'q9lnxj.jpg', '2024-04-21 08:09:19'),
(32, 'Globalizzazione ed Economia: Affrontare le Disuguaglianze e le Tensioni Sociali in un Mondo Interconnesso', 'Dalle Disuguaglianze Economiche alla Perdita di Posti di Lavoro, Le Implicazioni della Globalizzazione sull\'Economia e la Società', 'La globalizzazione ha portato a un\'interconnessione senza precedenti tra le economie, le culture e le società di tutto il mondo, offrendo opportunità di crescita economica e sviluppo, ma anche creando disuguaglianze e tensioni sociali. Affrontare efficacemente i dilemmi della globalizzazione richiederà politiche e strategie che promuovano la giustizia economica, l\'inclusione sociale e lo sviluppo sostenibile per tutti.\r\n\r\nUna delle principali preoccupazioni è la crescente disuguaglianza economica, con un divario sempre più ampio tra i ricchi e i poveri in molte parti del mondo. Mentre la globalizzazione ha portato a una maggiore prosperità economica per alcuni, ha anche lasciato molti altri indietro, creando tensioni sociali e politiche che minacciano la stabilità e la coesione sociale.\r\n\r\nInoltre, la globalizzazione ha anche avuto un impatto significativo sull\'occupazione e sul mercato del lavoro, con la perdita di posti di lavoro tradizionali nei settori manifatturiero e agricolo e la crescita del lavoro precario e dell\'economia gig. Affrontare queste sfide richiederà politiche e investimenti che promuovano la creazione di posti di lavoro dignitosi e sostenibili e garantiscano che tutti possano beneficiare dei vantaggi della globalizzazione.\r\n\r\nAllo stesso tempo, è essenziale che i governi lavorino insieme attraverso accordi internazionali e partenariati per affrontare le sfide globali come il cambiamento climatico, la povertà estrema e le malattie infettive. Solo attraverso una cooperazione globale e un impegno comune è possibile costruire un futuro più equo, sostenibile e inclusivo per tutti, in cui ogni individuo ha l\'opportunità di realizzare il proprio potenziale e contribuire al benessere collettivo.', 6, 3, 'ncg4u.jpg', '2024-04-21 16:21:02'),
(36, 'Titolo', 'Sottotitolo', 'Dopo quasi due anni Nicolas ha finito la Lezione 1 di TPI; ne mancano solo 7 almeno finirà per la pensione.', 2, 3, 'vwyf8u.jpg', '2024-04-26 09:12:51');

-- --------------------------------------------------------

--
-- Struttura della tabella `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `fkUser` varchar(36) DEFAULT NULL,
  `fkArticle` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `publishing_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `comments`
--

INSERT INTO `comments` (`id`, `fkUser`, `fkArticle`, `content`, `publishing_date`) VALUES
(1, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 28, 'Prova commento admin', '2024-04-21 15:26:17'),
(2, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6, 'prova commento admin 2', '2024-04-21 15:29:07'),
(3, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 31, 'altro commento di politica', '2024-04-21 15:34:55'),
(4, '28639e64-ffd5-11ee-9de7-e86a6456e3ba', 6, 'commento 2 per mike tyson', '2024-04-21 15:51:17'),
(5, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 32, 'commento', '2024-04-24 05:20:30'),
(6, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6, 'prova commento id server', '2024-04-24 05:23:00'),
(7, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6, 'component modificato', '2024-04-24 05:23:46'),
(8, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6, 'sto provando a far selire in feed questo articolo', '2024-04-24 16:33:23'),
(9, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6, 'devo mettere un sacco di commenti', '2024-04-24 16:33:31'),
(10, 'b37d5e82-03ac-11ef-a9cf-e86a6456e3ba', 13, 'ciao', '2024-04-26 09:10:32');

-- --------------------------------------------------------

--
-- Struttura della tabella `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `genres`
--

INSERT INTO `genres` (`id`, `name`, `description`) VALUES
(1, 'Sport', 'Sport\r\n'),
(2, 'Actuality\r\n', 'News today'),
(3, 'Music', 'Songs'),
(6, 'Politics', 'Politics');

-- --------------------------------------------------------

--
-- Struttura della tabella `journalists`
--

CREATE TABLE `journalists` (
  `id` int(11) NOT NULL,
  `fkUser` varchar(36) DEFAULT NULL,
  `fkRegister` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `journalists`
--

INSERT INTO `journalists` (`id`, `fkUser`, `fkRegister`) VALUES
(2, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', '6eb14c4a-ffd5-11ee-9de7-e86a6456e3ba'),
(3, 'c128ac23-ffd5-11ee-9de7-e86a6456e3ba', 'f48f0337-ffd5-11ee-9de7-e86a6456e3ba');

-- --------------------------------------------------------

--
-- Struttura della tabella `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `fkUser` varchar(36) DEFAULT NULL,
  `fkArticle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `likes`
--

INSERT INTO `likes` (`id`, `fkUser`, `fkArticle`) VALUES
(1, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 28),
(3, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 14),
(4, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 31),
(5, '28639e64-ffd5-11ee-9de7-e86a6456e3ba', 28),
(6, '28639e64-ffd5-11ee-9de7-e86a6456e3ba', 6),
(8, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 7),
(9, '15a769dc-ffd5-11ee-9de7-e86a6456e3ba', 6),
(13, 'dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 6),
(14, 'b37d5e82-03ac-11ef-a9cf-e86a6456e3ba', 13);

--
-- Trigger `likes`
--
DELIMITER $$
CREATE TRIGGER `before_likes_insert` BEFORE INSERT ON `likes` FOR EACH ROW BEGIN
    DECLARE existing_rows INT;

    -- Controlla se esiste già una riga con la stessa coppia fkArticle, fkUser
    SELECT COUNT(*) INTO existing_rows
    FROM likes
    WHERE fkArticle = NEW.fkArticle AND fkUser = NEW.fkUser;

    -- Se esiste già una riga, genera un errore
    IF existing_rows > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Impossibile inserire il nuovo record. Esiste già una riga con la stessa coppia fkArticle, fkUser';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `register`
--

CREATE TABLE `register` (
  `id` varchar(36) NOT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(10) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `IDcode` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `register`
--

INSERT INTO `register` (`id`, `nation`, `province`, `town`, `street`, `house_number`, `postal_code`, `phone`, `IDcode`) VALUES
('6eb14c4a-ffd5-11ee-9de7-e86a6456e3ba', 'Italy', 'BS', 'Brescia', 'Via 1234', '1', '25010', '3903903900', 'abcdefg1234'),
('f48f0337-ffd5-11ee-9de7-e86a6456e3ba', 'Italy', 'ROMA', 'Roma', 'Colosseo', '1', '10100', '3213213210', 'hijklm5678');

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slogan` varchar(300) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `sponsorUrl` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `slogan`, `imgUrl`, `sponsorUrl`) VALUES
(1, 'Muschio selvaggio', 'Vabbè non c\'è più Fedez', 'muschio-selvaggio.png', 'https://www.youtube.com/@muschioselvaggioo'),
(2, 'Nike', 'Just Do It', 'nike.png', 'https://www.nike.com'),
(3, 'Ikea', 'We are restless doers, driven by curiosity, enthusiasm and a desire to create a better world', 'ikea.png', 'https://www.ikea.com'),
(4, 'BMW', 'Sheer driving pleasure', 'bmw.png', 'https://www.bmw.it'),
(5, 'UNICEF', 'It\'s time to act', 'unicef.png', 'https://unicef.it'),
(6, 'Sisal', 'Have fun with Poker, Bets and Horse Racing', 'sisal.png', 'https://www.sisal.it'),
(7, 'Netflix', 'At Netflix, we want to entertain the world', 'netflix.png', 'https://www.netflix.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `hash`, `first_name`, `last_name`, `date_of_birth`) VALUES
('15a769dc-ffd5-11ee-9de7-e86a6456e3ba', 'sportAccount', 'sportAccount@gmail.com', '$2b$10$elYkZa3RpO4Tk4h1Vg2h1uTWwltIX23XnxCgpVLAQGBkNIr7mPXH2', 'Sport', 'Account', '2024-04-21'),
('28639e64-ffd5-11ee-9de7-e86a6456e3ba', 'actualityAccount', 'actualityAccount@gmail.com', '$2b$10$44Tfz38tPNRYbGoR.tHpO.6E8jIs9EVT7ykY0PrFCagf7OHgnOiO2', 'Actuality', 'Account', '2024-04-21'),
('3da18ac9-ffd5-11ee-9de7-e86a6456e3ba', 'musicAccount', 'musicAccount@gmail.com', '$2b$10$oUX9a5GyIeZwUkzY4JDgg.nNSXREjqAX3vGaFHN95LZSH5VnJ8dci', 'Music', 'Account', '2024-04-21'),
('b37d5e82-03ac-11ef-a9cf-e86a6456e3ba', 'User', 'user@gmail.com', '$2b$10$w/0qj0QvvLXsY7UnrIy0L.gfTjwwkmBY1CA4OZtlGuTcmop1MDTTO', 'stefano', 'giroletti', '2024-04-26'),
('c128ac23-ffd5-11ee-9de7-e86a6456e3ba', 'journalist', 'journalist@gmail.com', '$2b$10$nY1gevYmy1AXf0tdh6weDOTseIP/BRkpPSU47I3aQgT4O81me7j4G', 'Mario', 'Rossi', '2024-04-21'),
('d99723e6-0396-11ef-95d8-e86a6456e3ba', 'newUser', 'comi@gmail.com', '$2b$10$4uUVB346ruLdZZoEaKvMtuJFlOxWlxwsDYF83IAX4nObkmmPiuw5.', 'comi', 'ncini', '2024-04-26'),
('dc79e944-ffd4-11ee-9de7-e86a6456e3ba', 'admin', 'admin@gmail.com', '$2b$10$d6nWNaGLCqHLBPvlNPPXfeC6njtlbEx9MIdNhV7IRXX32902FRJWe', 'Admin', 'Admin', '2024-04-21');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkGenre` (`fkGenre`),
  ADD KEY `fk_journalist` (`fkJournalist`);

--
-- Indici per le tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_user` (`fkUser`),
  ADD KEY `fk_comments_article` (`fkArticle`);

--
-- Indici per le tabelle `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `journalists`
--
ALTER TABLE `journalists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUser` (`fkUser`),
  ADD KEY `fkRegister` (`fkRegister`);

--
-- Indici per le tabelle `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUser` (`fkUser`),
  ADD KEY `fkArticle` (`fkArticle`);

--
-- Indici per le tabelle `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `journalists`
--
ALTER TABLE `journalists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`fkGenre`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`fkJournalist`) REFERENCES `journalists` (`id`),
  ADD CONSTRAINT `fk_journalist` FOREIGN KEY (`fkJournalist`) REFERENCES `journalists` (`id`);

--
-- Limiti per la tabella `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_article` FOREIGN KEY (`fkArticle`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`fkUser`) REFERENCES `users` (`id`);

--
-- Limiti per la tabella `journalists`
--
ALTER TABLE `journalists`
  ADD CONSTRAINT `journalists_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `journalists_ibfk_2` FOREIGN KEY (`fkRegister`) REFERENCES `register` (`id`);

--
-- Limiti per la tabella `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`fkArticle`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
