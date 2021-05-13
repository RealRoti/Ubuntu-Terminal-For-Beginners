# Ubuntu's terminal tutorial
Ok, cominciamo.

Innanzitutto, potrebbe esserti utile sapere che puoi richiamare il terminale anche premendo CTRL+ALT+T.

Detto questo, passiamo alla struttura.

*NB: se ti servisse qualsiasi comando qui mancante, puoi cercare su Google. Ricordati però di specificare che i comandi siano per Ubuntu/Debian*

## 📌 0. Sudo e SU
Troverai spesso dei comandi che cominciano con 'sudo'. Questa sigla indica "super user do", cioè il *super user* (in pratica colui che amministra il computer) prende il "potere assoluto" sul sistema operativo. Nessun software, incluso il sistema, potrà fermarlo.
Per farti un esempio, con il comando `sudo rm rf /* -- no-preserve*`   potrete cancellare tutto in un colpo solo (file personali, file di sistema, motore grafico, programmi, tutto). Non fatelo a casa :)

## 💽 1. Lavorare con i pacchetti
### *Installare, disinstallare, pulire e rimuovere software*
È molto più semplice di quanto credi. Per **installare** un programma presente nella lista del terminale Debian, basta digitare `sudo apt-get install`. Per esempio Firefox, Discord, Telegram, LibreOffice, Chrome eccetera sono presenti nell'elenco.

Indipendentemente da dove installerete i programmi (infatti potete anche optare per l'Ubuntu Software o per il download del file .deb dal sito del programma), potrete anche rimuoverlo.
Tuttavia, solitamente i pacchetti prendono un nome diverso dal nome del programma, perciò per scoprire il loro nome digita `dpkg --list`. Il terminale ti restituirà la lista dei pacchetti installati, così una volta trovato quello da toglire digitate `sudo apt-get --purge remove nomepacchetto`.

![protip](https://img.shields.io/badge/%F0%9F%92%8E-Pro--tip-9cf) Per fare un po' di pulizia e manutenzione ai pacchetti, vediamo qualche comando in più.

Ubuntu utilizza diversi pacchetti per svolgere delle operazioni, ma con il passare del tempo alcuni vengono cambiati e/o abbandonati. Per eliminare quelli non indispensabili, usiamo `sudo apt autoremove`. *Il prefisso sudo ci consente di non avere problemi di autorizzazioni varie nel corso della rimozione dei pacchetti*.

Invece per aggiornarli lanciamo il comando `sudo apt upgrade`.

Per pulire la cache usiamo `sudo apt-get clean`.

Come avrete notato, spesso utilizziamo il comando "apt". Questo è resposnabile dell'installazione, rimozione e agiornamento dei software nel sistema. 
