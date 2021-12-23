" Autocompile latex documents.
autocmd BufWritePost *.tex !pdflatex
	\ -jobname='%:r'
	\ -output-directory=$VIM_LATEX_OUTPUT
	\ "%"
