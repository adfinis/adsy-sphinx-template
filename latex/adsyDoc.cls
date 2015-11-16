%*************************************************
%
%    *             **
%   * *       *   *    *  ***   *   ****
%  *   *      *   *       *  *     *
%  *****   ****  ***   *  *  *  *   ***
%  *   *  *   *   *    *  *  *  *      *
%  *   *   ****   *    *  *  *  *  ****
%
%
%   ****         ***                                   *     ***
%  *      *  *  *   *   **   ***   *  *  ****         * *   *   *
%   ***   *  *  *      *    *   *  *  *  *   *       *   *  *
%      *   ***  *  **  *    *   *  *  *  *   *       *****  *  **
%      *     *  *   *  *    *   *  *  *  ****        *   *  *   *
%  ****      *   ****  *     ***    ***  *           *   *   ****
%         ***                            *
%
%*************************************************


\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{adsyDoc}[2011/03/03 Template for OOPLSS Documentation]

%% Load the book class with the following parameters:
%% a4 paper, 10pt, two side pages, titlepage
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{titlepage}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{numbers}{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption{todo}{\def \showtodo {showtodo}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ExecuteOptions{a4paper,11pt,titlepage}
\ProcessOptions\relax

%% Load book class
\LoadClass[numbers=noenddot]{scrbook} % report better for pdf



\usepackage{hyperref}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{setspace}
\usepackage{tabularx}
\usepackage[top=2cm, bottom=2.8cm, left=2.5cm, right=2.5cm]{geometry}
\usepackage[explicit]{titlesec}

% Languages
\usepackage{polyglossia}
\setdefaultlanguage{german}
\setotherlanguage[variant=uk]{english}

% Date format
\usepackage[ddmmyyyy]{datetime}
\renewcommand{\dateseparator}{.}

% Font
\usepackage{fontspec}
\setmainfont{TheSansOffice}


% Set table of context title
\addto\captionsbritish{%
  \renewcommand{\contentsname}{Contents}
}
\addto\captionsgerman{%
  \renewcommand{\contentsname}{Inhalt}
}

% Set numbering to include subsections as well
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}


% Title Page
\renewcommand{\maketitle}{\begin{titlepage}
	\vspace*{8.1cm}
	{\fontsize{8pt}{1em} \selectfont \subtitle{}}

	\vspace{0.3cm}
	{\fontsize{14.4pt}{1em} \selectfont \textbf{\@title}}

	\vspace{0.3cm}

	\bgroup{}
	\fontsize{9pt}{1em} \selectfont
	\begin{tabular}{>{\hspace{-0.5pc}}l  l}
		\textbf{Autor/en:} & \@author \\
		\textbf{Version:}  & \release{} | \releasename{} \\
		\textbf{Datum:}    & \@date | \textcopyright{} {\fontsize{7pt}{1em} \selectfont Adfinis SyGroup AG} \\
	\end{tabular}
	\egroup{}
	\vfill
    \end{titlepage}
}


\usepackage{lastpage}

% The picture on the right
\usepackage{background}
\SetBgContents{\includegraphics[height=7cm]{logo}}
\SetBgScale{1}
\SetBgAngle{0}
\SetBgPosition{current page.north east}
\SetBgHshift{-1.5cm}
\SetBgVshift{-4cm}

% Header and footer specific settings
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.4pt}

\newcommand{\LeftFoot}{\fontsize{7pt}{1em}\selectfont
	\textbf{\@title} | \subtitle{} \\
	\textcopyright{} Adfinis SyGroup AG | Version \release{} | Status \releasename{}
}

\newcommand{\RightFoot}{\fontsize{7pt}{1em} \selectfont
\thepage{}~/~\pageref{LastPage} \\
}


% Page styles

% Empty gets invoked by maketitle
\fancypagestyle{empty}{% Clear header and footer
	\fancyhf{}
	\fancyfoot[L]{\LeftFoot}
	\fancyfoot[R]{\RightFoot}
}
% All other pages
\fancypagestyle{plain}{% Clear header and footer
	\fancyhf{}
	\fancyfoot[L]{\LeftFoot}
	\fancyfoot[R]{\RightFoot}
}


% Spacings

% Set default space between chapter heading and text
% Syntax:
% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\chapter}{0pt}{10.00mm}{2.5cm}
\titlespacing*{\section}{0pt}{4.99mm}{1.99mm}
\titlespacing*{\subsection}{0pt}{4.99mm}{1.99mm}


% Colors, because sphinx uses colors for the headers
\usepackage{color}


% Formatting of default titles (chapter, section and so on)

% Font sizes
% Syntax: \fontsize{size}{baselineskip}

% Section
\titleformat{\chapter}[display]
	{\fontsize{16pt}{6.40mm}}
	{\color{black}{\textbf{\thechapter}\hspace{11.70mm}\textbf{#1}}}
	{1em}
	{}

% Subsection
\titleformat{\section}[display]
	{\normalfont\fontsize{13pt}{5.29mm}}
	{\color{black}{\textbf{\thesection}\hspace{9.45mm}\textbf{#1}}}
	{1em}
	{}

% Subsubsection
\titleformat{\subsection}[display]
	{\normalfont\fontsize{11pt}{5.29mm}}
	{\color{black}{\textbf{\thesubsection}\hspace{6.10mm}\textbf{#1}}}
	{1em}
	{}

