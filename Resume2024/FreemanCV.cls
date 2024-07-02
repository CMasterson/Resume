%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Freeman Curriculum Vitae
% Class File
% Version 3.0 (September 3, 2021)
%
% This class originates from:
% https://www.LaTeXTemplates.com
%
% Authors:
% Vel (vel@LaTeXTemplates.com)
% Alessandro Plasmati
%
% License:
% CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FreemanCV}[2021/09/03 Freeman CV Class v3.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any extra options specified to the base class
\ProcessOptions\relax % Process class options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

\usepackage{etoolbox} % Required for conditional logic and changing commands

\setlength{\parindent}{0pt} % Paragraph indentation

\usepackage{supertabular} % Required for the supertabular environment which allows tables to span multiple pages so sections with tables correctly wrap across pages

\usepackage{extsizes} % Allows using more default font sizes as a class option

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\usepackage[
	legalpaper, % Paper size
	top=1.75cm, % Top margin
	bottom=1.75cm, % Bottom margin
	left=1.25cm, % Left margin
	right=1.25cm, % Right margin
	footskip=1cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.5cm, % Space from the top margin to the baseline of the header
	headheight=1cm, % Height of the header
	%showframe % Uncomment to show frames around the margins for debugging purposes
]{geometry}

%----------------------------------------------------------------------------------------
%	COLUMN LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{paracol} % Required for creating multi-column layouts that can span pages automatically

\AtBeginEnvironment{paracol}{\setlength{\parindent}{0pt}} % Paracols have default paragraph indentation and this overrides it to the template default of no indentation

\setlength\columnsep{0.05\textwidth} % Amount of horizontal space between the columns

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{roboto-serif}  %% Option 'sfdefault' only if the base font of the document is to be sans serif

\newfontfamily{\FA}{FontAwesome} % Create a new font family for FontAwesome icons
\input{Fonts/fontawesomesymbols-xeluatex.tex} % Load a file to create shortcuts to the icons, see icon examples and their shortcuts in fontawesome.pdf in the Fonts folder

%----------------------------------------------------------------------------------------
%	HEADERS & FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Required for customizing headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Remove the default rule under the header

\fancyhf{} % Clear default headers/footers by default, add headers and footers in the template file as per the example

%----------------------------------------------------------------------------------------
%	SECTIONS
%----------------------------------------------------------------------------------------

\usepackage[nobottomtitles*]{titlesec} % Required for modifying sections, the nobottomtitles* pushes section titles to the next page when they are close to the bottom of the page

\renewcommand{\bottomtitlespace}{0.05\textheight} % The minimal space required from the bottom margin so a section title isn't moved to the next page

\titleformat
	{\section} % Section type being modified
	[block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
	{\sffamily\large\bfseries} % Text formatting of the whole section, i.e. label and title
	{} % Section label (e.g. number) and its formatting
	{0pt} % Horizontal space between the section label and title
	{} % Code before the section title
	%[\color{black}\titlerule] % Code after the section title

\titlespacing*{\section}{0pt}{0pt}{3pt} % Spacing around section titles, the order is: left, before and after

%------------------------------------------------

\titleformat
	{\subsection} % Section type being modified
	[block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
	{\sffamily\bfseries} % Text formatting of the whole section, i.e. label and title
	{} % Section label (e.g. number) and its formatting
	{0pt} % Horizontal space between the section label and title
	{} % Code before the section title
	[] % Code after the section title

\titlespacing*{\subsection}{0pt}{8pt}{3pt} % Spacing around section titles, the order is: left, before and after

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames, svgnames]{xcolor} % Required for defining and using custom colors

\definecolor{text}{HTML}{2b2b2b} % Main document text color, off-black
\definecolor{headings}{HTML}{2b2b2b} % Headings, off-black
\definecolor{linkcolor}{HTML}{0000DD} % Classic blue color for links

\color{text} % Set the default text color

%----------------------------------------------------------------------------------------
%	LINKS
%----------------------------------------------------------------------------------------

\usepackage{hyperref} % Required for links

\hypersetup{
	colorlinks=true, % Whether to color the text of links
	urlcolor=linkcolor, % Color for \url and \href links
	linkcolor=linkcolor, % Color for \nameref links
}

%----------------------------------------------------------------------------------------
%	CUSTOM COMMANDS
%----------------------------------------------------------------------------------------

% Command for adding a new job entry (work experience)
\newcommand{\jobentry}[3]{
	{\sffamily\raggedright\large\textbf{#1} \\ % Employer
    \normalfont\raggedright\small{#2}}\medskip \\ % Duration
	#3 % Description
	\medskip % Vertical whitespace
}
