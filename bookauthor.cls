\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bookauthor}
\LoadClass[a4paper]{book}
% Margins
\RequirePackage[top=35mm,bottom=35mm,left=25mm,right=25mm]{geometry}
% Some work
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\let\@@title\@empty
\let\@@author\@empty
% Headers and footers
\renewcommand\rightmark{\MakeUppercase{\ifx\@@title\@empty\else\@@title\fi}}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RE]{\rightmark}
\fancyhead[LO]{\textit{\leftmark}}
\fancyhead[LE, RO]{\thepage}
\fancyfoot[LE, RO]{\ifx\@@author\@empty\else\@@author\fi}
