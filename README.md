# 🧠 NTS – Note To Self

**NTS** on kevyt Linux-komentorivityökalu, jolla pidät kirjaa
*työn alla olevista asioista* suoraan terminaalista.

Kaikki muistiinpanot tallennetaan **yhteen Markdown-tiedostoon**,
joka toimii yhtä hyvin editorissa, Gitissä, Obsidianissa tai blogissa.

---

## ✨ Ominaisuudet

- 📋 Lisää muistiinpanoja yhdellä komennolla
- ✅ Merkitse tehtäviä valmiiksi
- 🧠 Kaikki Markdown-muodossa
- 🇪🇺 Eurooppalainen päivämääräformaatti
- 🔧 Ei riippuvuuksia
- Tukee Bash ja ZSH autocompletea
---

## 📦 Asennus

```bash
git clone https://github.com/<käyttäjä>/nts.git
cd nts
chmod +x nts
sudo cp nts /usr/local/bin/
```

## 🚀 Käyttö

Lisää muistiinpano

```bash
nts add "Muista tehdä tämä ja tuo"
```

Listaa työn alla olevat

```bash 
nts list
```

Merkitse valmiiksi

```bash
nts done 2
```

Avaa muistiinpanot editorissa

```bash
nts edit
```

📁 Tallennusmuoto

Tiedosto:

```bash
~/.nts.md
```

Esimerkki:

```markdown
## 🔄 Työn alla
- [ ] Tee DISASTER-RECOVERY.md _(07.01.2026 17:48)_

## ✅ Valmiit
- [x] Asenna Navidrome _(05.01.2026 22:30)_
```

🔧 Ympäristömuuttujat

MUUTTUJA - EDITOR
Kuvaus: Käytettävä editori (nano, vim, code…)

```bash
export EDITOR=vim
```

## ⌨️ Shell autocomplete

NTS tukee bash- ja zsh-autocompletea.

### Bash
```bash
cp completions/nts.bash ~/.bash_completion.d/nts
```

### ZSH

```bash
cp completions/_nts ~/.zsh/completions/
```



🛣️ Roadmap

- Tagit (#linux #radio #idea)
- nts today
- JSON-export
- systemd-timer / daily summary

⸻

📜 Lisenssi

MIT License

Copyright (c) [2026] [Janne Heinikangas]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
