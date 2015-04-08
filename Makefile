
<<<<<<< HEAD
6TO5 = ./node_modules/.bin/6to5
=======
BABEL = ./node_modules/.bin/babel
>>>>>>> 6d48a704982efbeb7456b03ffb0ecf990ca100a0

all: node

node: lib
	@mkdir -p node/assets/
	@rm -rf node/assets/*
	@cp -r lib/assets node/
	@for path in lib/*.js; do \
		file=`basename $$path`; \
		$(BABEL) "lib/$$file" > "node/$$file"; \
	done
