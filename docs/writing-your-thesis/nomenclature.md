# Symbols and Abbreviations (Nomenclature)

Most theses need a *List of Symbols and Abbreviations* near the front. This template builds that list for you automatically using the `nomencl` package — you just define each symbol once, right where you first use it.

## How to define a symbol

Use `\nomenclature{symbol}{description}` immediately after introducing it in your text:

```latex
The energy is calculated using the famous equation $E = mc^2$.
\nomenclature{$E$}{Energy}
\nomenclature{$m$}{Mass}
\nomenclature{$c$}{Speed of light}
```

You don't need to worry about where in the document this appears, or what order — the template collects every `\nomenclature{}` call across your whole thesis and prints them **sorted alphabetically** in the final list.

## Defining abbreviations the same way

Nomenclature isn't just for mathematical symbols — it works the same way for abbreviations:

```latex
We follow the DRY (Don't Repeat Yourself) principle throughout this design.
\nomenclature{DRY}{Don't Repeat Yourself}
```

## Following DRY yourself: define each symbol once

If you reuse the same symbol across multiple chapters, only add its `\nomenclature{}` entry the **first** time it appears — repeating it will create a duplicate entry in the list. A good habit is to define your most common symbols early (e.g., in Chapter 1) and simply reuse them afterward without repeating the `\nomenclature{}` call.

## Where the list appears

You don't need to do anything else — `main.tex` already calls `\makenomenclature{}` in the preamble, and `meta/_frontmatter.tex` already includes `\printnomenclature{}` in the right place. Your list will appear titled **"List of Symbols and Abbreviations"**, sorted alphabetically, right after your abstract.

!!! warning "Nothing showing up in your symbols list?"
    This almost always means Biber/MakeIndex didn't run. If you're on Overleaf, this happens automatically via `.latexmkrc` — just recompile. If compiling locally, make sure you're running `latexmk main.tex` rather than calling `pdflatex` directly, since a bare `pdflatex` run skips the MakeIndex step entirely. See [Troubleshooting](../troubleshooting.md) for more on this.

## Next step

You've now covered the core writing workflow. Check the [Directory Structure Reference](../reference/directory-structure.md) for a complete map of every file in the template, or jump to [Troubleshooting](../troubleshooting.md) if something isn't compiling.
