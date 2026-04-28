# latexmkrc configuration for Vafle font support
# Add the xlatex/font directory to the font search path

# Ensure LaTeX can find the font files
ensure_path('TEXINPUTS', './xlatex/font//');
ensure_path('TFMFONTS', './xlatex/font//');
ensure_path('T1FONTS', './xlatex/font//');

# For pdflatex
$ENV{'TEXFONTS'} = './xlatex/font//:' . ($ENV{'TEXFONTS'} || '');
$ENV{'TFMFONTS'} = './xlatex/font//:' . ($ENV{'TFMFONTS'} || '');
$ENV{'T1FONTS'} = './xlatex/font//:' . ($ENV{'T1FONTS'} || '');

# PDF generation settings
$pdf_mode = 1;  # Use pdflatex
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Biber for bibliography
$biber = 'biber %O %S';
