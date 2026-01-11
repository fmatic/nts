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
- 🔍 Tukee Bash, ZSH ja Fish autocompletea
- 🎨 Listaus & näkymät 
- 📅 Aikasuodatus
- 🏷️ Tunnisteet (TAG) ja niiden listaus
- 📊 Statistiikkaa 
- 🩺 Doctor
- 🔄 Git Sync (käyttää käyttäjän omaa Git-repoa)

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

NTS tukee bash-, fish- ja zsh-autocompletea.

### Bash
```bash
cp completions/nts.bash ~/.bash_completion.d/nts
```

### ZSH

```bash
cp completions/_nts ~/.zsh/completions/
```

### Fish

```bash
cp completions/nts.fish ~/.config/fish/completions/
```

## ⚙️ Configuration

NTS tukee käyttäjäkohtaisia asetuksia.

### Autocomplete päälle / pois

Jos et halua käyttää shell-autocompletea (esim. suorituskyky- tai
yhteensopivuussyistä), sen voi kytkeä pois:

```bash
nts config completion off
```

Kytke takaisin päälle:

```bash
nts config completion on
```

Asetus tallennetaan tiedostoon:

```bash
~/.config/nts/config
```

ja koskee kaikkia tuettuja shellejä (bash, zsh, fish).

### Tag autocomplete

Kun lisäät muistiinpanoa, NTS osaa ehdottaa aiemmin käytettyjä tageja.

```bash
nts add "#<TAB>"
nts add "Korjaa skripti #<TAB>"
```

## 📋 Tehtävien listaus TAG mukaan

### Filter by tag
```bash
nts list #radio
```

## ✅ Näytä suoritetut tehtävät

```bash
nts list --done
```

## 📋 Näytä tämän päivän tehtävät

```bash
nts list --today
```

## 🔧 Yhdistele suodattimia ja sääntöjä

```bash
nts list #backup --today
```

## 🏷️ nListaaa tagit ja laskurit

```bash
nts tags
```

## 📊  Nopea tilannekuva

```bash
nts stats
```

## 🩺 Ympäristön tarkistus

```bash
nts doctor
```

## 🔄 Git-pohjainen synkkaus

```bash
nts sync
```

## 🔧 Asennus

```bash
sudo ./nts install
```

🛣️ Roadmap

- ~~Tagit (#linux #radio #idea)~~
- ~~nts today~~
- JSON-export
- systemd-timer / daily summary
- ~~nts list #tag → suodatus~~
- nts tags → listaa tagit + laskuri
- ~~värikoodattu nts list~~
- ~~nts install → asentaa binäärin + completionit~~
- nts doctor → tarkistaa awk/sed/completion
- nts focus → tulostaa yhden asian kerrallaan
- nts config muokkaus
- nts tags --top (statistiikkaa)

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
