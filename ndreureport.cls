%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Notre Dame Physics REU Final Report
% LaTeX Template
% Version 1.0 (2021/07/21)
%
% Original authors:
% Patrick J. Fasano (pfasano@nd.edu) and Charlotte M. Wood (cwood12@nd.edu)
%
% License:
% LaTeX Project Public Licence 1.3c (https://www.latex-project.org/lppl.txt)
%
% SPDX-License-Identifier: LPPL-1.3c
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ndreureport}[2021/07/12 ND Physics REU Report class]

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,12pt]{article}

\newcommand*{\advisors}[1]{\gdef\@advisors{#1}%
}
\newcommand*{\@advisors}{}

%-------------------------------------------------------------------------------
%    TITLE PAGE
%-------------------------------------------------------------------------------

\renewcommand{\maketitle}{%
\begin{titlepage}
    \begin{singlespace}

    \centering
    \vspace*{\fill}

    \parbox[b]{0.8\textwidth}{ %
        % Paragraph box for holding the title page text, adjust the width to
        % move the title page left or right on the page
        \centering

        % Title
        {\Huge\bfseries\@title}\\[2\baselineskip] %
        % Author name, lower case for consistent small caps
        {\Large\textsc{\@author}} %

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
