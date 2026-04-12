# 1. Use pdflatex as requested
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# 2. Use Biber for bibliography (BibLaTeX)
$bibtex = 'biber %O %B';

# 3. Generate the PDF
$pdf_mode = 1;

# 4. Handle Nomenclature (.nlo -> .nls)
# This tells latexmk to run makeindex whenever the .nlo file changes
add_cus_dep('nlo', 'nls', 0, 'makenlo2nls');
sub makenlo2nls {
    system("makeindex \"$_[0].nlo\" -s nomencl.ist -o \"$_[0].nls\"");
}

# 5. Cleanup: include nomenclature and biblatex files in the clean process
push @generated_exts, 'nlo', 'nls', 'nlg', 'run.xml', 'bcf';

# 6. Set the previewer to none (useful for command line builds)
$preview_continuous_mode = 0;
