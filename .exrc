" Autocompile latex documents.
autocmd BufWritePost *.tex !pdflatex
	\ -jobname='%:r'
	\ -output-directory="/tmp"
	\ "%"
