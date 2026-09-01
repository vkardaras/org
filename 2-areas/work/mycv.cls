% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[28/07/2026 My Custom CV Class]

% Preliminary Declarations
\LoadClass{article}

\RequirePackage[sfdefault,lf]{carlito}
\RequirePackage[T1]{fontenc}
\RequirePackage[a4paper, margin=1.6cm]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{multicol}

% Set default color
\definecolor{defaultcolor}{HTML}{1F4E79}
\newcommand{\sectioncolor}{defaultcolor}
% 1F4E79

% Option Handling
\DeclareOption{red}{\renewcommand{\sectioncolor}{red}}
\DeclareOption{blue}{\renewcommand{\sectioncolor}{blue}}
\DeclareOption{green}{\renewcommand{\sectioncolor}{green}}
\DeclareOption{purple}{\renewcommand{\sectioncolor}{purple}}
\DeclareOption*{\ClassWarning{mycv}{The option '\CurrentOption' is unknown.}}
\ProcessOptions\relax

% More Declarations

% ---------- General formatting ----------
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

\hypersetup{
    colorlinks=true,
    urlcolor=\sectioncolor,
    linkcolor=\sectioncolor
}

\setlist[itemize]{
    leftmargin=1.2em,
    itemsep=5pt,
    topsep=2pt,
    parsep=0pt,
    partopsep=0pt
}

\renewcommand{\labelitemi}{\tiny\textbullet}

% ---------- Section headings ----------
\titleformat{\section}
  {\large\bfseries\color{\sectioncolor}}
  {}
  {0pt}
  {}
  [\vspace{1pt}\color{\sectioncolor}\titlerule]

\titlespacing*{\section}{0pt}{9pt}{5pt}

% ---------- Custom commands ----------

\newcommand{\skillEntry}[2]{
    \textbf{#1}:\enspace{#2}
}
  
\newcommand{\resumeEntry}[3]{
    \vspace{5pt}
    \textbf{#1} \enspace/\enspace{#2} \hfill \textit{#3}
    \vspace{2pt}
}

\newcommand{\eduEntry}[4]{
    \vspace{5pt}
    \textbf{#1}:\enspace{#2} \hfill \textit{#3} \\
    {#4}
    \vspace{2pt}
}

\newcommand{\projectEntry}[2]{
    \textbf{#1} \hfill #2
}
