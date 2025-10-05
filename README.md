# {{project-name}}

[![Build Status](https://github.com/{{gh-username}}/{{project-name}}/workflows/build/badge.svg)](https://github.com/{{gh-username}}/{{project-name}}/actions)
[![codecov](https://codecov.io/gh/{{gh-username}}/{{project-name}}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{gh-username}}/{{project-name}})
[![License](https://img.shields.io/badge/license-MIT%20OR%20Apache--2.0-blue.svg)](LICENSE-MIT)
[![Crates.io](https://img.shields.io/crates/v/{{project-name}}.svg)](https://crates.io/crates/{{project-name}})

{{project-description}}


## Features

- 🚀 Fast and efficient
- 🔒 Type-safe
- 📦 Easy to use
- 🛠️ Well-tested

## Quick Start

### Installation

#### Using this template

Generate a new project from this template:

```bash
cargo generate {{gh-username}}/{{project-name}}
```

#### From crates.io

```bash
cargo install {{project-name}}
```

#### From source

```bash
git clone https://github.com/{{gh-username}}/{{project-name}}.git
cd {{project-name}}
cargo build --release
```

### Usage

```rust
// Add usage examples here
```

## Development

### Prerequisites

- Rust (latest stable version)
- cargo-nextest
- typos-cli
- git-cliff
- cargo-llvm-cov
- pre-commit

### Quick Setup

Install all development tools:

```bash
make install-tools
```

Setup pre-commit hooks:

```bash
pre-commit install
```

### Common Commands

The project includes a Makefile for common tasks:

```bash
# Build the project
make build

# Run the project
make run

# Run tests
make test

# Format code
make fmt

# Run lints
make clippy

# Run all checks (fmt, typos, check, clippy, test)
make pre-commit

# Generate documentation
make doc

# Generate code coverage
make coverage
```

### Running Tests

```bash
# Using nextest (recommended)
cargo nextest run

# Using Make
make test
```

### Code Coverage

Generate a code coverage report:

```bash
make coverage
```

The report will be available at `target/llvm-cov/html/index.html`.

## Project Structure

```
.
├── .github/
│   ├── workflows/      # GitHub Actions CI/CD
│   └── dependabot.yml  # Dependency updates
├── .config/
│   └── nextest.toml    # Nextest configuration
├── src/                # Source code
├── tests/              # Integration tests
├── examples/           # Example code
├── benches/            # Benchmarks
├── Cargo.toml          # Project manifest
├── rustfmt.toml        # Rustfmt configuration
├── clippy.toml         # Clippy configuration
├── cliff.toml          # Changelog configuration
├── .pre-commit-config.yaml  # Pre-commit hooks
└── Makefile            # Common commands
```

## CI/CD

This project uses GitHub Actions for continuous integration and deployment:

- **Multi-platform testing**: Linux, macOS, and Windows
- **Code coverage**: Automated coverage reporting with codecov
- **Automated releases**: Changelog generation and GitHub releases
- **Dependency updates**: Automated via Dependabot

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details.

### Development Workflow

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run `make pre-commit` to ensure all checks pass
5. Submit a pull request

## Environment Setup

### Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Install cargo-generate

cargo-generate is used to create new projects from templates:

```bash
cargo install cargo-generate
```

### Install pre-commit

pre-commit runs code checks before each commit:

```bash
pipx install pre-commit
```

After installation, run:

```bash
pre-commit install
```

### Install Development Tools

```bash
# Testing
cargo install cargo-nextest --locked

# Code quality
cargo install typos-cli

# Changelog generation
cargo install git-cliff

# Code coverage
cargo install cargo-llvm-cov
```

Or simply run:

```bash
make install-tools
```

## License

This project is licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Acknowledgments

This template was created for the Geektime Rust Training Camp.

## Links

- [Documentation](https://docs.rs/{{project-name}})
- [Crates.io](https://crates.io/crates/{{project-name}})
- [Repository](https://github.com/{{gh-username}}/{{project-name}})
- [Issue Tracker](https://github.com/{{gh-username}}/{{project-name}}/issues)