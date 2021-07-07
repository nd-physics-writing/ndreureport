%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vertical Line Title Page
% LaTeX Template
% Version 2.0 (22/7/17)
%
% This template was downloaded from:
% http://www.LaTeXTemplates.com
%
% Original author:
% Peter Wilson (herries.press@earthlink.net) with modifications by:
% Vel (vel@latextemplates.com)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
% This template can be used in one of two ways:
%
% 1) Content can be added at the end of this file just before the \end{document}
% to use this title page as the starting point for your document.
%
% 2) Alternatively, if you already have a document which you wish to add this
% title page to, copy everything between the \begin{document} and
% \end{document} and paste it where you would like the title page in your
% document. You will then need to insert the packages and document
% configurations into your document carefully making sure you are not loading
% the same package twice and that there are no clashes.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ndreureport}[2021/07/06 ND Physics REU Report class]

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,12pt]{article}

\newcommand*{\advisors}[1]{\gdef\@advisors{#1}%
}
\newcommand*{\@advisors}{}

%----------------------------------------------------------------------------------------
%    TITLE PAGE
%----------------------------------------------------------------------------------------

\renewcommand{\maketitle}{%
\begin{titlepage} % Suppresses displaying the page number on the title page and the subsequent page counts as page 1
    \begin{singlespace}

%    \raggedleft % Right align the title page

    \centering
    \vspace*{\fill}


    %\rule{1pt}{\textheight} % Vertical line
    %\hspace{0.05\textwidth} % Whitespace between the vertical line and title page text
    \parbox[b]{0.8\textwidth}{ % Paragraph box for holding the title page text, adjust the width to move the title page left or right on the page
        \centering

        {\Huge\bfseries\@title}\\[2\baselineskip] % Title
        {\Large\textsc{\@author}} % Author name, lower case for consistent small caps

        \vspace{0.3\textheight} % Whitespace between the title block and the publisher

        {\the\year{} NSF/REU Program}\\
        {Department of Physics}\\
        {University of Notre Dame}

        \vspace{0.3\textheight}

        {{\large\textsc{advisor(s):}} \@advisors}
    }
    \vspace*{\fill}

    \end{singlespace}
\end{titlepage}
}


\renewenvironment{abstract}{%
    \begin{center}%
      {\Large\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
    \end{center}%
    \quotation
    \small
    \onehalfspacing
  }
  {\endquotation\doublespacing}

\renewcommand\section{\@startsection {section}{1}{\z@}%
  % {-3.5ex \@plus -1ex \@minus -.2ex}%
  % {2.3ex \@plus.2ex}%
  {-2.75ex \@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus.2ex}%
  {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
    {-2.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
    {-2.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont\normalsize\bfseries}}

%\renewcommand{\section}{%
%    \@startsection
%    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%    {1ex plus .2ex}{\large}%
%}

\setcounter{secnumdepth}{3}

%----------------------------------------------------------------------------------------
%    PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\RequirePackage[margin=1in]{geometry}
\RequirePackage{nopageno}

\RequirePackage[utf8]{inputenc} % Required for inputting international characters
\RequirePackage[T1]{fontenc} % Output font encoding for international characters
\RequirePackage{stix} % Use the STIX fonts

\RequirePackage{amsmath,amsthm}

\RequirePackage[sort&compress]{natbib}
\bibliographystyle{apsrev4-2}
\setcitestyle{numbers,square}


\RequirePackage{graphicx}

\RequirePackage{hyperref}

\RequirePackage{setspace}
\doublespacing

