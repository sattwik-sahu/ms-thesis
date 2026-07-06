# Writing Your Chapters

Your thesis content lives in the `chapters/` folder.

## The starting point: `chapters/_index.tex`

Right out of the box, `chapters/_index.tex` contains two sample chapters with example content — a table, a figure, a citation, and a nomenclature entry. This is meant as a working example, not something to keep in your final thesis. Compile it once to see what a table, figure, citation, and symbol look like when rendered, then replace it with your own writing.

## Splitting your thesis into separate files

Once you go beyond a chapter or two, keeping everything in one `_index.tex` file gets unwieldy. The recommended structure is to give **each chapter its own file** and `\input` them from `_index.tex`:

```
chapters/
├── _index.tex        # Just a list of \input lines
├── chapter1.tex       # Introduction
├── chapter2.tex       # Methods
├── chapter3.tex       # Results
└── chapter4.tex       # Discussion
```

Your `_index.tex` then becomes simply:

```latex
\input{chapters/chapter1.tex}
\input{chapters/chapter2.tex}
\input{chapters/chapter3.tex}
\input{chapters/chapter4.tex}
```

And each `chapterN.tex` file starts with its own `\chapter{...}` command, e.g. `chapter1.tex`:

```latex
\chapter{Introduction}
\label{sec:introduction}

Your introduction text goes here...
```

!!! tip "Why bother splitting files?"
    It's much easier to find and edit a specific chapter, avoid huge merge conflicts if you're using Git, and jump straight to a section in your editor — instead of scrolling through a single multi-hundred-line file.

## Adding tables

The sample chapter shows the standard `booktabs`-style table (already loaded by the template):

```latex
\begin{table}
    \centering
    \caption{Comparison of experimental results across different model architectures.}
    \label{tab:my_results}
    \begin{tabular}{lcccc}
        \toprule
        \textbf{Method} & \textbf{Precision} & \textbf{Recall} & \textbf{F1-Score} & \textbf{Latency (ms)} \\
        \midrule
        Baseline        & 0.82               & 0.79            & 0.80              & 12.4                  \\
        \bottomrule
    \end{tabular}
\end{table}
```

Always give your table a `\label{tab:...}` right after `\caption{...}` — this is what lets you reference it elsewhere with `\cref{}` (see [Cross-Referencing](cross-referencing.md)).

## Adding figures

```latex
\begin{figure}
    \begin{center}
        \includegraphics[width=0.95\textwidth]{figures/your-image.png}
    \end{center}
    \caption{\textbf{A short bold title.}\ A longer description of the figure.}
    \label{fig:your_label}
\end{figure}
```

Put your image files in the `figures/` folder at the project root, and reference them by that relative path.

## Appendices

Extra material that doesn't belong in the main flow — long derivations, extra data tables, code listings — goes in `chapters/_appendix.tex`:

```latex
\appendix

\chapter{First Appendix}

You may add an appendix to include additional information.
```

Add more appendix chapters the same way you would add regular chapters — just keep them after the `\appendix` command.

## Next steps

- [Citing sources](citations.md)
- [Cross-referencing figures, tables, and equations](cross-referencing.md)
- [Adding symbols and abbreviations](nomenclature.md)
