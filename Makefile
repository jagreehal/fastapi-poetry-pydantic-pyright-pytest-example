# Install dependencies
install:
	poetry install

# Run the application
run:
	poetry run uvicorn app.main:app --reload --port $${PORT:-5000}

# Run tests with pytest
test:
	poetry run pytest

# Run tests with coverage
test-coverage:
	poetry run pytest --cov=app --cov-report=term-missing

# Check the project for security vulnerabilities and PEP 508 requirements
check:
	poetry check

# Start a poetry shell
shell:
	poetry shell

# Run linting with ruff
lint:
	poetry run ruff check app/

# Type checking with pyright
type-check:
	poetry run pyright app/

# Remove the Poetry environment
clean-env:
	poetry env remove $(shell poetry env info -p)

# Remove the build artifacts
clean-build:
	rm -rf build/ dist/ *.egg-info/

# Remove the cache files
clean-cache:
	rm -rf .cache/

# Remove the coverage reports
clean-coverage:
	rm -rf .coverage .coverage.*

# Remove the Python bytecode files
clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -rf {} +

# Remove all the above
clean: clean-env clean-build clean-cache clean-coverage clean-pyc

# Format code with black
format:
	poetry run black app/

# Check code format with black without making changes
check-format:
	poetry run black --check app/

# Sort import statements with isort
sort-imports:
	poetry run isort app/

# Watch tests
test-watch:
	poetry run ptw

# Run all code quality checks
quality: lint check check-format type-check

.PHONY: install install-dev run test test-coverage check shell lint clean format check-format sort-imports watch-tests quality type-check
