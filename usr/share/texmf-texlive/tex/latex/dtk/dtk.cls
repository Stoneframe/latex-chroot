%%
%% This is file `dtk.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dtk.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from dtk.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file dtk.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%%
%%^^A%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%^^A $Id: dtk.dtx,v 1.8 2002/04/10 21:03:42 gene Exp gene $
%%^^A%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Purpose:
%%      LaTeX Class and Styles for ``Die TeXnische Komoedie''.
%%
%% Documentation:
%%      The documentation  can be  generated  from  the original file
%%      dtk.dtx with the doc style/package. LaTeX the file dtk.tex to
%%      get the full documentation in DVI format.
%%
%%
%% Author: Gerd Neugebauer
%%         Mainzer Str. 8
%%         56321 Rhens (Germany)
%% Mail:   gene@gerd-neugebauer.de
%%
%% Copyright (C) 1995-1996 Gerd Neugebauer
%% Copyright (C) 1997-2002 DANTE, Deutschsprachige
%%            Anwendervereinigung TeX e.V.
%%
%%  dtk.dtx is distributed in the hope that it  will  be useful, but
%%  WITHOUT  ANY  WARRANTY.    No   author  or  distributor  accepts
%%  responsibility to anyone for the consequences of using it or for
%%  whether it serves any particular purpose or works at all, unless
%%  he says so in writing.
%%
%%  Everyone is granted permission to  copy, modify and redistribute
%%  dtk.dtx,  provided  this copyright notice is preserved  and  any
%%  modifications are indicated.
%%
%%
%%  This class is still under development and may be replaced with a
%%  new version which provides enhanced functionality.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
%%^^A%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\DTKrcs$#1: #2 #3${#2}
\def\filename{dtk.dtx}
\xdef\fileversion{\DTKrcs$Revision: 1.8 $}
\xdef\filedate{\DTKrcs$Date: 2002/04/10 21:03:42 $}
\let\docversion=\fileversion
\let\docdate=\filedate
\newif\ifDTK@Author@
\DTK@Author@true
\newif\ifDTK@german@
\DTK@german@true
\ifx\documentclass\@undefined
  \newcommand\RequirePackage[1]{
    \chardef\DTK@cat=\the\catcode`\@
    \catcode`\@=11
    \input{#1.sty}%
    \catcode`\@=\DTK@cat}
  \let\LoadClass=\RequirePackage
  \newcommand\InputIfFileExists[3]{%
    \openin\DTK@file #1
    \ifeof\DTK@file\closein\DTK@file #3%
    \else\closein\DTK@file #2\input{#1}%
    \fi}
  \newcommand\DeclareOption{\@ifstar{\@gobble}{\DTK@DeclareOption}}
  \newcommand\DTK@DeclareOption[2]{\@namedef{ds@#1}{#2}}
  \let\ProcessOptions=\relax
  \let\OptionNotUsed=\gobble
  \def\ProvidesClass#1[#2]{\typeout{Document Style #1 #2}}
  \newcommand\emph[1]{{\em #1}\/}
  \newcommand\textbf[1]{{\bf #1}}
  \newcommand\textrm[1]{{\rm #1}}
  \newcommand\textsc[1]{{\sc #1}}
  \newcommand\textsf[1]{{\sf #1}}
  \newcommand\textsl[1]{{\sl #1\/}}
  \newcommand\textit[1]{{\it #1\/}}
  \newcommand\texttt[1]{{\tt #1}}

  \@ifundefined{fontshape}{\let\fontshape=\@gobble}{}
  \@ifundefined{selectfont}{\let\selectfont=\relax}{}

  \newcommand\providescommand[2]{\ifx#1\@undefined\newcommand#1{#2}\fi}
\fi
\newread\DTK@file
\ProvidesClass{dtk}[\filedate\space\fileversion\space  gene]
\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{12pt}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
\DeclareOption{oneside}{\OptionNotUsed}
\DeclareOption{full}{\DTK@Author@false}
\DeclareOption{omitgerman}{\DTK@german@false}
\DeclareOption{ancient}{\def\DTK@layout{95}}
\DeclareOption{95}{\def\DTK@layout{95}}
\DeclareOption{96}{\def\DTK@layout{96}}
\DeclareOption{97}{\def\DTK@layout{97}}
\DeclareOption{98}{\def\DTK@layout{98}}
\DeclareOption{99}{\def\DTK@layout{99}}
\DeclareOption{00}{\def\DTK@layout{00}}
\DeclareOption{01}{\def\DTK@layout{01}}
\DeclareOption{02}{\def\DTK@layout{02}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}
\RequirePackage[T1]{fontenc}
\ifDTK@german@
\RequirePackage{ngerman}
\selectlanguage{ngerman}
\else
\typeout{*** Warning: Loading of (n)german has been omitted. You have to
  load it manually.}
\typeout{*** Don't forget to use the macro \string\DTKgerman\space
  afterwards.}
\fi
\ifDTK@Author@\else
  \RequirePackage{multicol}
  \RequirePackage{graphicx,color}
\fi
\RequirePackage{dtklogos}
\newcommand\NeedPackage[1]{%
  \expandafter\ifx\csname ver@#1.sty\endcsname\relax
    \typeout{***}%
    \typeout{***}%
    \typeout{*** The required package `#1' seems not to be loaded.}%
    \typeout{*** I try to stumble along as good as I can.}%
    \typeout{*** Expect some undefined macros or other errors.}%
    \typeout{***}%
    \typeout{***}
  \fi}
\paperwidth  = 148.5mm
\paperheight = 210mm
\textheight = 471pt
\textwidth  = 333pt
\oddsidemargin  = 0pt
\evensidemargin = \oddsidemargin
\topmargin      = 0pt
\headheight = 17pt
\headsep    = 17pt
\footskip = 24pt
\parskip   = 0.5\baselineskip \advance\parskip by 0pt plus 2pt
\parindent = 0pt
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
\renewcommand\textfraction{.1}
\columnsep = 5pt
\emergencystretch = 1.5em
\raggedbottom
\clubpenalty  = 10000
\widowpenalty = 10000
\newcommand\DTKgerman{
  \let\DTK@captionsgerman=\captionsgerman
  \let\captionsgerman=\DTK@captionsgerman
  \@ifundefined{l@ngerman}{}{\selectlanguage{ngerman}}%
}
\newcommand\DTK@captionsgerman{
  \DTK@captionsgerman
  \gdef\refname{Literatur}%
  \gdef\bibname{Literatur}%
  \gdef\contentsname{Inhalt Heft \volume}%
}
\ifDTK@german@
  \DTKgerman
\fi
\newcommand\addressname{Autoren/Organisatoren}
\newcommand\journalname{Die \TeX nische Kom{\"o}die}
\newcommand\volume{?/?? --- Entwurf \today\
  \begingroup
    \count1=\time\divide\count1 60
    \count2=\count1 \multiply\count2 -60 \advance\count2\time
    \the\count1:\ifnum\count2<10 0\fi\the\count2
  \endgroup
}
\newcommand\footmark{\journalname\ \volume}
\newcommand\ChapterFont{\Large\sf}
\newcommand\SectionFont{\large\sf}
\newcommand\SubsectionFont{\normalsize\sf}
\newcommand\SubsubsectionFont{\normalsize\sf}
\newcommand\AuthorFont{\large\sf}
\newcommand\TitleFont{\Large\sf}
\newcommand\HeadFont{\sf\fontshape{sl}\selectfont}
\newcommand\FootFont{\footnotesize\sf\fontshape{sl}\selectfont}
\newcommand\PagenoFont{\sf}
\newcommand\NewpageThreshold{100pt}
\newcommand\HeadRuleDepth{0pt}
\newcommand\FootRuleDepth{0pt}
\newcommand\ContentsParSkip{1pt}
\newcommand\DTK@math{%
  \abovedisplayskip      = 4pt plus 2pt minus 1pt
  \belowdisplayskip      = \abovedisplayskip
  \abovedisplayshortskip = 2pt plus 2pt
  \belowdisplayshortskip = \abovedisplayshortskip
}
\let\DTK@@normalsize=\@normalsize
\def\@normalsize{%
  \DTK@@normalsize
  \DTK@math
  \let\@listi=\@listI}
\let\DTK@normalsize=\normalsize
\renewcommand\normalsize{%
  \DTK@normalsize
  \DTK@math
  \let\@listi=\@listI}
\normalsize
\let\DTK@small=\small
\renewcommand\small{%
  \DTK@small
  \DTK@math
  \let\@listi=\@listI}
\let\DTK@footnotesize=\footnotesize
\renewcommand\footnotesize{%
  \DTK@footnotesize
  \DTK@math
  \let\@listi=\@listI}
\begingroup
\gdef\Path@SepI{/""}
\gdef\Path@SepII{\symbol{92}""}
\gdef\Path@SepIII{:""}
\catcode`\/=13
\catcode`\:=13
\catcode`\^=0
^catcode`\\=13
^gdef^Path{^begingroup
  ^catcode`^/=13
  ^catcode`^\=13
  ^catcode`^:=13
  ^catcode`^~=12
  ^catcode`^$=12 %$
  ^catcode`^_=12
  ^catcode`^#=12
  ^let/=^Path@SepI
  ^let\=^Path@SepII
  ^let:=^Path@SepIII
  ^@Path}
^gdef^@Path#1{^texttt{#1}^endgroup}
^endgroup
\providecommand\File[1]{\texttt{#1}}
\providecommand\Package[1]{\texttt{#1}}
\providecommand\Program[1]{\texttt{#1}}
\providecommand\Command[1]{\texttt{#1}}
\providecommand\Macro[1]{\texttt{#1}}
\providecommand\Environment[1]{\texttt{#1}}
\providecommand\Email[1]{\texttt{#1}}
\providecommand\Acronym[1]{\textsc{#1}}
\def\@listI{%
  \leftmargin = \leftmargini
  \parsep     = \parskip
  \topsep     = 0pt plus 2pt
  \itemsep    = 0pt plus 2pt}
\let\@listi=\@listI
\def\@listii{%
  \leftmargin = \leftmarginii
  \labelwidth = \leftmarginii
  \advance   \labelwidth by-\labelsep
  \parsep     = \parskip
  \topsep     = 0pt plus 2pt
  \itemsep    = 0pt plus 2pt}
\def\@listiii{%
  \leftmargin = \leftmarginiii
  \labelwidth = \leftmarginiii
  \advance   \labelwidth by-\labelsep
  \partopsep  = 1pt plus 0pt minus 1pt
  \parsep     = \parskip
  \topsep     = 0pt plus 2pt
  \itemsep    = 0pt plus 2pt}
\@listi
\renewcommand\labelitemi{$\m@th\circ$}
\renewcommand\labelitemii{$\m@th\triangleright$}
\renewcommand\labelitemiii{$\m@th\diamond$}
\setlength\leftmargini{1.5em}
\setlength\leftmarginii{1.4em}
\setlength\leftmarginiii{1.3em}
\setlength\leftmarginiv{1.2em}
\renewenvironment{description}{%
  \begin{list}{}{%
    \labelwidth = 0pt
    \itemindent = -\leftmargin
    \parsep     = \parskip
    \topsep     = 0pt plus 2pt
    \itemsep    = 0pt plus 2pt
    \let\makelabel=\descriptionlabel}%
  }{\end{list}}
\renewcommand\descriptionlabel[1]{%
  \hspace\labelsep{\normalsize\it #1}}
\renewenvironment{quotation}{%
  \list{}{\rightmargin\leftmargin}%
  \item\relax
}{\endlist}
\newenvironment{roll}%
  {\@ifnextchar[{\r@ll}{\r@ll[0pt]}}%
  {\end{list}}
\def\r@ll[#1]{\begin{list}{}{%
    \labelwidth = #1
    \leftmargin = \labelwidth
    \itemsep    = .3ex
    \let\makelabel=\rolllabel}%
  }
\newcommand\rolllabel[1]{\hspace\labelsep \textbf{#1}\hfill}
\newenvironment{example}{\begin{quote}\small}{\end{quote}}
\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore
    \small
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
\setcounter{secnumdepth}{0}
\newif\ifFirstArticle
\FirstArticletrue
\ifDTK@Author@
  \renewcommand\part{%
    \typeout{*** Parts can not be used in single articles.}}
\else
  \renewcommand\part{%
    \clearpage
    \thispagestyle{part}%
    \FirstArticletrue
    \Advance@Label@Prefix
    \@ifstar{\part@star{chapter}}{\part@star{part}}}
\fi
\newcommand\part@star[1]{%
  \@ifnextchar[{\part@optional{#1}}{\part@normal{#1}}}
\def\part@optional#1[#2]#3{%
  \markboth{#2}{#2}%
  \addcontentsline{toc}{#1}{#2}%
  \@ifnextchar[{\part@subtitle{#3}}{\part@nosubtitle{#3}}}
\newcommand\part@normal[2]{%
  \markboth{#2}{#2}%
  \addcontentsline{toc}{#1}{#2}%
  \@ifnextchar[{\part@subtitle{#2}}{\part@nosubtitle{#2}}}
\def\part@subtitle#1[#2]{\TopArt{#1}{\\#2}\bigskip\par}
\newcommand\part@nosubtitle[1]{\TopArt{#1}{}\bigskip\par}
\newcommand\TopArtRule{2pt}
\newcommand\TopArt[2]{%
  \begin{minipage}{\textwidth}\parskip=0pt\parindent=0pt
    \null\vspace{18pt}\par\raggedright\large\sf
    {\huge\sf #1}\\[-.5ex]\rule{\textwidth}{\TopArtRule}%
    \vspace{2pt} #2
  \end{minipage}}
\ifDTK@Author@
  \renewcommand\chapter{%
    \typeout{*** Chapters can not be used in single articles.}}
\else
  \renewcommand\chapter{%
    \@ifnextchar*{\chapter@star}{%
      \@ifnextchar[{\chapter@optional}{\chapter@normal}}}
\fi
\def\chapter@star*{\chapter}
\def\chapter@normal#1{\chapter@optional[#1]{#1}}
\def\chapter@optional[#1]{%
  \typeout{#1}%
  \Advance@Label@Prefix
  \addcontentsline{toc}{chapter}{#1}%
  \markboth{#1}{#1}%
  \FirstArticletrue
  \@startsection{chapter}{0}{\z@}{-1ex plus-1ex minus
    -.2ex}{.5ex plus.2ex}{\ChapterFont}*%
  }
\renewcommand\section{\@startsection{section}{1}{\z@}{%
    -2ex plus-1ex minus-.2ex}{.5ex plus.2ex}{\SectionFont}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}{%
    -2ex plus-1ex minus-.2ex}{0.75ex plus.2ex}{\SubsectionFont}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{%
    -2ex plus-1ex minus-.2ex}{0.75ex plus.2ex}{\SubsubsectionFont}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}{%
    0ex plus1ex minus.2ex}{-.5ex}{\SubsubsectionFont}}
\renewcommand\subparagraph{\@startsection{subparagraph}{4}%
  {\parindent}{0ex plus1ex minus.2ex}{-.5ex}{\SubsubsectionFont}}
\newcommand\keywords[1]{\def\DTK@keywords{#1}}
\def\DTK@keywords{}
\renewcommand\maketitle{%
  \ifDTK@Author@ \thispagestyle{part}\fi
  \ifdim\DTKtitle@skip>0pt\vspace{\DTKtitle@skip}\fi
  \begingroup
    \dimen0=\vsize
    \advance\dimen0 by -\pagetotal
    \ifdim\dimen0<\NewpageThreshold
      \newpage
      \global\FirstArticletrue
    \fi
  \endgroup
  \Advance@Label@Prefix
  \begingroup
    \begin{minipage}{\textwidth}
      \ifFirstArticle
        \global\FirstArticlefalse
        \vskip 3pt
      \else
        \DTKtitle@sep
      \fi
      \setcounter{footnote}0
      \@flushglue=0pt plus .3\textwidth\relax
      \raggedright
      \TitleFont
      \spaceskip=\fontdimen2\font\relax
      \xspaceskip=\fontdimen7\font\relax
      \@title
      \ifx\@author\@empty\else
        \bigskip\par
        \AuthorFont\@author
      \fi
    \end{minipage}%
    \@thanks
    \let\thanks\@gobble
    \addcontentsline{toc}{chapter}{\@title}%
    \markboth{\@title}{\@title}%
  \endgroup
  \let\@title=\@empty
  \let\@author=\@empty
  \let\@thanks=\@empty
  \setcounter{figure}0
  \setcounter{table}0
  \setcounter{equation}0
  \medskip\par}
\newcommand\DTKtitle@skip{12pt}
\newcommand\DTKtitle@sep{\vspace{32pt plus 8pt minus 16pt}}
\renewcommand\and{, }
\let\@title=\@empty
\let\@author=\@empty
\let\@thanks=\@empty
\newenvironment{abstract}{%
  \begin{quote}\small
    }{%
  \end{quote}\medskip\par}
\renewcommand\thefigure{\arabic{figure}}
\renewcommand\thetable{\arabic{table}}
\renewcommand\theequation{\arabic{equation}}
\newcount\DTL@label
\DTL@label=0
\newcommand\Advance@Label@Prefix{%
  \advance\DTL@label 1
  \xdef\Label@Prefix{module \the\DTL@label:}}
\Advance@Label@Prefix
\let\Ref=\ref
\let\Label=\label
\let\Pageref=\pageref
\renewcommand\ref[1]{\Ref{\Label@Prefix:#1}}
\renewcommand\label[1]{\Label{\Label@Prefix:#1}}
\renewcommand\pageref[1]{\Pageref{\Label@Prefix:#1}}
\renewcommand\thebibliography[1]{%
  \section*{\refname}%
  \list{[\arabic{enumi}]}{%
    \settowidth\labelwidth{[#1]}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
  \def\newblock{\hskip .11em plus .33em minus .07em}
  \sloppy\clubpenalty4000\widowpenalty4000
  \sfcode`\.=1000\relax\DTK@bibliography@rightskip}
\newcommand\DTK@bibliography@rightskip{\rightskip=0pt plus 2em}
\newcommand\DTK@bibliography[1]{
  \InputIfFileExists{#1.bbl}{}{\typeout{--- File #1.bbl not found.}}}
\bibliographystyle{dtk}
\newcommand\DTK@fnrightmargin{0em}
\newcommand\DTK@fnleftmargin{1em}
\long\def\@makefntext#1{%
  \@nobreaktrue
  \begin{list}{}{%
      \rightmargin=0pt%
      \parsep=0.333\baselineskip plus 2pt
      \leftmargin=\DTK@fnleftmargin}
  \item\mbox{}%
     \llap{\@textsuperscript{\normalfont\@thefnmark}\kern1pt}%
     #1%
  \end{list}}
\@ifundefined{@textsuperscript}{%
  \def\@textsuperscript#1{%
    {\m@th\ensuremath{^{\mbox{\fontsize\sf@size\z@#1}}}}}
}{}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width0.333\columnwidth
  \kern2.6\p@}
\renewcommand\ps@plain{%
  \let\@mkboth=\@gobbletwo
  \let\chaptermark=\@gobble
  \let\sectionmark=\@gobble
  \let\subsectionmark=\@gobble
  \def\@oddhead{\vbox{\hbox to \textwidth{%
        \let\\=\relax
        \HeadFont \rightmark \hfil\PagenoFont\thepage}\kern 3pt
      \ifdim\HeadRuleDepth>0pt \hrule depth\HeadRuleDepth\fi}}%
  \def\@evenhead{\vbox{\hbox to \textwidth{%
        \let\\=\relax
        \PagenoFont \thepage\hfil\HeadFont \leftmark}\kern 3pt
      \ifdim\HeadRuleDepth>0pt \hrule depth\HeadRuleDepth\fi}}%
  \def\@oddfoot{\vbox{%
      \ifdim\FootRuleDepth>0pt \hrule depth\FootRuleDepth \fi
      \kern 5pt \hbox to \textwidth{\FootFont \footmark\hfil\null}}}%
  \def\@evenfoot{\vbox{%
      \ifdim\FootRuleDepth>0pt \hrule depth\FootRuleDepth \fi
      \kern 5pt \hbox to \textwidth{\null\hfil\FootFont \footmark}}}}
\let\ps@headings\ps@plain
\newcommand\ps@part{%
  \let\@mkboth=\@gobbletwo
  \let\chaptermark=\@gobble
  \let\sectionmark=\@gobble
  \let\subsectionmark=\@gobble
  \let\@oddhead=\@empty
  \let\@evenhead=\@empty
  \def\@oddfoot{\vbox{%
      \ifdim\FootRuleDepth>0pt \hrule depth\FootRuleDepth \fi
      \kern 5pt \hbox to \textwidth{\FootFont \footmark\hfil\null}}}%
  \def\@evenfoot{\vbox{%
      \ifdim\FootRuleDepth>0pt \hrule depth\FootRuleDepth \fi
      \kern 5pt \hbox to \textwidth{\null\hfil\FootFont \footmark}}}}
\pagestyle{plain}
\ifDTK@Author@\else
  \newcommand\DieTeXnischeKomoedie[3]{%
    \thispagestyle{empty}%
    \gdef\volume{#1}%
    \gdef\DTKedition{#2}%
    \gdef\DTKdate{#3}%
    \global\let\bibliography=\DTK@bibliography
    \global\let\bibliographystyle=\@gobble
    \CoverArt{#1}{#2}{#3}%
    \newpage}
\fi
\newcommand\CoverArt[3]{%
  \ifx\CoverTitleFont\@undefined
  \newfont\CoverTitleFont{ecrm1700 scaled \magstep 5}
  \fi
  \ifx\CoverNumberFont\@undefined
  \newfont\CoverNumberFont{ecrm1700 scaled 2986}
  \fi
  \vspace*{-34pt}\hfill
  \setbox\@tempboxa=\hbox to \textheight{\null\hfill\CoverTitleFont
    \journalname\hfill\null}%
  \@tempdimb=\ht\@tempboxa
  \advance\@tempdimb by\dp\@tempboxa
  \hbox to\@tempdimb{%
    \vbox to\wd\@tempboxa{%
      \vskip\wd\@tempboxa
      \vss\rotatebox{90}{\box\@tempboxa}}\hss} \
  \rule{\CoverArt@barwidth}{\textheight}
  \begin{minipage}[b]{.7\textwidth}\raggedright
    \rule{1em}{0pt}%
    \dimen2=\textwidth\advance\dimen2-1em
    \parbox{\dimen2}{\CoverArt@font
      DANTE\\
      Deutschsprachige\\
      Anwendervereinigung
      \TeX\ \eV}\\[1ex]
    \dimen3=\textwidth\advance\dimen3-\CoverArt@gap
    \hfill\rule{\dimen3}{\CoverArt@linewidth}%
    \\[-\baselineskip]\null\hspace{1em}%
    {\CoverArt@small\cover@sub{#1}{#2}{#3}}%
    \\[-\baselineskip]\rule{0pt}{.617647\textheight}%
    \CoverNumberFont
    \null\hfill
    \makebox(0,0)[br]{%
      \textcolor{CoverArt@grey}{%
        \CoverArt@strip@no #1;\hspace{1pt}%
      }}%
  \end{minipage}%
}
\newcommand\cover@sub[3]{%
 #2. Jahrgang\quad Heft #1\quad #3%
}
\ifDTK@Author@\else
  \definecolor{CoverArt@grey}{gray}{.8}
\fi
\def\CoverArt@strip@no#1/#2;{#1\raisebox{0.35ex}{\CoverTitleFont/}#2}
\newcommand\CoverArt@linewidth{0pt}%{1.2pt}
\newcommand\CoverArt@barwidth{2.41pt}
\newcommand\CoverArt@font{\Large\raggedleft}
\newcommand\CoverArt@small{\footnotesize}
\newcommand\CoverArt@gap{2em}
\chardef\DTK@cat=\the\catcode`\"
\catcode`\"=13
\newcommand\address[3]{%
  \begingroup
    \def\"##1{\@ifundefined{detex@@##1}{##1}%
      {\csname detex@@##1\endcsname}}%
    \ifcat a\noexpand"\else\let"=\"\fi
    \def\ss{ss}%
    \let\'=\relax
    \let\`=\relax
    \let\^=\relax
    \let\.=\relax
    \let\==\relax
    \let\d=\relax
    \let\b=\relax
    \let\c=\relax
    \let\v=\relax
    \let\H=\relax
    \let\t=\relax
    \let\u=\relax
    \let\~=\relax
    \def\o{o}%
    \def\O{O}%
    \def\aa{aa}%
    \def\AA{Aa}%
    \def\l{l}%
    \def\L{L}%
    \def\ae{ae}%
    \def\AE{Ae}%
    \def\oe{oe}%
    \def\OE{Oe}%
    \def\TeX{TeX}%
    \def\LaTeX{LaTeX}%
    \def\LaTeXe{LaTeX2e}%
    \let\null=\relax
    \xdef\@ddress{#2, #1}%
  \endgroup
  \begingroup
    \def\\{\string\\}%
    \ifcat a\noexpand"\else\def\"{\string"}\fi
    \def"{\string"}%
    \def\null{}%
    \expandafter\@strip\@ddress$%$
    \index{\STRIP@*#1 #2!#3}%
  \endgroup
}
\catcode`\"=\DTK@cat
\let\strip@grp={
\let\strip@end=$%$
\def\@strip{\def\STRIP@{}\strip@I}
\def\strip@I{\let\strip@next=\strip@I
  \futurelet\strip@CHAR\strip@II}
\def\strip@II#1{%
  \ifx\strip@CHAR\strip@end
    \let\strip@next=\relax
  \else\ifx\strip@CHAR\strip@grp
    \strip@I #1$%$
    \let\strip@next=\strip@I
  \else\ifcat\strip@CHAR A
    \xdef\STRIP@{\STRIP@#1}%
  \else\ifcat\strip@CHAR.
    \xdef\STRIP@{\STRIP@#1}%
  \else\ifcat\strip@CHAR\space
    \xdef\STRIP@{\STRIP@ #1}%
  \fi\fi\fi\fi\fi
  \strip@next}
\def\detex@@a{ae}
\def\detex@@o{oe}
\def\detex@@u{ue}
\def\detex@@A{Ae}
\def\detex@@O{Oe}
\def\detex@@U{Ue}
\def\detex@@s{ss}
\ifDTK@Author@\else
\newenvironment{theaddresses}{%
  \chapter{\addressname}\Label{addresses}
  \begingroup
    \columnsep=10pt
    \addresssize
    \def\addressitem##1##2##3{%
      \par
      \parbox{\columnwidth}{
      \textbf{##1}\hfill[\ignorespaces ##3]%
      \\ ##2}}
    \begin{multicols}{2}%
      \raggedbottom
      \raggedright
}{%
    \end{multicols}%
  \endgroup
  }
\fi
\newcommand\addresssize{\footnotesize\parskip=6pt plus 2pt minus 3pt}
\ifDTK@Author@
  \newcommand\listofaddresses{%
    \typeout{*** listofaddresses not supported in articles.}}
\else
  \newcommand\listofaddresses{%
    \InputIfFileExists{\jobname.ind}{}{%
      \typeout{No file \jobname.ind.}%
      \typeout{Use the following command to create it:\space\space
        makeindex -s dtk.ist \jobname}%
      \typeout{\space}}%
  }
\fi
\ifDTK@Author@
  \renewcommand\tableofcontents{%
    \typeout{*** tabelofcontents not supported in articles.}}
\else
  \renewcommand\tableofcontents{%
    \clearpage
    \thispagestyle{empty}%
    \markboth{\contentsname}{\contentsname}%
    \ContentsArt
    \begingroup
      \parskip=\ContentsParSkip
      \let\\=\relax
      \TOC@configure
      \@starttoc{toc}
    \endgroup
  }
\fi
\let\TOC@configure\relax
\newcommand\ContentsArt{%
  \vspace*{-\headheight}\vspace*{-\headsep}\vspace*{-2pt}
  \begin{minipage}{\textwidth}
    \Huge \journalname\\[2pt]%
    \rule{\textwidth}{2pt}\\[2pt]%
    \null\hfill
    \CoverArt@small
    \cover@sub{\volume}{\DTKedition}{\DTKdate}
  \end{minipage}\vspace{16pt minus 8pt}\par
}
\DeclareFontShape{T1}{cmr}{bdx}{n}
     {<5><6><7><8><9><10><10.95><12>
      <14.4><17.28><20.74><24.88> ecrb10
      }{}
\DeclareFontShape{OT1}{cmr}{bdx}{n}
     {<5><6><7><8><9><10><10.95><12>
      <14.4><17.28><20.74><24.88> cmbdx10
      }{}
\setcounter{tocdepth}{0}
\renewcommand\l@part[2]{%
  \addpenalty{-\@highpenalty}%
  \addvspace{0.5em plus 0pt}% space above part line
  \@tempdima 1.5em
  \begingroup
    \bf
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\par
    \penalty\@highpenalty
  \endgroup
  \addvspace{0.2em}%
}
\renewcommand\l@chapter[2]{%
  \begingroup
     \vskip \z@ \@plus.2\p@
     \@afterindenttrue
     \interlinepenalty\@M
     \@tempdima 1.5em\relax % number width
     \@tempdimb 2.5em\relax % indent
     \advance\leftskip \@tempdimb
     \advance\rightskip \@tempdimb
     \noindent\hskip -\leftskip
     \hbox to\@tempdimb{#2\hss}%
     #1\par
  \endgroup}
\@ifundefined{DTK@layout}{}{\input dtk\DTK@layout.clo}
\endinput
%%
%% End of file `dtk.cls'.
