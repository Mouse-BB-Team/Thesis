%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%          
% Author:  Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          Paweł Kłeczek      (p.l.kleczek@gmail.com)
%          AGH University of Science and Technology, Kraków, POLAND
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{*** [classes/aghdpl.cls] ---  (MSz, GJN, PK)  v3.1.0 <16.02.2016>  ***}       

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e} % 
\ProvidesClass{aghdpl} 
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\LoadClass[a4paper,twoside,openright]{report} 

\RequirePackage{times}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}

\RequirePackage[font=small, labelfont=bf, labelsep=period]{caption}
\RequirePackage{subcaption}
\RequirePackage{siunitx}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage[all,defaultlines=2]{nowidow} % Kontrola sierot i wdów - działa lepiej niż \widowpenalty i \clubpenalty

\geometry{lmargin=30mm, rmargin=20mm, tmargin=30mm, bmargin=30mm, foot=10mm, head=10mm}
\definecolor{Green}{rgb}{0.1,0.5,0.1}

\def\shorttitlePL#1   {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1   {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1    {\gdef\@shortauthor{#1}}
\def\titlePL#1        {\gdef\@titlePL{#1}}
\def\titleEN#1        {\gdef\@titleEN{#1}}
\def\faculty#1      {\gdef\@faculty{#1}}
\def\thesistype#1   {\gdef\@thesistype{#1}}
\def\supervisor#1   {\gdef\@supervisor{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\department#1   {\gdef\@department{#1}}
\def\degreeprogramme#1 {\gdef\@degreeprogramme{#1}}


\linespread{1.3}
\renewcommand{\labelitemi}{--}

%------------------------------------------------------------------------------


\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitlePL}}
}

\def\thesistable{
\begin{tabular}{p{45mm}l}
Autor: & {\itshape \@author}\\[-1mm]
Kierunek studi\'{o}w: & {\itshape \@degreeprogramme}\\[-1mm]
Opiekun pracy: & {\itshape \@supervisor}\\
\end{tabular}
}

\DeclareOption{en}{
\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
}

\def\thesistable{
\begin{tabular}{p{45mm}l}
Authors: & {\itshape \@author}\\[-1mm]
Degree programme: & {\itshape \@degreeprogramme}\\[-1mm]
Study programme type: & Full-time\\[-1mm]
Supervisor: & {\itshape \@supervisor}\\
\end{tabular}
}
}

\ProcessOptions

\newcommand{\titlepages}{%

\newpage \titlepage 

\begin{center} \fontfamily{lmss}
\vspace*{1.5cm}

\includegraphics[scale=0.6]{resources/agh}

\vspace*{2mm}

{{\large{\bfseries{\scshape AGH University of Science and Technology}}}

\vspace*{1mm}

{\small\bfseries \MakeUppercase{\@faculty}}}
\vspace*{3mm}

{\small{\MakeUppercase{\@department}}}
\vspace*{12mm}

{\sffamily\Large \@thesistype}
\vspace*{16mm}

{\sffamily\Large\itshape \@titleEN}
\vspace*{7mm}

{\sffamily\large\itshape \@titlePL}
\vspace{\fill}
\end{center}

\noindent
{\sffamily
\thesistable
}

\vspace*{17mm}

\centerline{\small\sffamily Krak\'{o}w, \@date}

\clearpage 
\thispagestyle{empty} 

{~~}\vspace{20mm}

%{\large\itshape
%Uprzedzony o odpowiedzialności karnej na podstawie art. 115 ust. 1 i 2 ustawy z dnia 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (tj. Dz.U. z 2018 r. poz. 1191 z późn. zm.): „Kto przywłaszcza sobie autorstwo albo wprowadza w błąd co do autorstwa całości lub części cudzego utworu albo artystycznego wykonania, podlega grzywnie, karze ograniczenia wolności albo pozbawienia wolności do lat 3. Tej samej karze podlega, kto rozpowszechnia bez podania nazwiska lub pseudonimu twórcy cudzy utwór w wersji oryginalnej albo w postaci opracowania, artystyczne wykonanie albo publicznie zniekształca taki utwór, artystyczne wykonanie, fonogram, wideogram lub nadanie.”, a także uprzedzony o odpowiedzialności dyscyplinarnej na podstawie art. 307 ust. 1 ustawy z dnia 20 lipca 2018 r. Prawo o szkolnictwie wyższym (tj. Dz.U. z 2018 r. poz. 1668, z późn. zm.) „Student podlega odpowiedzialności dyscyplinarnej za naruszenie przepisów obowiązujących w uczelni oraz za czyn uchybiający godności studenta.”, oświadczam, że niniejszą pracę dyplomową wykonałem(-am) osobiście, samodzielnie i że nie korzystałem(-am) ze źródeł innych niż wymienione w pracy.
%\newline
%\newline
%\par
%Jednocześnie Uczelnia informuje, że zgodnie z art. 15a ww. ustawy o prawie autorskim i prawach pokrewnych Uczelni przysługuje pierwszeństwo w opublikowaniu pracy dyplomowej studenta. Jeżeli Uczelnia nie opublikowała pracy dyplomowej w terminie 6 miesięcy od dnia jej obrony, autor może ją opublikować, chyba że praca jest częścią utworu zbiorowego. Ponadto Uczelnia jako podmiot, o którym mowa w art. 7 ust. 1 pkt 1 ustawy z dnia 20 lipca 2018 r. – Prawo o szkolnictwie wyższym i nauce (Dz.U. z 2018 r. poz. 1668 z późn. zm.), może korzystać bez wynagrodzenia i bez konieczności uzyskania zgody autora z utworu stworzonego przez studenta w wyniku wykonywania obowiązków związanych z odbywaniem studiów, udostępniać utwór ministrowi właściwemu do spraw szkolnictwa wyższego i nauki oraz korzystać z utworów znajdujących się w prowadzonych przez niego bazach danych, w celu sprawdzania z wykorzystaniem systemu antyplagiatowego. Minister właściwy do spraw szkolnictwa wyższego i nauki może korzystać z prac dyplomowych znajdujących się w prowadzonych przez niego bazach danych w zakresie niezbędnym do zapewnienia prawidłowego utrzymania i rozwoju tych baz oraz współpracujących z nimi systemów informatycznych.
%}


\clearpage \titlepage

\vspace*{15cm} \vfill
\begin{flushright} 
\begin{minipage}[!h]{10cm}
{\Large\itshape \@acknowledgements}
\end{minipage}
\end{flushright}

\clearpage
\thispagestyle{empty}
\vspace*{15cm} \vfill
\clearpage

\setcounter{page}{5}

}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhf{}
\fancyhead{}
%\fancyhead[L]{\slshape{\small \rightmark}}
\fancyhead[RE,LO]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}
\fancyhead[RO,LE]{\bfseries \thepage}

