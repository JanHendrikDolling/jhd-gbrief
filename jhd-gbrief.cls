\def\filedate{2016/05/11}
\def\fileversion{0.1.0}

% Copyright (C) 2016 Jan-Hendrik Dolling.

% License
% http://www.latex-project.org/lppl.txt

% based on https://www.ctan.org/tex-archive/macros/latex/contrib/g-brief
% Version 4.0.2

\LoadClass{g-brief2}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jhd-gbrief}[2016/05/02 My custom g-brief class]

%\RequirePackage{titlesec}

\newif\ifzeichenrechts\zeichenrechtsfalse
\def\zeichenrechts{\zeichenrechtstrue}

\def\IhrZeichenRechts#1{\def\ihrzeichenRechts{#1}} \def\ihrzeichenRechts{}
\def\IhrSchreibenRechts#1{\def\ihrschreibenRechts{#1}} \def\ihrschreibenRechts{}
\def\MeinZeichenRechts#1{\def\meinzeichenRechts{#1}} \def\meinzeichenRechts{}


\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax
    \normalsize \or \small \or \footnotesize
  \fi
  \headheight16pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
      \put(-6, 3){\parbox{180mm}{\Large \textsc{\quad\name}}}
%      \iftrennlinien \put(0,-8){\rule{165mm}{0.5pt}} \fi
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
        \put(-15,-182.16){\line(1,0){3}} \fi
      \put( -9, -22.00){\makebox(85,4)
%      {\scriptsize \textrm{\retouradresse}}}
      { \tiny \textrm{\retouradresse}}}
      \iftrennlinien \put( -9, -22.10){\line(1,0){85}} \fi
      \put(-1,-28.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
        \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
      \iffenstermarken
        \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
        \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
        \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
        \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
        \fi
      \put(92.5,-20){
          \ifzeichenrechts
          \begin{minipage}{7cm}
            \begin{flushright} 
            \ihrzeichentext \hspace*{0mm} \\
            \ihrzeichenRechts \hspace*{0mm} \\
            \vspace{2mm}
            \ihrschreibentext \hspace*{0mm} \\
            \ihrschreibenRechts \hspace*{0mm} \\
            \vspace{2mm}
            \ifunserzeichen
            \unserzeichentext \hspace*{0mm} \\
            \else
            \meinzeichentext \hspace*{0mm} \\
            \fi
            \meinzeichenRechts \hspace*{0mm} \\
            \end{flushright}
          \end{minipage}
          \else {} \fi}
    \end{picture}
    \hfill
  }
  \def\@oddfoot{
    \unitlength1mm
    \begin{picture}(0,0)
      \put(-9,0){\parbox{180mm}{
        \tiny \newcounter{blockzahl} \def\@blockbreite{170mm}
        \iftrennlinien \rule{180mm}{0.5pt} \fi
        \ifthenelse{
          \equal{\namezeilea}{\empty} \and \equal{\namezeileb}{\empty} \and
          \equal{\namezeilec}{\empty} \and \equal{\namezeiled}{\empty} \and
          \equal{\namezeilee}{\empty} \and \equal{\namezeilef}{\empty} \and
          \equal{\namezeileg}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\adresszeilea}{\empty} \and \equal{\adresszeileb}{\empty} \and
          \equal{\adresszeilec}{\empty} \and \equal{\adresszeiled}{\empty} \and
          \equal{\adresszeilee}{\empty} \and \equal{\adresszeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\telefonzeilea}{\empty} \and \equal{\telefonzeileb}{\empty}
          \and \equal{\telefonzeilec}{\empty} \and \equal{\telefonzeiled}
          {\empty} \and \equal{\telefonzeilee}{\empty} \and
          \equal{\telefonzeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\internetzeilea}{\empty} \and \equal{\internetzeileb}{\empty}
          \and \equal{\internetzeilec}{\empty} \and \equal{\internetzeiled}
          {\empty} \and \equal{\internetzeilee}{\empty} \and
          \equal{\internetzeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{
          \equal{\bankzeilea}{\empty} \and \equal{\bankzeileb}{\empty} \and
          \equal{\bankzeilec}{\empty} \and \equal{\bankzeiled}{\empty} \and
          \equal{\bankzeilee}{\empty} \and \equal{\bankzeilef}{\empty}}
          {}{\stepcounter{blockzahl}}
        \ifthenelse{\value{blockzahl} = 1}
          {\scriptsize \def\@blockbreite{177mm}}{}
        \ifthenelse{\value{blockzahl} = 2}
          {\scriptsize \def\@blockbreite{88mm}}{}
        \ifthenelse{\value{blockzahl} = 3}
          {\scriptsize \def\@blockbreite{59mm}}{}
        \ifthenelse{\value{blockzahl} = 4}
          {\scriptsize \def\@blockbreite{44mm}}{}
        \ifthenelse{\value{blockzahl} = 5}
          {\tiny \def\@blockbreite{35mm}}{}
        \ifthenelse{
          \equal{\namezeilea}{\empty} \and \equal{\namezeileb}{\empty} \and
          \equal{\namezeilec}{\empty} \and \equal{\namezeiled}{\empty} \and
          \equal{\namezeilee}{\empty} \and \equal{\namezeilef}{\empty} \and
          \equal{\namezeileg}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite}
            \namezeilea \hspace*{0mm} \\ \namezeileb \hspace*{0mm} \\
            \namezeilec \hspace*{0mm} \\ \namezeiled \hspace*{0mm} \\
            \namezeilee \hspace*{0mm} \\ \namezeilef \hspace*{0mm} \\
            \namezeileg \hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\adresszeilea}{\empty} \and \equal{\adresszeileb}{\empty} \and
          \equal{\adresszeilec}{\empty} \and \equal{\adresszeiled}{\empty} \and
          \equal{\adresszeilee}{\empty} \and \equal{\adresszeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \adresstext} \\
            \adresszeilea \hspace*{0mm} \\ \adresszeileb \hspace*{0mm} \\
            \adresszeilec \hspace*{0mm} \\ \adresszeiled \hspace*{0mm} \\
            \adresszeilee \hspace*{0mm} \\ \adresszeilef \hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\telefonzeilea}{\empty} \and \equal{\telefonzeileb}{\empty}
          \and \equal{\telefonzeilec}{\empty} \and \equal{\telefonzeiled}
          {\empty} \and \equal{\telefonzeilee}{\empty} \and
          \equal{\telefonzeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \telefontext} \\
            \telefonzeilea\hspace*{0mm} \\ \telefonzeileb\hspace*{0mm} \\
            \telefonzeilec\hspace*{0mm} \\ \telefonzeiled\hspace*{0mm} \\
            \telefonzeilee\hspace*{0mm} \\ \telefonzeilef\hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\internetzeilea}{\empty} \and \equal{\internetzeileb}{\empty}
          \and \equal{\internetzeilec}{\empty} \and \equal{\internetzeiled}
          {\empty} \and \equal{\internetzeilee}{\empty} \and
          \equal{\internetzeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \internettext} \\
            \internetzeilea\hspace*{0mm} \\ \internetzeileb\hspace*{0mm} \\
            \internetzeilec\hspace*{0mm} \\ \internetzeiled\hspace*{0mm} \\
            \internetzeilee\hspace*{0mm} \\ \internetzeilef\hspace*{0mm}
          \end{minipage}}
        \ifthenelse{
          \equal{\bankzeilea}{\empty} \and \equal{\bankzeileb}{\empty} \and
          \equal{\bankzeilec}{\empty} \and \equal{\bankzeiled}{\empty} \and
          \equal{\bankzeilee}{\empty} \and \equal{\bankzeilef}{\empty}}
          {}{\begin{minipage}[t]{\@blockbreite} {\bf \banktext} \\
            \bankzeilea\hspace*{0mm} \\ \bankzeileb\hspace*{0mm} \\
            \bankzeilec\hspace*{0mm} \\ \bankzeiled\hspace*{0mm} \\
            \bankzeilee\hspace*{0mm} \\ \bankzeilef\hspace*{0mm}
          \end{minipage}}}}
    \end{picture} \hfill}
  \def\@evenhead{\@oddhead} \def\@evenfoot{\@oddfoot}}
 

