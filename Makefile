PACKAGENAME=content-defined-chunking
COLLECTS=content-defined-chunking

all: setup

clean:
	find . -name compiled -type d | xargs rm -rf

setup:
	raco setup $(COLLECTS)

link:
	raco pkg install --link -n $(PACKAGENAME) $$(pwd)

unlink:
	raco pkg remove $(PACKAGENAME)

test: setup
	raco test -p $(PACKAGENAME)
