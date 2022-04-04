all:
	npm run dev

git:
	@git pull
	git diff
	@-git add .
	@git commit -am "Makefile push `date +'%Y-%m-%d %H:%M:%S'`"
	@-git push
