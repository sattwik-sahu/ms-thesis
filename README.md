# MS Thesis LaTeX Template - IISER Bhopal

This repository provides a professional and modular LaTeX template for writing an MS Thesis, specifically formatted to meet the requirements of the **Indian Institute of Science Education and Research (IISER) Bhopal**.

---

## 🚀 Getting Started on Overleaf

The easiest way to use this template is via [Overleaf](https://www.overleaf.com/). Follow these steps to get started:

1.  **Download the Template**: Download this repository as a `.zip` file (Click **Code** > **Download ZIP**).
2.  **Upload to Overleaf**: 
    * Log in to Overleaf and click **New Project** > **Upload Project**.
    * Select the `.zip` file you just downloaded.
3.  **Set the Main Document**: 
    * In the left sidebar, locate `main.tex`. 
    * If it is not already selected as the main file, click on it, and Overleaf should automatically recognize it. Alternatively, click the **Menu** icon (top left) and ensure the "Main document" is set to `main.tex`.
4.  **Configure Compiler**:
    * In the **Menu**, make sure the "Compiler" is set to **pdfLaTeX**.
5.  **Compile**: Click the green **Recompile** button. Your thesis PDF should appear on the right!

---

## 🛠️ How to Customize Your Thesis

### 1. Update Your Information

The template uses a central configuration file for all your personal details. Open **`meta/_info.tex`** and update the following commands with your information:

```latex
\thesistitle{Your Thesis Title}
\studentname{Your Name}
\studentrollno{Roll Number}
\subject{Your Department Name}
\supervisorname{Dr. Supervisor Name}
\supervisordesig{Professor / Associate Professor}

% Update your thesis review committee members here
\setcommittee{
	First Member Name,
	Second Member Name,
	Third Member Name,
	Fourth Member Name,
}
```
