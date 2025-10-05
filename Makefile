.PHONY: help build run test clean fmt clippy check pre-commit install-tools doc bench coverage

# Default target
help:
	@echo "Available targets:"
	@echo "  make build        - Build the project"
	@echo "  make run          - Run the project"
	@echo "  make test         - Run tests with nextest"
	@echo "  make clean        - Clean build artifacts"
	@echo "  make fmt          - Format code with rustfmt"
	@echo "  make clippy       - Run clippy lints"
	@echo "  make check        - Run cargo check"
	@echo "  make pre-commit   - Run all pre-commit checks"
	@echo "  make install-tools- Install development tools"
	@echo "  make doc          - Generate and open documentation"
	@echo "  make bench        - Run benchmarks"
	@echo "  make coverage     - Generate code coverage report"

# Build the project
build:
	cargo build

# Build release version
release:
	cargo build --release

# Run the project
run:
	cargo run

# Run tests
test:
	cargo nextest run --all-features

# Run tests with cargo test (fallback)
test-cargo:
	cargo test --all-features

# Clean build artifacts
clean:
	cargo clean

# Format code
fmt:
	cargo fmt --all

# Check formatting
fmt-check:
	cargo fmt --all -- --check

# Run clippy
clippy:
	cargo clippy --all-targets --all-features --tests --benches -- -D warnings

# Run cargo check
check:
	cargo check --all

# Run typos check
typos:
	typos

# Run all pre-commit checks
pre-commit: fmt-check typos check clippy test

# Install development tools
install-tools:
	@echo "Installing development tools..."
	cargo install cargo-nextest --locked
	cargo install typos-cli
	cargo install git-cliff
	cargo install cargo-llvm-cov
	pipx install pre-commit
	@echo "Done! Run 'pre-commit install' to set up git hooks."

# Generate and open documentation
doc:
	cargo doc --open --no-deps

# Run benchmarks
bench:
	cargo bench

# Generate code coverage
coverage:
	cargo llvm-cov --all-features --workspace --html
	@echo "Coverage report generated in target/llvm-cov/html/index.html"

# Watch for changes and run tests
watch:
	cargo watch -x check -x test

# Update dependencies
update:
	cargo update
