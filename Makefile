
docs_path:=./doc



.PHONY: usage

usage:
	echo "make docs		to create documentation"
	echo "make nuke		to rebuild the single header nuklear.h from source"
	echo "make all 		to re-pack the header and create documentation"
	echo "make install 	to "install" man files"


docs: $(docs_path)/Doxyfile  $(docs_path)/html/index.html $(docs_path)/doxygen-awesome-css/doxygen-awesome.css

$(docs_path)/html/index.html: $(docs_path)/Doxyfile
	doxygen $<

$(docs_path)/Doxyfile:
	doxygen -g $@


$(docs_path)/doxygen-awesome-css/doxygen-awesome.css:
	git clone https://github.com/jothepro/doxygen-awesome-css.git $(docs_path)/doxygen-awesome-css --branch v2.3.4

nuke:


all: docs nuke

install:

clean:
