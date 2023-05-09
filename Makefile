UGLIFYJS := node_modules/.bin/uglifyjs
OUTPUTJS := dist/mus.min.js
INSTALLDIR := ../adaptivelearnr/inst/rmarkdown/templates/tutorial/resources/

mini:
	$(UGLIFYJS) mus.js -cm -o $(OUTPUTJS)

install: $(OUTPUTJS)
	cp $(OUTPUTJS) $(INSTALLDIR)

