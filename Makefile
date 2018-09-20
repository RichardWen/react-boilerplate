TSX_FILES := $(shell find . -name "*.tsx" -not -path "./node_modules/*")
JS_FILES := $(shell find . -name "*.js" -not -path "./node_modules/*")

format:
	@./node_modules/.bin/prettier --write $(TSX_FILES)
	@./node_modules/.bin/prettier --write $(JS_FILES)

run:
	node ./server.js

test:
	./node_modules/.bin/jest

setup:
	npm install

build:
	make format
	make test
	npm run-script build
