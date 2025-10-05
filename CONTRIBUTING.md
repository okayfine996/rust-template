# Contributing to {{project-name}}

Thank you for your interest in contributing to {{project-name}}! We welcome contributions from everyone.

## Getting Started

1. **Fork the repository** and clone it locally
2. **Install dependencies** following the instructions in the [README](README.md)
3. **Create a new branch** for your feature or bugfix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Setup

### Prerequisites

Make sure you have the following tools installed:

- Rust (latest stable version)
- cargo-nextest
- typos-cli
- git-cliff
- pre-commit

You can install all development tools by running:

```bash
make install-tools
```

### Setting up pre-commit hooks

We use pre-commit hooks to ensure code quality:

```bash
pre-commit install
```

## Development Workflow

### Running Tests

```bash
# Run all tests
make test

# Or using cargo directly
cargo nextest run
```

### Code Formatting

```bash
# Format code
make fmt

# Check formatting
make fmt-check
```

### Linting

```bash
# Run clippy
make clippy
```

### Running All Checks

Before committing, run all checks:

```bash
make pre-commit
```

This will run:
- Code formatting check
- Typo check
- Cargo check
- Clippy lints
- All tests

## Commit Guidelines

We follow [Conventional Commits](https://www.conventionalcommits.org/) for our commit messages:

- `feat: add new feature`
- `fix: fix a bug`
- `docs: update documentation`
- `test: add or update tests`
- `refactor: refactor code`
- `perf: improve performance`
- `chore: maintenance tasks`

### Example

```bash
git commit -m "feat: add user authentication"
git commit -m "fix: resolve memory leak in parser"
git commit -m "docs: update API documentation"
```

## Pull Request Process

1. **Update tests**: Add or update tests for your changes
2. **Update documentation**: Update README and code comments as needed
3. **Run pre-commit checks**: Ensure all checks pass
4. **Create a pull request**: Provide a clear description of your changes
5. **Address review comments**: Work with maintainers to refine your PR

### Pull Request Checklist

- [ ] Tests pass locally
- [ ] Code is formatted with `cargo fmt`
- [ ] No clippy warnings
- [ ] Documentation is updated
- [ ] Commit messages follow conventional commits
- [ ] PR description clearly explains the changes

## Code Style

- Follow Rust standard naming conventions
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Write comprehensive tests

## Testing

- Write unit tests for new functionality
- Add integration tests for complex features
- Ensure edge cases are covered
- Use descriptive test names

## Documentation

- Document public APIs with doc comments
- Update README for user-facing changes
- Add examples for complex features
- Keep CHANGELOG up to date (automated via git-cliff)

## Getting Help

- Open an issue for bugs or feature requests
- Ask questions in discussions
- Review existing issues and PRs

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help others learn and grow
- Follow the project's guidelines

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (MIT OR Apache-2.0).
