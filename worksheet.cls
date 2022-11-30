\LoadClass[11pt]{article}

\RequirePackage{geometry}
\RequirePackage[hidelinks,pdfusetitle]{hyperref}
\RequirePackage[many]{tcolorbox}

\geometry{a4paper,tmargin=1cm,bmargin=1.5cm,lmargin=1cm,rmargin=5cm,marginparwidth=4cm}

\tcbset{simon box/.style={
    freelance,
    colback=white,
    colbacktitle=white,
    coltitle=black,
    fonttitle=\large\bfseries,
    bottomrule=0pt,
    boxrule=0pt,
    colframe=white,
    overlay unbroken and first={
    \draw[#1,line width=3pt]
      ([xshift=5pt]frame.north west) -- (frame.north west) -- (frame.south west);
    \draw[#1,line width=3pt]
      ([xshift=-5pt]frame.north east) -- (frame.north east) -- (frame.south east);
    },
    overlay unbroken app={
    \draw[#1,line width=3pt,line cap=rect]
      (frame.south west) -- ([xshift=5pt]frame.south west);
    \draw[#1,line width=3pt,line cap=rect]
      (frame.south east) -- ([xshift=-5pt]frame.south east);
    },
    overlay middle and last={
    \draw[#1,line width=3pt]
      (frame.north west) -- (frame.south west);
    \draw[#1,line width=3pt]
      (frame.north east) -- (frame.south east);
    },
    overlay last app={
    \draw[#1,line width=3pt,line cap=rect]
      (frame.south west) -- ([xshift=5pt]frame.south west);
    \draw[#1,line width=3pt,line cap=rect]
      (frame.south east) -- ([xshift=-5pt]frame.south east);
    },
  }
}

\newcounter{taskcount}
\newtcolorbox{task}[1][]{
  title=\vspace{2.5pt}{\stepcounter{taskcount}Task \thetaskcount: #1},
  simon box = red!75!black
}

\newtcolorbox{task*}[1][]{
  simon box = red!75!black,
  title=\vspace{2.5pt}{#1},
}

\newcounter{homeworkcount}
\newtcolorbox{homework}[1][]{
  title=\vspace{2.5pt}{\stepcounter{homeworkcount}Homework \thehomeworkcount: #1},
  simon box = red!75!black
}

\newtcolorbox{solution*}[1][]{
  title=\vspace{2.5pt}{Solution #1},
  simon box = green!75!black
}

\newtcolorbox{template*}[1][]{
  title=\vspace{2.5pt}{Template use},
  simon box = blue!50!red
}
\newtcolorbox{example*}[1][]{
  title=\vspace{2.5pt}{#1},
  simon box = blue!75!black
}

\let\oldmarginpar\marginpar
\renewcommand\marginpar[1]{\-\oldmarginpar[\footnotesize #1]%
{\footnotesize #1}}

\setlength{\parindent}{0em}

\newcommand{\filename}[1]{{\color{red!30!black}\tt #1}}
