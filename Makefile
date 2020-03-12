.PHONEY: test

test:
	@echo "Test..."

executable:
	@echo "Set executable flag for bin directory!"
	@chmod +x ./bin/*
