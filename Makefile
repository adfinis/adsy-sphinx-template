
FILENAME := example
REDIRECT := 1>  /dev/null
JOB      := example
COMPILER := xelatex
CLEAN_EXT := nls,ilg,aux,log,idx,out,glo,toc,lot,tex~,backup,bbl,blg,1,2,3,4,5,6,7,8,9,10,dvi,emp*mp,ooplss*mp,nlo,tdo,dvi,lof,lol



doc:
	$(COMPILER) -jobname $(JOB) -shell-escape -interaction=nonstopmode $(FILENAME)

doc-silent:
	$(COMPILER) -jobname $(JOB) -shell-escape -interaction=nonstopmode $(FILENAME) $(REDIRECT)


clean:
	rm -f *{$(CLEAN_EXT)}
	rm -r *.pdf
