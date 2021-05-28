.PHONY: install
install:
	npm install

.PHONY: deploy
deploy:
	npm run build:prod
	mv ./dist ./docs
	cp -rf ./docs/* ./
	git config --global user.email "bzhaojyathousandy@gmail.com"
	git config --global user.name "Your Name"
	git commit -m 'deploy to gh-page'
	git push origin gh-page
