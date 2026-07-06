# Writing the Frontmatter

"Frontmatter" refers to everything that appears **before Chapter 1** — your abstract, acknowledgements, and the pages the template generates for you automatically. Most of these files live in the `meta/` folder.

## Files you need to write

| File | What goes here |
|---|---|
| `meta/abstract.tex` | Your thesis abstract |
| `meta/acknwldg.tex` | Your acknowledgements |

### Abstract

Open `meta/abstract.tex` and replace the placeholder text with your abstract:

```latex
Write you abstract here.
```

Just write plain paragraphs here — no `\chapter` or `\section` commands needed, the template wraps this in the right environment for you.

### Acknowledgements

Open `meta/acknwldg.tex`. It already has a heading and a signature block set up:

```latex
\begin{center}
    {\textbf{\Large{ACKNOWLEDGEMENT}}}
\end{center}

I would like to thank $\ldots$
\vspace{6em}

\hfill\textbf{\mystudentname}
```

Just replace the `I would like to thank $\ldots$` line with your own text. Notice it ends with `\mystudentname` — this is filled in automatically from the `\studentname{...}` you set in [`meta/_info.tex`](metadata.md), so you don't need to type your name again.

## Files that are generated for you (don't need editing)

These pages are built automatically from your metadata and don't normally need any changes:

- **`meta/certificate.tex`** — pulls your supervisor, department, and committee list from `_info.tex`. Only touch this if the wording itself needs to change.
- **`meta/disclaimer.tex`** — the standard IISERB academic integrity disclaimer. Leave this as-is; it's a fixed institutional requirement.

## Files that exist but aren't used by default

The template also ships with a few extra files that **aren't wired into the document by default**:

- `meta/dedication.tex` — a dedication page
- `meta/list_of_pubs.tex` — a list-of-publications page
- `meta/spine.tex` — a rotated spine label, typically used for bound copies

!!! note "These won't appear unless you add them"
    These files exist in the template but are not `\input` anywhere in `meta/_frontmatter.tex`. If you want to use one (say, a dedication page), you'll need to add a line like `\input{meta/dedication.tex}` in `meta/_frontmatter.tex` yourself, in the position you want it to appear. If in doubt, check with your supervisor whether your department expects these.

## Controlling the order of the frontmatter

`meta/_frontmatter.tex` is the file that decides **what order** all these pages appear in — certificate, disclaimer, acknowledgements, abstract, then the automatically generated symbols list, list of figures, list of tables, and table of contents. You generally won't need to touch this file unless you're adding one of the optional pages above.

## Next step

Now that your frontmatter is in place, move on to [Writing Your Chapters](chapters.md).
