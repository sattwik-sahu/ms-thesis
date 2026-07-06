# Troubleshooting

Fixes for the issues students run into most often.

## My symbols list / nomenclature is empty

This is almost always because MakeIndex never ran. The `nomencl` package needs an extra processing pass beyond just pdfLaTeX.

- **On Overleaf:** make sure the `.latexmkrc` file was actually included when you zipped the template (see the [warning in the Overleaf guide](getting-started/overleaf.md)). Then just recompile — Overleaf detects it automatically.
- **Locally:** make sure you're compiling with `latexmk main.tex`, not a bare `pdflatex main.tex`. A plain `pdflatex` run has no way to know it needs to run MakeIndex.

## My bibliography is empty, or shows `[1]` with no reference

This means Biber didn't run. Same root cause as above — use `latexmk main.tex` (locally) or make sure `.latexmkrc` was included (on Overleaf). If you recently added a new `\cite{}` key, you also need at least one extra compile pass afterward for Biber to pick it up.

## "Citation undefined" warnings

Check that:

1. The citation key in your `\cite{key}` exactly matches the key in `references.bib` (these are case-sensitive).
2. You've recompiled at least twice after adding the entry — the first pass tells Biber what to look up, the second pass inserts it.

## `\cref` shows "??" instead of a number

This means the corresponding `\label{}` either doesn't exist, is misspelled, or appears **after** where you reference it and you haven't recompiled since adding it. Cross-references, like citations, need an extra compile pass to resolve.

## My figure doesn't show up / "File not found" error

Check that:

1. The image file actually exists in the `figures/` folder.
2. The path in `\includegraphics{figures/your-image.png}` matches the filename exactly, including the file extension and capitalization.

## Overleaf says compilation timed out

This usually happens on a very long thesis with lots of high-resolution images. Try compressing your images (they rarely need to be more than 150–300 DPI for print) before including them.

## I get duplicate entries in my symbols list

This happens if you call `\nomenclature{}` for the same symbol more than once. See [the note in Nomenclature](writing-your-thesis/nomenclature.md#following-dry-yourself-define-each-symbol-once) — only define each symbol the first time it appears.

## Still stuck?

Open an issue on the [template's GitHub repository](https://github.com/sattwik-sahu/ms-thesis) or check the [FAQ](faq.md).
