.PHONY: initialize-development

# Initialize the project development environment.
initialize-development:
	@pip install --upgrade pylint future pre-commit
	@pre-commit install

# Run pre-commit for all
pre-commit:
	@pre-commit run --all-files

start:
	docker compose up -d

stop:
	docker compose down

restart:
	docker compose down && docker compose up -d
