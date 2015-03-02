
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

\input{adsyTemplate}
