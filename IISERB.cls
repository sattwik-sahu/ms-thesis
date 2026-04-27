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
\RequirePackage[linesnumbered,ruled,noend]{algorithm2e}

% --- 3. Core Packages ---
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{titlesec}
\RequirePackage{sectsty}
\RequirePackage{etoolbox}
\RequirePackage{verbatim}
\RequirePackage[intoc]{nomencl}
\RequirePackage[toc,page]{appendix}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pgffor}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{siunitx}
\RequirePackage{datetime}

% Nomenclature styling
\renewcommand{\nomname}{List of Symbols and Abbreviations}
\setlength{\nomlabelwidth}{7em}

% TikZ for diagrams
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,arrows.meta,shapes,shapes.geometric,fit,backgrounds,patterns}

% --- 4. Bibliography (BibLaTeX/Biber) ---
\RequirePackage[backend=biber, style=ieee, sorting=none]{biblatex}

% --- 5. Layout Setup ---
\geometry{left=1.2in, right=1.2in, top=1.0in, bottom=1.0in, headheight=0.5in, footskip=.25in, includehead}
\setstretch{1.25}
\chapterfont{\centering\Huge\MakeUppercase}
\sectionfont{\large}
\titlespacing*{\chapter}{0pt}{0pt}{10pt}

\newcommand{\mathsc}[1]{{\text{\textsc{#1}}}}

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
\newcommand{\titlemargin}{1.5in}

\thesistitle{Thesis Title}
\studentname{Student Name}
\supervisordesig{Designation}
\supervisorname{Supervisor Name}
\studentrollno{12345}
\subject{Subject}
\newdateformat{MyDateFormat}{%
	\monthname[\THEMONTH] \THEYEAR}
\thesisdate{\MyDateFormat\today}
\departmentname{Department of \mysubject}
\degreename{Degree Name}

% --- 7. Title Page ---
\renewcommand{\maketitle}{
	\begin{titlepage}
		\newgeometry{margin=\titlemargin}
		\begin{center}
			\setstretch{1.2}
			\textbf{\Large \MakeUppercase{\mythesistitle}} \\
			\vfill
			\large{\textbf{A THESIS}} \\[0.5em]
			\large{\textit{submitted in partial fulfillment of the requirements \\
					for the award of the dual degree of}} \\[3em]
			\large{\textbf{\mydegreename}} \\[0.5em]
			\normalsize{\textit{in}}\\[0.5em]
			\large{\MakeUppercase{\textbf{\mysubject}}} \\[0.5em]
			\normalsize{\textit{by}} \\[0.5em]
			\large{\textbf{\MakeUppercase{\mystudentname}}} \\[0.5em]
			\large{\textbf{(\mystudentrollno)}} \\[3em]
			% \normalsize{\textit{under the guidance of}} \\
			% \large{\MakeUppercase{\textbf{\mysupervisorname}}}
			% \vfill
			\centerline{\includegraphics[width=2.5cm]{figures/iiserb/logo.png}}
			\vspace{0.5em}
			\textbf{\normalsize
				\MakeUppercase{\mydepartmentname} \\
				INDIAN INSTITUTE OF SCIENCE EDUCATION AND RESEARCH BHOPAL \\
				BHOPAL -- 462 066
			} \\[1em]
			\large{\textbf{\mythesisdate}}
		\end{center}
	\end{titlepage}
}

% --- 8. Environments ---
\renewenvironment{abstract}{
	\cleardoublepage
	\begingroup
	\chapter*{\vspace*{-3em}ABSTRACT}
	\thispagestyle{fancy}
	\addcontentsline{toc}{chapter}{Abstract}
}{
	\endgroup
}

% Committee table utility
\ExplSyntaxOn

\seq_new:N \g_committee_seq

% set the committee list (comma-separated)
\NewDocumentCommand{\setcommittee}{m}
{
	\seq_set_from_clist:Nn \g_committee_seq {#1}
}

% print the table
\NewDocumentCommand{\printcommittee}{}
{
	\begin{center}
		\begin{tabular}{lcc}
			\textbf{Committee Member} & \textbf{Signature} & \textbf{Date}     \\[1.8em]
			\seq_map_inline:Nn \g_committee_seq
			{
			##1                       & \rule{12em}{0.5pt} & \rule{6em}{0.5pt} \\[1.8em]
			}
		\end{tabular}
	\end{center}
}

\ExplSyntaxOff

\newenvironment{certificate}{
	\cleardoublepage{}
	\thispagestyle{firstpage}
	\vspace*{1.5em}
	\begin{center} \LARGE\bfseries CERTIFICATE \end{center}
	\addcontentsline{toc}{chapter}{Certificate}
	\vspace{0.5cm}
}{}

\fancypagestyle{firstpage}{
	\fancyhf{}
	\fancyhead[C]{\includegraphics[width=\linewidth]{figures/iiserb/letterhead.png}}
	\renewcommand{\headrulewidth}{0pt}
}

\pagestyle{fancy}
\fancyhf{}

\renewcommand{\chaptermark}[1]{%
	\markboth{\thechapter.\ #1}{}%
}

\fancyhead[C]{\bfseries \leftmark}
\fancyhead[R]{\textbf{\thepage}}

\renewcommand{\headrulewidth}{0.4pt}

\newcommand{\insertEmptyPage}{
	\clearpage
	\thispagestyle{empty}
	\mbox{}
	\clearpage
}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\hypersetup{colorlinks=true, linkcolor=black, citecolor=Blue, urlcolor=Blue}
\RequirePackage[capitalize]{cleveref}

