\ProvidesClass{resources/stylesheets/kult}
\LoadClass[a4paper,twoside]{article}

% packages
\RequirePackage{changepage}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fontspec}
\RequirePackage{lettrine}
\RequirePackage{titlesec}
\RequirePackage[dvipsnames,table]{xcolor}

% alternating backgrounds
\RequirePackage[
    placement=center,
    pages=some,
    scale=1,
    angle=0,
    opacity=1,
]{background}

\newcommand\BGLeft{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_left.jpg}}}\BgMaterial}
\newcommand\BGRight{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_right.jpg}}}\BgMaterial}
\newcommand\BGSection{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_section.jpg}}}\BgMaterial}
\newcommand\BGTitle{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_title.jpg}}}\BgMaterial}
\newcommand\BGRed{\backgroundsetup{color=KULTred, contents={\begin{tikzpicture} \fill[KULTred] (0,0) rectangle (100, 100);\end{tikzpicture}}}\BgMaterial}

\RequirePackage{ifthen}
\AddEverypageHook{%
    \ifthenelse{\isodd{\value{page}}}%
    {\BGRight}%
    {\BGLeft}
}

% margins
\RequirePackage[a4paper, top=2.5cm, bottom=2.5cm, left=2cm, right=2cm, asymmetric]{geometry}

% indents
\setlength\parindent{0pt}

% fonts
\setmainfont[
    Path=resources/stylesheets/fonts/,
    Extension = .ttf,
    UprightFont={*-R},
    BoldFont={*-B},
    ItalicFont={*-RI},
    BoldItalicFont={*-BI},
    Scale=0.8,
]{Ubuntu}

\newfontface\bodyfontlight[Path=resources/stylesheets/fonts/]{Ubuntu-R.ttf}
\newfontface\bodyfontmedium[Path=resources/stylesheets/fonts/]{Ubuntu-M.ttf}
\newfontface\bodyfontbold[Path=resources/stylesheets/fonts/]{Ubuntu-B.ttf}
\newfontface\headingfont[Path=resources/stylesheets/fonts/]{Ubuntu-B.ttf}
\newfontface\ornatefont[Path=resources/stylesheets/fonts/]{Ubuntu-C.ttf}

