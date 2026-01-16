#!/bin/bash
# Skysize initialization script for OCA submodules
# This script ensures OCA modules are properly downloaded during deployment

echo "================================================"
echo "OCA Submodules Initialization for Odoo 16.0"
echo "================================================"
echo ""

# Function to print colored output
print_success() {
    echo "✅ $1"
}

print_error() {
    echo "❌ $1"
}

print_info() {
    echo "ℹ️  $1"
}

# Check if we're in the right directory
if [ ! -f ".gitmodules" ]; then
    print_error ".gitmodules not found! Are we in the repository root?"
    exit 1
fi

print_success ".gitmodules found"
echo ""

# Display current directory for debugging
print_info "Current directory: $(pwd)"
print_info "Git version: $(git --version)"
echo ""

# Show submodules configuration
print_info "Configured submodules:"
cat .gitmodules
echo ""

# Initialize submodules
print_info "Initializing Git submodules..."
if git submodule init; then
    print_success "Submodules initialized"
else
    print_error "Failed to initialize submodules"
    exit 1
fi

echo ""

# Update submodules (download the actual code)
print_info "Downloading OCA modules (this may take 3-5 minutes)..."
if git submodule update --init --recursive --depth 1; then
    print_success "Submodules downloaded successfully"
else
    print_error "Failed to download submodules"
    print_info "Trying without --depth flag..."
    if git submodule update --init --recursive; then
        print_success "Submodules downloaded successfully (full clone)"
    else
        print_error "Failed to download submodules even with full clone"
        exit 1
    fi
fi

echo ""

# Verify submodules status
print_info "Submodules status:"
git submodule status

echo ""

# Verify critical submodule (l10n-brazil)
print_info "Verifying l10n-brazil module..."
if [ -d "odoo/oca_addons/l10n-brazil" ]; then
    FILE_COUNT=$(find odoo/oca_addons/l10n-brazil -type f 2>/dev/null | wc -l)
    if [ "$FILE_COUNT" -gt 10 ]; then
        print_success "l10n-brazil verified: $FILE_COUNT files found"
    else
        print_error "l10n-brazil appears empty (only $FILE_COUNT files)"
        exit 1
    fi
else
    print_error "l10n-brazil directory not found"
    exit 1
fi

echo ""

# List all downloaded OCA modules
print_info "Downloaded OCA modules:"
for module in odoo/oca_addons/*; do
    if [ -d "$module" ] && [ -f "$module/__init__.py" ]; then
        MODULE_NAME=$(basename "$module")
        FILE_COUNT=$(find "$module" -type f 2>/dev/null | wc -l)
        print_success "$MODULE_NAME ($FILE_COUNT files)"
    fi
done

echo ""
echo "================================================"
echo "✅ OCA Submodules Initialization Complete!"
echo "================================================"
