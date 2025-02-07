 #!/bin/bash
clear
echo "                                                                                  /++ /++"
echo "               /++       /++                                                     |__/| ++"
echo "    /+++++++  | ++      | ++           /+++++++  /++++++  /++++++/++++   /++++++  /++| ++  /++++++   /++++++"
echo "   /++_____//++++++++ /++++++++       /++_____/ /++__  ++| ++_  ++_  ++ /++__  ++| ++| ++ /++__  ++ /++__  ++"
echo "  | ++     |__  ++__/|__  ++__/      | ++      | ++  \ ++| ++ \ ++ \ ++| ++  \ ++| ++| ++| ++++++++| ++  \__/"
echo "  | ++        | ++      | ++         | ++      | ++  | ++| ++ | ++ | ++| ++  | ++| ++| ++| ++_____/| ++"
echo "  |  +++++++  |__/      |__/         |  +++++++|  ++++++/| ++ | ++ | ++| +++++++/| ++| ++|  +++++++| ++"
echo "   \_______/                          \_______/ \______/ |__/ |__/ |__/| ++____/ |__/|__/ \_______/|__/"
echo "                                                                       | ++"
echo "                                                                       | ++"
echo "                                                                       |__/"
echo ""
echo "Benvenuto in C++ Compiler!"
echo ""
echo "Inserisci indirizzo cartella e file .cpp: " && read percorso
echo "Inserisci nome dell'eseguibile: " && read nome
clear
echo "Compilo ...."
nome2="/percorso_della_cartella_di_generazione/$nome"
g++ "$percorso" -o "$nome2"

if [ $? -eq 0 ]; then
    clear
    echo "Compilato con successo! Eseguibile salvato come $nome2"
    echo -n "Eseguo? [y/n]"
    read ask
    ask=$(echo "$ask" | tr '[:upper:]' '[:lower:]')

    if [ "$ask" = "y" ]; then
        clear
        "$nome2"
        echo "Fine esecuzione."
    fi
else
    echo "Compilazione fallita. Cerca eventuali errori nel codice e riprova."
fi
echo "Fatto, ciao."
