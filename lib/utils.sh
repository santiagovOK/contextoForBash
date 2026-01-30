#!/bin/bash

# lib/utils.sh
# Utility functions for contextoForBash

# Cleanup function to be called on exit
cleanup() {
    # Add any specific cleanup logic here (e.g., removing temp files)
    # For now, just a placeholder as we aren't creating temp files yet
    :
}

error_handler() {
    local line_no=$1
    local command=$2
    echo "❌ Error on line $line_no: Command '$command' failed." >&2
}

# File creation helper
create_rule_file() {
    local path=$1
    local content=$2
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$path")"
    
    if [ ! -f "$path" ]; then
        echo "$content" > "$path"
        echo "   ✅ Created: $path"
    else
        echo "   ⚠️  Skipped (already exists): $path"
    fi
}

# Function to copy a template file to a destination
install_template() {
    local template_path=$1
    local dest_path=$2
    
    if [ ! -f "$template_path" ]; then
        echo "❌ Template not found: $template_path" >&2
        return 1
    fi

    # Read content from template
    local content
    content=$(cat "$template_path")
    
    create_rule_file "$dest_path" "$content"
}
