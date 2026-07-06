# Directory Structure Reference

A complete map of every file in the template, and whether you're expected to edit it.

```text
ms-thesis/
├── main.tex                 # Entry point — assembles the whole document
├── IISERB.cls                # Formatting rules — you shouldn't need to touch this
├── references.bib            # Your bibliography, in BibTeX format
├── .latexmkrc                 # Build config — runs Biber & MakeIndex automatically
├── chapters/
│   ├── _index.tex             # List of \input lines for your chapters (or your chapters directly)
│   └── _appendix.tex          # Appendices
├── meta/
│   ├── _info.tex               # ⭐ Start here — your name, title, committee, etc.
│   ├── _frontmatter.tex        # Controls the order of frontmatter pages
│   ├── abstract.tex            # Your abstract
│   ├── acknwldg.tex            # Acknowledgements
│   ├── certificate.tex         # Certificate page — auto-filled from _info.tex
│   ├── disclaimer.tex          # Academic integrity disclaimer — fixed wording
│   ├── symbols.tex             # Place for extra manual symbol declarations
│   ├── dedication.tex          # Optional — not included by default
│   ├── list_of_pubs.tex        # Optional — not included by default
│   └── spine.tex               # Optional — not included by default
├── figures/                   # Put your images here
└── misc/                      # Third-party LaTeX packages bundled for portability — don't edit
```

## Which files you'll actually touch

| File | Edit this? | Purpose |
|---|:---:|---|
| `meta/_info.tex` | ✅ Always | Your metadata: name, title, committee, supervisor |
| `meta/abstract.tex` | ✅ Always | Your abstract |
| `meta/acknwldg.tex` | ✅ Always | Your acknowledgements |
| `chapters/_index.tex` (or split chapter files) | ✅ Always | Your thesis content |
| `chapters/_appendix.tex` | ✅ If you have appendices | Extra material |
| `references.bib` | ✅ Always | Your citations |
| `figures/` | ✅ Always | Your images |
| `meta/_frontmatter.tex` | ⚠️ Rarely | Only if adding an optional page (dedication, etc.) |
| `meta/certificate.tex` | ⚠️ Rarely | Only if the certificate wording itself needs changing |
| `meta/disclaimer.tex` | ❌ No | Fixed institutional wording |
| `main.tex` | ❌ No | Document assembly — shouldn't need changes |
| `IISERB.cls` | ❌ No | Formatting engine |
| `.latexmkrc` | ❌ No | Build configuration |
| `misc/*.sty` | ❌ No | Bundled third-party packages |

## Why some files aren't wired in by default

`meta/dedication.tex`, `meta/list_of_pubs.tex`, and `meta/spine.tex` exist in the template but aren't referenced anywhere in `meta/_frontmatter.tex`. They're included as optional starting points in case your department wants them, but adding one means adding an `\input{...}` line for it yourself in `meta/_frontmatter.tex`, in the position you want it to appear.

## Next step

If something isn't compiling the way you expect, check [Troubleshooting](../troubleshooting.md).
