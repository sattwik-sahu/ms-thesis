# Using the Template on Overleaf

This is the **recommended way** to use the template if you don't want to install anything on your computer. Overleaf compiles your LaTeX in the browser, and it already has everything this template needs.

## Step 1: Download the template

Go to the [template repository](https://github.com/sattwik-sahu/ms-thesis) and download it as a ZIP file:

1. Click the green **Code** button.
2. Click **Download ZIP**.
3. Unzip it on your computer.

!!! warning "Keep the hidden file when you re-zip it"
    The template includes a hidden file called `.latexmkrc`. This file tells the compiler to run Biber (for citations) and MakeIndex (for the symbols list) automatically. Some ZIP tools **hide dotfiles by default** and leave it out. If you re-compress the folder yourself, double-check `.latexmkrc` is inside the archive — otherwise your bibliography and symbols list won't build. If you downloaded straight from GitHub's "Download ZIP" button, you don't need to worry about this; it's already included.

## Step 2: Create a new Overleaf project

1. Log in to [Overleaf](https://www.overleaf.com) and go to your dashboard.
2. Click **New Project → Upload Project**.
3. Select the `.zip` file you downloaded (or re-zipped).

## Step 3: Set the compiler and main document

Overleaf needs to know two things before it can build the PDF correctly:

1. Open the project menu (the ☰ icon or "Menu" in the top-left corner).
2. Under **Compiler**, choose **pdfLaTeX**.
3. Under **Main document**, choose `main.tex`.

## Step 4: Compile

Click **Recompile**. Overleaf will detect the `.latexmkrc` file and automatically run Biber and MakeIndex for you — you don't need to click anything extra for citations or the symbols list to show up.

You should now see a PDF with a title page, a certificate page, an empty abstract, and two placeholder chapters. That's your starting point.

## What's next?

Now that you can compile, go fill in your own details — start with [Setting Your Metadata](../writing-your-thesis/metadata.md).

!!! note "Prefer working offline?"
    See [Local Setup](local-setup.md) instead.
