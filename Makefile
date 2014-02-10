all: compile deploy

compile:
	harp compile

deploy:
	rsync -r -a -v -e "ssh" --delete www/ sputnik:~/www/stanfordlacrosse.org/
