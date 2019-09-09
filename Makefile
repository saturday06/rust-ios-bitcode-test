.PHONY: run clean

run: app
	file app

app: app.c Makefile target/aarch64-apple-ios/debug/libbitcoder.a
	xcrun --sdk iphoneos clang -arch arm64 -fembed-bitcode app.c target/aarch64-apple-ios/debug/libbitcoder.a -framework CoreFoundation -framework Security -o $@

target/aarch64-apple-ios/debug/libbitcoder.a: Cargo.toml src/lib.rs .cargo/config
	cargo build --target aarch64-apple-ios --verbose

clean:
	rm -fr target app
