# IISER Bhopal MS Thesis LaTeX Template

A clean, modern, and highly modular LaTeX template specifically designed for formatting Master of Science (BS-MS Dual Degree) theses at the Indian Institute of Science Education and Research (IISER) Bhopal. 

This template handles all the tedious formatting requirements—such as the title page, certificates, academic integrity disclaimers, nomenclature, and bibliography styling—allowing you to focus entirely on writing your thesis content.

## 🌟 Features

- **Modular Structure:** Content is cleanly separated into metadata, frontmatter, chapters, and appendices.
- **Pre-configured Title & Certificate:** Automatically generates standard IISERB title pages and committee signature tables based on your metadata.
- **Automated Nomenclature:** Built-in support for generating a *List of Symbols and Abbreviations* using the `nomencl` package.
- **Modern Referencing:** Uses `biblatex` (with Biber backend) and `cleveref` for intelligent cross-referencing.
- **Overleaf Ready:** Includes a `.latexmkrc` file ensuring all indices and bibliographies compile perfectly in Overleaf and local environments out of the box.

---

## 📂 Directory Structure

Understanding the layout will help you navigate and write your thesis efficiently:

```text
├── main.tex                 # The main entry point of the document
├── IISERB.cls               # The custom LaTeX class handling the formatting
├── references.bib           # Your bibliography (BibTeX) file
├── .latexmkrc               # Compilation config (handles Biber and Nomenclature)
├── chapters/                
│   ├── _index.tex           # Main chapter entries (include your chapters here)
│   └── _appendix.tex        # Appendices go here
└── meta/                    # Frontmatter and metadata files
    ├── _info.tex            # ⭐ Start here: Enter your name, title, committee, etc.
    ├── _frontmatter.tex     # Controls the order of front pages
    ├── abstract.tex         # Your abstract text
    ├── acknwldg.tex         # Acknowledgements
    ├── certificate.tex      # Certificate (Auto-filled)
    ├── disclaimer.tex       # Academic Integrity Disclaimer
    └── symbols.tex          # Extra symbol declarations
```

---

## 🚀 How to Use on Overleaf (Recommended)

Using this template on Overleaf is the easiest way to get started, as it requires zero local installation.

1. **Zip the Template:** Compress the entire template folder (including the hidden `.latexmkrc` file) into a `.zip` archive.
2. **Upload to Overleaf:**
   - Go to your Overleaf dashboard.
   - Click **New Project** -> **Upload Project**.
   - Select your `.zip` file.
3. **Configure Overleaf Compiler:**
   - Open the Overleaf menu (click the Overleaf icon or "Menu" in the top-left corner).
   - Set the **Compiler** to `pdfLaTeX`.
   - Set the **Main Document** to `main.tex`.
4. **Compile!** 
   - Overleaf will automatically detect the `.latexmkrc` file. This means your Bibliography (Biber) and Nomenclature (Symbols) will compile flawlessly without any manual intervention.

---

## 💻 How to Use Locally

If you prefer writing offline, ensure you have a standard TeX distribution installed (e.g., TeX Live for Linux/macOS or MiKTeX for Windows).

### Compilation
Because the template uses Biber (for bibliography) and MakeIndex (for nomenclature), the easiest way to compile the document is using `latexmk`, which is configured via the included `.latexmkrc` file.

Open your terminal in the project directory and run:
```bash
latexmk main.tex
```
To clean up auxiliary files after compiling:
```bash
latexmk -c
```

---

## ✍️ Step-by-Step Writing Guide

### Step 1: Set Your Details (Metadata)
Open `meta/_info.tex`. This is the most important file for setting up your thesis. Fill in your details:
```latex
\thesistitle{Your Thesis Title Here}
\studentname{Your Name}
\studentrollno{12345}
\subject{Your Department Name}
\supervisorname{Dr. Supervisor Name}
```
You can also add as many review committee members as needed in the `\setcommittee{...}` block.

### Step 2: Write the Frontmatter
Navigate to the `meta/` folder and fill out the text files:
- `abstract.tex`: Write your thesis abstract here.
- `acknwldg.tex`: Add your acknowledgements.

### Step 3: Write Your Chapters
Go to the `chapters/` directory.
- `_index.tex` currently holds sample chapters. It is highly recommended to create a separate file for each chapter (e.g., `chapter1.tex`, `chapter2.tex`) and use `\input{chapters/chapter1.tex}` inside `_index.tex`.
- **References:** Add your citations to `references.bib` and cite them in the text using `\cite{citation_key}`.
- **Cross-Referencing:** Use `\cref{label}` instead of `Figure \ref{label}`. The `cleveref` package will automatically detect if it is a Figure, Table, or Equation.

### Step 4: Add Nomenclature (Symbols & Abbreviations)
Whenever you introduce a new symbol or abbreviation in your text, you can immediately define it using the `\nomenclature` command right next to it.
```latex
The energy is calculated using the famous equation $E = mc^2$.
\nomenclature{$E$}{Energy}
\nomenclature{$m$}{Mass}
\nomenclature{$c$}{Speed of light}
```
The template will automatically collect all these definitions and print them in alphabetical order in the *List of Symbols and Abbreviations* section.

---

## 📝 License

This template is open-source and released under the [MIT License](LICENSE). You are free to modify, distribute, and use it for your thesis without restriction. 

*Good luck with your thesis!*

