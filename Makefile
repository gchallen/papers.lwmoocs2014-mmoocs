START = noxxxnote blue
END = missing
PYTEX = $(shell pwd)/pytex/
CLASS = $(PYTEX)/cls/whitepaper.cls

all: whitepaper ABSTRACT

ABSTRACT: $(PYTEX)/bin/clean $(PYTEX)/bin/lib.py abstract.tex
	@$(PYTEX)/bin/clean abstract.tex ABSTRACT

# 16 Nov 2010 : GWA : Add other cleaning rules here.

clean: rulesclean

include $(PYTEX)/make/Makerules
