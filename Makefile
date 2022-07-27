PM = yarn

all: start

node_modules:
	$(PM) install

clean:
	rm -rf node_modules

start: node_modules
	$(PM) dev


.PHONY: all clean start
