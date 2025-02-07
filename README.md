# C++ Compiler

Uno script Bash per compilare ed eseguire programmi C++ in modo semplice e veloce.

## 📌 Funzionamento
- Chiede all'utente il percorso di un file `.cpp` da compilare.
- Chiede il nome dell'eseguibile da generare.
- Verifica che il file `.cpp` esista prima di procedere.
- Compila il codice con `g++` e salva l'eseguibile in una directory predefinita.
- Se la compilazione ha successo, offre la possibilità di eseguire il programma immediatamente.

## 🚀 Installazione e Utilizzo
### 1️⃣ Clonare il repository
```bash
git clone https://github.com/tuo-username/cpp-compiler.git
cd cpp-compiler
```

### 2️⃣ Rendere eseguibile lo script
```bash
chmod +x ccompiler.sh
```

### 3️⃣ Eseguire lo script
```bash
./ccompiler.sh
```

### 4️⃣ Rendere lo script un alias
inserisci all interno del file ./bashrc (raggiungibile tramite il comando nano ~/.bashrc) l' alias riportato qui sotto
```bash
alias ccompiler = "/percorso_dove_è_salvato/ccompiler.sh"
```
ora se scriverai ccompiler nel terminale il "programmino" si avvierà senza problemi.

## ⚙️ Dipendenze
Assicurati di avere installato il compilatore **g++**. Se non è presente, puoi installarlo con:
```bash
sudo apt update && sudo apt install g++ -y  # Debian/Ubuntu
sudo dnf install gcc-c++ -y                 # Fedora
sudo pacman -S gcc                          # Arch Linux
```

---
💡 **Suggerimenti e miglioramenti sono benvenuti!** Apri una issue o un pull request se hai idee per migliorare lo script. 🚀

