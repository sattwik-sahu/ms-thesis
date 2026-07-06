# Compiling Locally

If you'd rather write your thesis in a local editor (VS Code, TeXstudio, Vim, etc.) instead of in the browser, follow this guide.

## 1. Install a TeX distribution

You need a full TeX distribution — not just a bare LaTeX compiler — because this template uses several packages (`biblatex`, `nomencl`, `tikz`, `siunitx`, and others).

| OS | Recommended distribution |
|---|---|
| Windows | [MiKTeX](https://miktex.org/download) |
| macOS | [MacTeX](https://tug.org/mactex/) |
| Linux | [TeX Live](https://tug.org/texlive/) (`sudo apt install texlive-full` on Debian/Ubuntu) |

You'll also need `latexmk`, which usually ships with these distributions already.

## 2. Get the template

Clone or download the [template repository](https://github.com/sattwik-sahu/ms-thesis) to your computer:

```bash
git clone https://github.com/sattwik-sahu/ms-thesis.git
cd ms-thesis
```

## 3. Compile with `latexmk`

The template ships with a `.latexmkrc` file that already knows how to run pdfLaTeX, Biber (for your bibliography), and MakeIndex (for the symbols list) in the right order. You don't need to configure anything — just run:

```bash
latexmk main.tex
```

This produces `main.pdf` in the project root.

!!! tip "Using VS Code?"
    If you use the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension, it will detect `.latexmkrc` automatically and use the same build recipe when you hit build.

## 4. Clean up auxiliary files

LaTeX generates a lot of intermediate files (`.aux`, `.bcf`, `.nlo`, etc.). To remove them once you're happy with your PDF:

```bash
latexmk -c
```

This leaves your `main.pdf` intact and only deletes the auxiliary build files.

## Common local-only issues

- **"Biber not found" / "makeindex not found":** these come bundled with full TeX distributions, but minimal installs (like `texlive-basic`) may not include them. Reinstall with the full package set if you hit this.
- **First compile is slow:** the very first run builds the bibliography and nomenclature indices from scratch, so it takes a few passes. Subsequent compiles are much faster.

## What's next?

Head to [Setting Your Metadata](../writing-your-thesis/metadata.md) to start filling in your details.
