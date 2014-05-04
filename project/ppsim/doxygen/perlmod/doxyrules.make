DOXY_EXEC_PATH = /home/joobog/git/ppsim/project/ppsim/doxygen
DOXYFILE = /home/joobog/git/ppsim/project/ppsim/doxygen/doxyfile
DOXYDOCS_PM = /home/joobog/git/ppsim/project/ppsim/doxygen/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = /home/joobog/git/ppsim/project/ppsim/doxygen/perlmod/DoxyStructure.pm
DOXYRULES = /home/joobog/git/ppsim/project/ppsim/doxygen/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"
