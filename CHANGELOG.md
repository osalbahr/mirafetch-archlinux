# Changelog

## [0.1.0-1] - 2024-01-15

### Added
- Initial AUR package for mirafetch
- PKGBUILD supporting multiple architectures (x86_64, i686, aarch64, armv7h)
- Proper Rust/Cargo build configuration
- Custom license handling from upstream LICENSE.md
- .SRCINFO file for AUR submission
- Comprehensive README with installation instructions

### Package Details
- Source: GitHub commit a03be8e4340fbf93a29c9904393ff3721c060667
- SHA256: ea9c5d27f88d5fa777dd5a5c2e2b3137916e4557bb936d8cc5fd6b5ac726c9a1
- Build dependencies: rust, cargo
- Runtime dependencies: none (static binary)

### Notes
- Package follows AUR guidelines for Rust applications
- Ready for submission to AUR
- Binary installed to /usr/bin/mirafetch
- License file installed to /usr/share/licenses/mirafetch/LICENSE