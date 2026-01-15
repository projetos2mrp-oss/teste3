#!/bin/bash
# Build script for Skysize to initialize OCA submodules

set -e  # Exit on error

echo "=========================================="
echo "Initializing OCA Submodules for Odoo 16.0"
echo "=========================================="
echo ""

# Check if .gitmodules exists
if [ ! -f .gitmodules ]; then
    echo "ERROR: .gitmodules file not found!"
    exit 1
fi

echo "✓ .gitmodules found"
echo ""

# Initialize and update all submodules recursively
echo "Running: git submodule update --init --recursive"
if git submodule update --init --recursive; then
    echo "✅ Submodules initialized successfully"
else
    echo "❌ Failed to initialize submodules"
    exit 1
fi

echo ""
echo "Checking submodules status:"
git submodule status

echo ""
echo "Checking if l10n-brazil was downloaded:"
if [ -d "odoo/oca_addons/l10n-brazil" ] && [ "$(ls -A odoo/oca_addons/l10n-brazil)" ]; then
    echo "✅ l10n-brazil downloaded successfully"
    echo "   Files: $(find odoo/oca_addons/l10n-brazil -type f | wc -l)"
else
    echo "❌ l10n-brazil is empty or missing"
    exit 1
fi

echo ""
echo "=========================================="
echo "Build completed successfully!"
echo "=========================================="
