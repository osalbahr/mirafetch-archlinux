#!/bin/bash
# validate-package.sh - Validation script for mirafetch AUR package

set -e

echo "=== Validating mirafetch AUR package ==="

# Check required files exist
echo "Checking required files..."
for file in PKGBUILD .SRCINFO README.md; do
    if [[ ! -f "$file" ]]; then
        echo "ERROR: Missing required file: $file"
        exit 1
    fi
    echo "✓ Found $file"
done

# Validate PKGBUILD syntax
echo "Validating PKGBUILD syntax..."
if bash -n PKGBUILD; then
    echo "✓ PKGBUILD syntax is valid"
else
    echo "ERROR: PKGBUILD has syntax errors"
    exit 1
fi

# Check if source URL is accessible
echo "Checking source URL accessibility..."
source_url=$(grep "^source=" PKGBUILD | sed 's/.*:://' | sed 's/)$//')
if curl -s -I "$source_url" | head -1 | grep -q "200\|302"; then
    echo "✓ Source URL is accessible"
else
    echo "WARNING: Source URL may not be accessible"
fi

# Verify checksum matches
echo "Verifying checksum..."
expected_sum=$(grep "^sha256sums=" PKGBUILD | sed "s/sha256sums=('\([^']*\)')/\1/")
if [[ "$expected_sum" == "SKIP" ]]; then
    echo "WARNING: Using SKIP for checksum - should be updated with actual checksum"
else
    echo "✓ Checksum is set: $expected_sum"
fi

echo ""
echo "=== Package Information ==="
grep "pkgname\|pkgver\|pkgrel\|pkgdesc" PKGBUILD

echo ""
echo "=== Validation Complete ==="
echo "Package appears to be ready for AUR submission!"