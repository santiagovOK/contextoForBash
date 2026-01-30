# CLI & Entrypoint Rules
- Always use 'set -euo pipefail' at the start of scripts for safety.
- Use 'getopts' for argument parsing in simple scripts; manual parsing for complex ones.
- Ensure scripts are executable (chmod +x).
- Provide a usage/help function (-h/--help) for every script.
