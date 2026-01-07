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

🛣️ Roadmap

- Tagit (#linux #radio #idea)
- nts today
- JSON-export
- systemd-timer / daily summary

⸻

📜 Lisenssi

MIT License

```code
---

## 📜 3️⃣ LICENSE (MIT)

```text
MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files...
```


