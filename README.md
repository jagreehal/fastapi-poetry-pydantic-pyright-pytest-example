# fastapi-poetry-pydantic-pyright-pytest-example

This is an example of API project using:

- **FastAPI**: Builds high-performance APIs; includes automatic, interactive documentation.
- **Pydantic**: Enforces data types and validation, simplifying data handling.
- **pytest**: Ensures code reliability through comprehensive testing.
- **Poetry**: Manages dependencies and packaging efficiently.
- **pyright**: Checks for type errors, improving code safety.
- **black**: Standardizes formatting, promoting code consistency.
- **isort**: Organizes imports, enhancing code readability and maintenance.

## Getting Started

Follow these steps to set up and run the project:

### Prerequisites

- Python 3.x
- Poetry

### Installation

To install project dependencies, use the following command:

```bash
make install
```

This command will set up the project's virtual environment and install all required dependencies specified in [pyproject.toml](./pyproject.toml).

## Running the Application

To run the application locally, use the following command:

```bash
make run
```

This will start the FastAPI server, allowing you to interact with the API.

## Running Tests

To run tests using pytest, execute the following command:

```bash
make test
```

This command will run all test cases defined in the project.

## Code Quality Checks

You can perform various code quality checks using the provided Makefile. Here are some useful commands:

### Linting with ruff

```bash
make lint
```

### Type checking with pyright

```bash
make type-check
```

### Checking for security vulnerabilities

```bash
make check
```

### Formatting code with black

```bash
make format
```

### Checking code format

```bash
make check-format
```

### Sorting import statements with isort

```bash
make sort-imports
```

### Running all code quality checks

```bash
make quality
```

### Starting a poetry shell

```bash
make shell
```

### Removing the poetry environment

```bash
make clean
```

### Watching tests for changes

```bash
make watch-tests
```