\thesisheaders

\frenchspacing
\sloppy 
\flushbottom


%---------------------------------------------------------------------------
% Ustawienia parametrów tytułów rozdziałów, podrozdziałów, itd.
%---------------------------------------------------------------------------

\titleformat{\chapter}[block]
{\bfseries\LARGE}{\filright \LARGE\thechapter. }{0ex}{}
%odstępy: lewy, góra, dół
\titlespacing{\chapter}{0pt}{17mm}{19mm}
\titleformat{\section}[block]
{\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{7mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}
\titleformat{\subsection}[block]
{\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{7mm}{6mm}{2.5mm}
\titleformat{\subsubsection}[block]
{\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{7mm}{3mm}{1.5mm}


%---------------------------------------------------------------------------
% Ustawienia parametrów generowania spisu treści i spisu rysunków
%---------------------------------------------------------------------------

\renewcommand{\cfttoctitlefont}{\bfseries\Large}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}


%---------------------------------------------------------------------------
% Ustawienia wyświetlania liczb (zgodne z polskimi zwyczajami typograficznymi)
%---------------------------------------------------------------------------

\sisetup{
	output-decimal-marker = {,},
	%	round-mode=places,
	%	round-precision=4,
	group-separator={~},
}

%---------------------------------------------------------------------------
% Ustawienia wyświetlania URL-i
%---------------------------------------------------------------------------

% Zmiana kroju czcionki URL-i z czcionki o stałej szerokości na szeryfową z kursywą.
\renewcommand\UrlFont{\rmfamily\itshape}


%---------------------------------------------------------------------------
% Ustawienia podpisów pod ilustracjami
%---------------------------------------------------------------------------

\captionsetup[subfigure]{labelfont=md}
\captionsetup{%
	% Użyj okrągłych nawiasów wokół odwołań do "podilustracji".
	subrefformat=parens,
	% Margines z obu stron podpisu.
	margin=2cm,
	% W przypadku podpisów mieszczących się w jednej linii nie stosuj justowania, tylko wyśrodkuj cały podpis.
	singlelinecheck=on,
}


%---------------------------------------------------------------------------
% Środowisko do tworzenia opisów symboli użytych w równaniu.
%---------------------------------------------------------------------------

\SetLabelAlign{parright}{\parbox[t]{\labelwidth}{\raggedleft#1}}
\setlist[description]{style=multiline, topsep=10pt, align=parright}

% Odstęp po obu stronach półpauzy.
\newlength{\descriptiondashgap}
\setlength{\descriptiondashgap}{0.5em}

% Element na liście symboli matematycznych użytych w równaniu (symbol wyrównany do prawej, oddzielony półpauzą od definicji)
\renewcommand*\descriptionlabel[1]{\hspace \labelsep \normalfont \bfseries #1 \mdseries\hspace{\descriptiondashgap}--\hspace{\descriptiondashgap}}

% Odległość półpauzy od lewego marginesu.
\newlength{\eqwheremargin}
\setlength{\eqwheremargin}{2cm}

\newenvironment{eqwhere}[1][]
{%
\setlength{\eqwheremargin}{#1}%
\begin{description}[leftmargin=\eqwheremargin, itemsep=0cm, labelsep=0cm]
}
{\end{description}}
