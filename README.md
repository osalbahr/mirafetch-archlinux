# mirafetch-archlinux

AUR package for [mirafetch](https://github.com/ArgentumCation/mirafetch) - A Rust reimplementation of Hyfetch with a focus on speed.

## About mirafetch

mirafetch is a fast system information tool written in Rust that displays system information alongside colorful flag patterns, similar to Hyfetch but with better performance (~60ms runtime target).

## Installation

### From AUR (once submitted)

```bash
# Using yay
yay -S mirafetch

# Using paru  
paru -S mirafetch

# Manual installation
git clone https://aur.archlinux.org/mirafetch.git
cd mirafetch
makepkg -si
```

### Manual build from this repository

```bash
git clone https://github.com/osalbahr/mirafetch-archlinux.git
cd mirafetch-archlinux
makepkg -si
```

## Package Information

- **Version**: 0.1.0
- **Architecture**: x86_64, i686, aarch64, armv7h
- **License**: Custom (see LICENSE.md in upstream)
- **Dependencies**: None (statically linked Rust binary)
- **Build Dependencies**: rust, cargo

## Submitting to AUR

To submit this package to the AUR:

1. Create an AUR account at https://aur.archlinux.org/
2. Add your SSH public key to your AUR account
3. Clone the AUR repository:
   ```bash
   git clone ssh://aur@aur.archlinux.org/mirafetch.git
   ```
4. Copy the PKGBUILD and .SRCINFO files to the cloned repository
5. Commit and push:
   ```bash
   git add PKGBUILD .SRCINFO
   git commit -m "Initial package: mirafetch 0.1.0"
   git push
   ```
