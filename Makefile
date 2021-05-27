.PHONY: install
install:
	npm install

.PHONY: deploy
deploy:
	npm run build:prod
	git checkout gh-page
	mv ./dist ./docs
	git add docs
	git commit -m 'deploy to gh-page'
	git push origin gh-page