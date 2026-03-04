

# inizio script ---------------------------------------------------------------------------------------------------------------------------------------------------------------

# esempio ---------------------------------------------------------------------------------------------------------------------------------------------------------------------


a = 1
a
typeof(a)
a = "pippo"
a
typeof(a)

a
# consuetudine R (shorcut: alt+meno)
a <- 10
b <- "pluto"

a = 1
b = 2

# lettura clienti -------------------------------------------------------------------------------------------------------------------------------------------------------------

df.clienti <- read.csv("clienti.csv", sep = ";")
df.clienti


# plot ------------------------------------------------------------------------------------------------------------------------------------------------------------------------


plot(df.clienti$Cliente, df.clienti$Fatturato)

boxplot(df.clienti$Fatturato)


# EDA iniziale --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Credit
German Credit
Caso di studio:Credit Scoring
Un'applicazione diretta dei modelli predittivi è il credit scoring. I dati esistenti possono essere utilizzati per creare un modello che predica la probabilità che i richiedenti abbiano buon credito. Questa informazione può essere utilizzata per quantificare il rischio per il prestatore.
Il dataset German Credit è uno strumento molto utilizzato per confrontare algoritmi di machine learning. Contiene 1000 osservazioni, ciascuna etichettata come buon credito oppure cattivo credito. Nel dataset, il 70% dei casi è classificato come buon credito.
Come discusso nella Sezione 11.2, quando si valuta l’accuratezza di un modello, la baseline da superare è il 70%, che si potrebbe ottenere semplicemente predicendo che tutti i clienti abbiano buon credito.
Oltre all’esito finale, sono stati raccolti dati relativi a:
•	storia creditizia
•	occupazione
•	stato del conto
•	altre caratteristiche finanziarie
Alcuni predittori sono numerici (ad esempio l’importo del prestito), mentre molti sono categorici, come:
•	scopo del prestito
•	genere
•	stato civile
I predittori categorici sono stati convertiti in dummy variables, cioè variabili binarie associate a una singola categoria.
Ad esempio, la residenza del richiedente può essere:
•	affitto (rent)
•	proprietà (own)
•	alloggio gratuito (free housing)
Questa variabile viene trasformata in tre variabili binarie (0/1), una per ogni categoria.
In totale sono stati utilizzati 41 predittori per modellare lo stato creditizio di un individuo.
Per dimostrare il processo di ottimizzazione dei modelli tramite resampling, è stato estratto un campione casuale stratificato di 800 clienti per il training dei modelli.
I restanti dati vengono utilizzati come test set per verificare le prestazioni del modello finale.