% dropcaps
\renewcommand{\LettrineFontHook}{\color{KULTred} \ornatefont}
\newcommand\dropcap[1]{\lettrine[lines=10, depth=1, loversize=0.05, findent=1em]{#1}{}}

% colors
\definecolor{KULTred}{HTML}{9b201f}  % primary
\definecolor{KULTgold}{HTML}{968c6a} % secondary
\definecolor{KULTblue}{HTML}{2a548b} % tertiary
\definecolor{KULTblack}{HTML}{000000}
\definecolor{KULTwhite}{HTML}{FFFFFF}
\definecolor{KULTtext}{HTML}{444444}
\definecolor{KULTcover}{named}{KULTwhite} % overridden to KULTtext when using bg_print or bg_none

\color{KULTtext} % set default color for entire document

\newcommand\bluebf[1]{\textcolor{KULTblue}{\textbf{#1}}}
\newcommand\redbf[1]{\textcolor{KULTred}{\textbf{#1}}}
\newcommand\blackbf[1]{\textcolor{KULTblack}{\textbf{#1}}}
\newcommand\goldbf[1]{\textcolor{KULTgold}{\textbf{#1}}}

% lists
\renewcommand\labelitemi{\color{KULTgold} \headingfont \char"25CA}

\setlist[description,1]{leftmargin=0pt,labelindent=0pt} % means nested descriptions won't work

% title page
\newcommand* \thecovertext{~}
\newcommand* \covertext[1]{\renewcommand* \thecovertext{#1}}

\newcommand\redpage{\clearpage \thispagestyle{empty} \BGRed}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \BGTitle
        \thispagestyle{empty}

        \begin{center}
            \vfill

            % title
            {\fontsize{72pt}{72pt}\selectfont \headingfont \color{KULTcover} \@title\\}
            \vfill

            % author
            \ifx\@author\empty
            ~
            \else
            {\large \bodyfontbold \color{KULTred} Author\\}
            \vspace{1em}
            {\large \bodyfontmedium \color{KULTcover} \@author\\}
            \fi
            \vfill

            % cover text
            \ifx\thecovertext\empty
            ~
            \else
            \begin{adjustwidth}{2cm}{2cm}
                {\normalsize \color{KULTcover} \raggedright \centering \thecovertext\\}
            \end{adjustwidth}
            \fi
            \vfill

            % space for bottom logo
            \vspace{30mm}
        \end{center}

        \clearpage
    \end{titlepage}

    % blank red pages
    \redpage
    \redpage
}

% section style overrides
\newcommand*\cleartoleftpage{%
  \clearpage
  \ifodd\value{page}\hbox{}\clearpage\fi
}

\titleformat{\section}[display]
  {\color{KULTgold} \headingfont \onecolumn \raggedright \centering}
  {\cleartoleftpage \fontsize{32pt}{32pt}\selectfont \color{KULTred} \BGSection \vfill Chapter \thesection\\}
  {0pt}
  {\fontsize{48pt}{48pt}\selectfont}
  [\vfill \twocolumn]

\titleformat{name=\section,numberless}[display]
  {\color{KULTgold} \headingfont \onecolumn \raggedright \centering}
  {\cleartoleftpage \fontsize{32pt}{32pt}\selectfont \color{KULTred} \BGSection \vfill}
  {0pt}
  {\fontsize{48pt}{48pt}\selectfont}
  [\vfill \onecolumn]

\titleformat{\subsection}[block]
  {\color{KULTred} \headingfont}
  {}
  {0pt}
  {\huge}
  []

\titleformat{\subsubsection}[block]
  {\color{KULTred} \bodyfontbold}
  {}
  {0pt}
  {\large}
  []

\titleformat
  {\paragraph}%command
  [block]%shape
  {\color{KULTgold}}%format
  {}
  {0pt}
  {\colorbox{KULTblack}}
  [\vspace*{-1pt}\color{KULTblack}\hrule height 0.75mm]

% black/gold headers
\newcommand\goldbox[1]{\hspace{1em}\colorbox{KULTgold}{\color{KULTblack} \bodyfontmedium #1}\vspace{-1pt}{\color{KULTgold}\hrule height 1.5pt} \vspace{1em}}
\newcommand\blackbox[1]{\hspace{1em}\colorbox{KULTblack}{\color{KULTgold} \bodyfontmedium #1}\vspace{-1pt}{\color{KULTblack}\hrule height 1.5pt} \vspace{1em}}

% page header/footer
\pagestyle{fancy}
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}%
\setlength\footskip{2.0cm}%
\fancyheadoffset[rof,lef]{15mm}%
\fancyfoot[RO, LE]{\color{KULTgold} \huge \headingfont \makebox[15pt][c]{\thepage}}%

% table of contents
\renewcommand\tableofcontents{%
    \subsection*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }

% package options
\DeclareOption{bg-full}{}

\DeclareOption{bg-print}{
  \renewcommand\BGLeft{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_left_print.jpg}}}\BgMaterial}
  \renewcommand\BGRight{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_right_print.jpg}}}\BgMaterial}
  \renewcommand\BGSection{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_section_print.jpg}}}\BgMaterial}
  \renewcommand\BGTitle{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_title_print.jpg}}}\BgMaterial}

  \definecolor{KULTcover}{named}{KULTtext}
}

\DeclareOption{bg-logo}{
  \renewcommand\BGLeft{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGRight{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGSection{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGTitle{\backgroundsetup{contents={\includegraphics[]{resources/stylesheets/res/bg_title_logo.jpg}}}\BgMaterial}

  \definecolor{KULTcover}{named}{KULTtext}
}

\DeclareOption{bg-none}{
  \renewcommand\BGLeft{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGRight{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGSection{\backgroundsetup{contents={}}\BgMaterial}%
  \renewcommand\BGTitle{\backgroundsetup{contents={}}\BgMaterial}%

  \definecolor{KULTcover}{named}{KULTtext}
}

\DeclareOption{noredpages}{\renewcommand\redpage{}}

\DeclareOption{publishable}{%
}

%

\DeclareOption{commercialfonts}{
  \setmainfont[
      Path=resources/stylesheets/fonts/,
      Extension = .ttf,
      UprightFont={AlverataIrregular-L},
      BoldFont={AlverataIrregular-B},
      ItalicFont={Alverata-LI},
      BoldItalicFont={Alverata-BI},
      Scale=0.8,
  ]{AlverataIrregular}

  \definecolor{KULTtext}{HTML}{1d1d1c}
  \color{KULTtext}

\renewfontface\bodyfontlight[Path=resources/stylesheets/fonts/]{AlverataIrregular-L.ttf}
\renewfontface\bodyfontmedium[Path=resources/stylesheets/fonts/]{AlverataIrregular-M.ttf}
\renewfontface\bodyfontbold[Path=resources/stylesheets/fonts/]{AlverataIrregular-B.ttf}
\renewfontface\headingfont[Path=resources/stylesheets/fonts/]{Infidel-C.ttf}
\renewfontface\ornatefont[Path=resources/stylesheets/fonts/]{Sokol.ttf}
}

\ExecuteOptions{bg-full}
\ProcessOptions
