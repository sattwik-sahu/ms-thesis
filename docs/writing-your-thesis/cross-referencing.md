# Cross-Referencing Figures, Tables, and Equations

The template uses the `cleveref` package so you never have to manually type "Figure 3.2" or "Table 4.1" — and never have to fix those numbers by hand when you add or remove content.

## The old, manual way (don't do this)

```latex
As shown in Figure~\ref{fig:placeholder}, ...
```

This breaks the moment you rename `fig:placeholder` to something else, or if you need to change "Figure" to "Fig." project-wide — you'd have to find and fix every instance by hand.

## The recommended way: `\cref`

```latex
As shown in \cref{fig:placeholder}, ...
```

`\cref` automatically detects whether the label belongs to a figure, table, equation, section, or chapter, and inserts the right word ("Figure", "Table", "Equation", etc.) along with the correct number. If you reorder your chapters, all the numbers update automatically the next time you compile.

## How labeling works

Every time you create a figure, table, equation, section, or chapter, give it a `\label{...}` right after its heading/caption. The template's convention (seen throughout the sample chapter) uses short prefixes so labels are easy to tell apart at a glance:

| Content type | Label prefix | Example |
|---|---|---|
| Chapter | `sec:` (used for chapters and sections alike in this template) | `\label{sec:chapter_1}` |
| Section | `sec:` | `\label{sec:chapter_1-1}` |
| Table | `tab:` | `\label{tab:placeholder_data}` |
| Figure | `fig:` | `\label{fig:placeholder}` |
| Equation | `eq:` | `\label{eq:my-formula}` |

Then reference any of them the same way:

```latex
As mentioned in \cref{sec:chapter_1} and \cref{sec:chapter_1-2}, the results in \cref{tab:placeholder_data} confirm the trend from \cref{eq:my-formula}.
```

## Referencing multiple items together

```latex
\cref{fig:placeholder,tab:placeholder_data}
```

`cleveref` will format this nicely as something like "Figure 3.1 and Table 3.1" automatically.

## Starting a sentence with a reference

`\cref` produces a lowercase word ("figure", "table") since it assumes it's in the middle of a sentence. If a reference starts a sentence, use the capitalized version instead:

```latex
\Cref{fig:placeholder} shows the placeholder image.
```

## Next step

Learn how to define the symbols and abbreviations you use in your equations in [Nomenclature](nomenclature.md).
