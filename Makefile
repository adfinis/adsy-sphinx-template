
FILENAME := example
REDIRECT := 1>  /dev/null
JOB      := example
COMPILER := xelatex



doc:
	$(COMPILER) -jobname $(JOB) -shell-escape -interaction=nonstopmode $(FILENAME)

doc-silent:
	$(COMPILER) -jobname $(JOB) -shell-escape -interaction=nonstopmode $(FILENAME) $(REDIRECT)

