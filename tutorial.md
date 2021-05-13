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

