TS_FILES := $(shell find . -name "*.ts" -not -path "./node_modules/*")
TSX_FILES := $(shell find . -name "*.tsx" -not -path "./node_modules/*")

format:
	@./node_modules/.bin/prettier --write $(TSX_FILES)

run:
	node ./server.js

build:
	webpack
