# Install dependencies
deps:
	rustup component add clippy
	rustup component add rustfmt
	rustup component add rls rust-analysis rust-src
	type cargo-readme >/dev/null || cargo +stable install cargo-readme

# Reformat the source code
fmt:
	cargo fmt

# Check for mistakes
lint:
	cargo clippy

# Generate the docs
doc:
	cargo doc

# Open the docs in a browser
doc-open: doc
	cargo doc --open

# Run the tests
test:
	cargo test

# Update README.md
readme:
	cargo readme -o README.md

# Install the binaries
install:
	cargo install --path . --debug --force

# Publish to crates.io
publish:
	cd config && cargo publish
	cargo publish
