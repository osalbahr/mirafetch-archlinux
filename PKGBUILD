# Maintainer: Osama Albahrani <osama@albahrani.com>

pkgname=mirafetch
pkgver=0.1.0
pkgrel=1
pkgdesc="A Rust reimplementation of Hyfetch with a focus on speed"
arch=('x86_64' 'i686' 'aarch64' 'armv7h')
url="https://github.com/ArgentumCation/mirafetch"
license=('EUPL-1.2')
depends=()
makedepends=('rust' 'cargo')
source=("$pkgname-$pkgver.tar.gz::https://github.com/ArgentumCation/mirafetch/archive/a03be8e4340fbf93a29c9904393ff3721c060667.tar.gz")
sha256sums=('ea9c5d27f88d5fa777dd5a5c2e2b3137916e4557bb936d8cc5fd6b5ac726c9a1')

build() {
    cd "$srcdir/mirafetch-a03be8e4340fbf93a29c9904393ff3721c060667"
    export RUSTUP_TOOLCHAIN=stable
    export CARGO_TARGET_DIR=target
    cargo build --frozen --release --all-features
}

check() {
    cd "$srcdir/mirafetch-a03be8e4340fbf93a29c9904393ff3721c060667"
    export RUSTUP_TOOLCHAIN=stable
    cargo test --frozen --all-features
}

package() {
    cd "$srcdir/mirafetch-a03be8e4340fbf93a29c9904393ff3721c060667"
    install -Dm0755 -t "$pkgdir/usr/bin/" "target/release/$pkgname"
    install -Dm0644 LICENSE.md "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
