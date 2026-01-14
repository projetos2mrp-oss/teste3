#!/bin/bash
# Build script for Skysize to initialize OCA submodules

set -e

echo "=========================================="
echo "Initializing OCA Submodules"
echo "=========================================="

# Initialize and update all submodules recursively
git submodule update --init --recursive

echo "✅ Submodules initialized successfully"
echo ""
echo "Checking submodules status:"
git submodule status

echo ""
echo "=========================================="
echo "Build completed successfully"
echo "=========================================="
