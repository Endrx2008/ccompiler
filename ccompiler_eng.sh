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
echo "Welcome in the c++ compiler!"
echo ""
echo "Insert path of the .cpp file: " && read percorso
echo "Insert final executable name: " && read nome
clear
echo "Compiling ...."
nome2="/Path_of_destination_dir/$nome"
g++ "$percorso" -o "$nome2"

if [ $? -eq 0 ]; then
    clear
    echo "Compiled succesfuly! Saved as $nome2"
    echo -n "Execute? [y/n]"
    read ask
    ask=$(echo "$ask" | tr '[:upper:]' '[:lower:]')

    if [ "$ask" = "y" ]; then
        clear
        "$nome2"
        echo "Ending execution."
    fi
else
    echo "Compilation error. Search for errors in your code and retry."
fi
echo "Done, bye."
