.PHONY: main

main: executable install

install:
	./bin/installtemplate

uninstall:
	./bin/uninstalltemplate

executable:
	@echo "Set executable flag for bin directory!"
	@chmod +x ./bin/*
