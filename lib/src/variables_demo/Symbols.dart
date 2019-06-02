// A Symbol object represents an operator or identifier declared in a Dart program.
// You might never need to use symbols, but they’re invaluable for APIs that refer to identifiers by name,
// because minification changes identifier names but not identifier symbols.
void main() {
  // 我完全理解不了Symbol的意义何在。咱也不知道，咱也不敢问。
  Symbol s = #radix;
}
