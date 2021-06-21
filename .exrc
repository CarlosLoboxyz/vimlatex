" Autocompile latex documents.
autocmd BufWritePost *.tex !pdflatex
    \ -jobname=$VIM_LATEX_DOC
    \ -output-directory=$VIM_LATEX_OUTPUT "%"
