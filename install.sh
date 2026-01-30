#!/bin/bash
# install.sh
# Installs contextoForBash to ~/.contextoForBash

set -euo pipefail

REPO_URL="https://github.com/your-username/contextoForBash.git"
INSTALL_DIR="${HOME}/.contextoForBash"
BIN_NAME="contexto-bash"

echo "🤖 Installing contextoForBash..."

# 1. Check for Git
if ! command -v git >/dev/null 2>&1; then
    echo "❌ Error: git is required to install contextoForBash."
    exit 1
fi

# 2. Clone or Update
if [ -d "$INSTALL_DIR" ]; then
    echo "📂 Updating existing installation in $INSTALL_DIR..."
    git -C "$INSTALL_DIR" pull
else
    echo "📂 Cloning into $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# 3. Setup Permissions
chmod +x "$INSTALL_DIR/bin/$BIN_NAME"

# 4. Success Message & Path Instructions
echo ""
echo "✅ Installation complete!"

echo ""
echo "To use $BIN_NAME, you can run:"
echo "  $INSTALL_DIR/bin/$BIN_NAME"

echo ""
echo "Or add it to your PATH by adding this line to your ~/.bashrc or ~/.zshrc:"
echo "  export PATH=\"$PATH:$INSTALL_DIR/bin\""

