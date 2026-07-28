% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myarticle}[20/07/2025 My Custom Article Class]

% Preliminary Declarations
\LoadClass{article}
\RequirePackage[a6paper]{geometry}
\RequirePackage[table]{xcolor}
\RequirePackage{array}
%\RequirePackage{fontspec}
\RequirePackage{titlesec}

% Set default color
%\newcommand{\mycolor}{red}

% Option Handling
%\DeclareOption{blue}{code}
%\DeclareOption*{\ClassWarning{myarticle}{The option '\CurrentOption' is unknown.}}
%\ProcessOptions\relax

% More Declarations
%\setmainfont{Times New Roman}
% Redefine the \maketitle command
\makeatletter
\renewcommand{\maketitle}
{\begin{center}
\begin{tabular}{>{\centering}p{0.9\textwidth}}
~ \\
\cellcolor{red!20}{\bfseries\color{red!80!black}\scshapa\large\@title} \\
\color{red!80!black} \@author \\
~ \\
\end{tabular}
\end{center}} 
\makeatother

% Customize section title formatting
\titleformat*{\section}{\color{red!80!black}\bfseries\large}