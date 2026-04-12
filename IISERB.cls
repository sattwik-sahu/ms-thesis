\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IISERB}[2024/04/11 v3.4 IISERB Modern Class]

% --- 1. Path Setup ---
\makeatletter
\def\input@path{{misc/}}
\makeatother

\LoadClass[12pt, a4paper]{report}

% --- 2. Math & Typography Fixes ---
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\let\Bbbk\relax
\RequirePackage{amssymb}
\RequirePackage{newtxtext,newtxmath}

% --- 3. Core Packages ---
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{sectsty}
\RequirePackage{etoolbox}
\RequirePackage{verbatim}
\RequirePackage[intoc]{nomencl}
\RequirePackage[toc,page]{appendix}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pgffor}

% --- 4. Bibliography (BibLaTeX/Biber) ---
\RequirePackage[backend=biber, style=ieee, sorting=none]{biblatex}

% --- 5. Layout Setup ---
\geometry{left=1.0in, right=1.0in, top=1.0in, bottom=1.0in, headheight=85pt, footskip=.25in, includehead}
\setstretch{1.2}
\chapterfont{\centering\large}
\sectionfont{\large}
\titlespacing*{\chapter}{0pt}{0pt}{10pt}

% --- 6. Metadata Macros (Setter/Getter logic) ---
\newcommand{\thesistitle}[1]{\gdef\mythesistitle{#1}}
\newcommand{\studentname}[1]{\gdef\mystudentname{#1}}
\newcommand{\supervisorname}[1]{\gdef\mysupervisorname{#1}}
\newcommand{\supervisordesig}[1]{\gdef\mysupervisordesig{#1}}
\newcommand{\studentrollno}[1]{\gdef\mystudentrollno{#1}}
\newcommand{\subject}[1]{\gdef\mysubject{#1}}
\newcommand{\thesisdate}[1]{\gdef\mythesisdate{#1}}
\newcommand{\degreename}[1]{\gdef\mydegreename{#1}}
\newcommand{\departmentname}[1]{\gdef\mydepartmentname{#1}}

\thesistitle{Thesis Title}
\studentname{Student Name}
\supervisordesig{Designation}
\supervisorname{Supervisor Name}
\studentrollno{12345}
\subject{Subject}
\thesisdate{\today}
\departmentname{Department of \mysubject}
\degreename{Degree Name}

% --- 7. Title Page ---
\renewcommand{\maketitle}{
	\begin{titlepage}
		\begin{center}
			\setstretch{1.5}
			\textbf{\Large \mythesistitle} \\
			\vspace{1cm}
			\large{\textit{A report submitted in partial fulfilment of the requirements \\
					for the award of the degree of}} \\
			\vspace{0.5cm}
			\large{\textbf{\mydegreename}} \\
			\normalsize{\textit{in}}\\
			\large{\textbf{\mysubject}} \\[0.5cm]
			\normalsize{by} \\
			\large{\textbf{\MakeUppercase{\mystudentname}}} \\
			\normalsize{\textbf{\mystudentrollno}} \\
			\vfill
			\centerline{\includegraphics[width=4.6cm]{figures/iiserb/logo.png}}
			\vspace{0.5cm}
			\textbf{\normalsize \MakeUppercase{\mydepartmentname} \\
				INDIAN INSTITUTE OF SCIENCE EDUCATION AND RESEARCH BHOPAL} \\
			\normalsize{\MakeUppercase{Bhopal -- 462 066}} \\
			\vspace{0.5cm}
			\textbf{\mythesisdate}
		\end{center}
	\end{titlepage}
}

% --- 8. Environments ---
\renewenvironment{abstract}{
	\cleardoublepage{}
	\chapter*{Abstract}
	\addcontentsline{toc}{chapter}{Abstract}
}{}

\newenvironment{certificate}{
	\cleardoublepage{}
	\thispagestyle{firstpage}
	\vspace*{1.5cm}
	\begin{center} \large\bfseries CERTIFICATE \end{center}
	\addcontentsline{toc}{chapter}{Certificate}
	\vspace{0.5cm}
}{}

\fancypagestyle{firstpage}{
	\fancyhf{}
	\fancyhead[C]{\includegraphics[width=\linewidth]{figures/iiserb/letterhead.png}}
	\renewcommand{\headrulewidth}{0pt}
}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\hypersetup{colorlinks=true, linkcolor=black, citecolor=blue, urlcolor=black}
\RequirePackage[capitalize]{cleveref}

