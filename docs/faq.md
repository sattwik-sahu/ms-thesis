# FAQ

**Do I need a GitHub account to use this template?**
No. You can download the template as a ZIP directly from the repository and upload it to Overleaf. See [Getting Started](getting-started/overleaf.md).

**Should I use Overleaf or compile locally?**
Overleaf is recommended for most students — zero setup, and it works identically to how your supervisor or committee members might view/comment on it. Compile locally if you prefer working offline or want to use Git for version control. See [Local Setup](getting-started/local-setup.md).

**Do I need to write all my chapters in one file?**
No — and you shouldn't, once your thesis grows past a chapter or two. See [Splitting your thesis into separate files](writing-your-thesis/chapters.md#splitting-your-thesis-into-separate-files).

**How do I add a dedication page or list of publications?**
These files exist in the template (`meta/dedication.tex`, `meta/list_of_pubs.tex`) but aren't included by default. See the note in [Writing the Frontmatter](writing-your-thesis/frontmatter.md#files-that-exist-but-arent-used-by-default) for how to add them.

**Why use `\cref` instead of `\ref`?**
`\cref` automatically inserts the right word ("Figure", "Table", "Equation") and updates itself if you reorder content — `\ref` just gives you a bare number. See [Cross-Referencing](writing-your-thesis/cross-referencing.md).

**Can I change the citation style (e.g., to APA instead of IEEE)?**
The style is set in `IISERB.cls` via `\RequirePackage[backend=biber, style=ieee, sorting=none]{biblatex}`. Changing it isn't recommended, since IISERB's format guidelines typically expect a specific style — check with your supervisor before changing this.

**My supervisor wants changes to the certificate wording — where do I edit that?**
`meta/certificate.tex`. It still pulls your name, supervisor, and committee from `meta/_info.tex` automatically — you're only editing the surrounding wording, not the personal details.

**Something isn't compiling — where do I look first?**
Check [Troubleshooting](troubleshooting.md) — the most common issues (empty symbols list, empty bibliography, `\cref` showing "??") are all covered there.
