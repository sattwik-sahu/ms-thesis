## Draft Mode

While writing your thesis, would need to compile the project several times in a minute to observe your changes. This compile step involves compiling figures which include images. To do this, `pdflatex` needs to render every image you included in your thesis repeatedly, which takes a lot of time and compute, slowing down your writing process.

To solve this, you could compile your document in `draft` mode and only compile in normal mode once you need to see the complete result, say after a chapter or a couple of sections, when you need to make sure your text and images are laid out coherently.

### How do I enter draft mode?

To compile your project in draft mode, in your `main.tex` file, add the `draft` class option as shown below.

```latex
\documentclass[draft]{IISERB}
```
