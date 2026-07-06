# Citing Sources

The template uses `biblatex` with the **Biber** backend (already configured in `.latexmkrc`) and the **IEEE** citation style — references are numbered in the order they first appear, which is standard for engineering and science theses.

## Step 1: Add your reference to `references.bib`

Every citation starts as a BibTeX entry in `references.bib` at the project root. For example:

```bibtex
@book{Newton:1687eqk,
  author  = "Newton, Isaac",
  title   = "{Philosophi{\ae} Naturalis Principia Mathematica}",
  address = "England",
  year    = "1687",
}
```

The part right after `@book{` — here, `Newton:1687eqk` — is the **citation key**. You'll use this key in your text. Pick something short and memorable, like `AuthorYear` (e.g. `Vaswani2017`).

!!! tip "Getting BibTeX entries quickly"
    Most journal websites and Google Scholar let you export a citation directly in BibTeX format — look for a "Cite" or "Export" button. Paste the exported entry straight into `references.bib` instead of typing it by hand.

## Step 2: Cite it in your text

```latex
This idea builds on classical mechanics~\cite{Newton:1687eqk}.
```

The `~` before `\cite` is a non-breaking space — it stops LaTeX from ever putting the citation number on its own line, so keep that pattern when you cite.

## Step 3: The bibliography page builds itself

You don't need to write a references section manually. `main.tex` already has:

```latex
\printbibliography[heading=bibintoc, title={Bibliography}]
```

This automatically collects every entry you cited (in citation order, since the template uses `sorting=none`) and prints it as a numbered list at the end of the document, with an entry in the table of contents.

## Citing multiple sources at once

```latex
Several works have explored this~\cite{Newton:1687eqk, Einstein:1905abc}.
```

## Next step

Now that you can cite sources, learn how to [cross-reference](cross-referencing.md) the figures, tables, and equations you cite them alongside.
