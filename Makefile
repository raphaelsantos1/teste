.PHONY: lint

lint_args := $(filter-out $@,$(MAKECMDGOALS))

lint:
	@./lint.sh $(lint_args)