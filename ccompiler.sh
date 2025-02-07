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
echo "Compiling ...."
nome2="/mnt/hdd/codes/c++/forge/$nome"
g++ "$percorso" -o "$nome2"

if [ $? -eq 0 ]; then
    clear
    echo "Compilation successful! Executable saved as $nome2"
    echo -n "Execute? [y/n]"
    read ask
    ask=$(echo "$ask" | tr '[:upper:]' '[:lower:]')

    if [ "$ask" = "y" ]; then
        clear
        "$nome2"
        echo "Fine esecuzione."
    fi
else
    echo "Compilation failed. Check for errors in your code."
fi
echo "Done bye."
