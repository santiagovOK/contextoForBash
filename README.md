# contextoForBash

**Guardrail-as-a-Service for Shell Scripting.**

This tool prevents AI Agents from generating "dangerous" or unportable bash (e.g., using bashisms in a `#!/bin/sh` script). It sets up a context and rule structure for AI agents to follow when generating code for your project.

## Audience
- DevOps Engineers
- Site Reliability Engineers (SREs)
- Linux Power Users

## Platform Support

| Platform | Shell | Status |
| :--- | :--- | :--- |
| **Ubuntu/Debian** | Bash | ✅ Supported |
| **RHEL/CentOS** | Bash | ✅ Supported |
| **macOS** | Zsh/Bash | ✅ Supported |
| **Alpine Linux** | Ash | ⚠️ Partial (Bash required) |

## Safety First
This tool and the scripts it generates adhere to strict safety standards:
- **`set -euo pipefail`**: Ensures scripts exit immediately on error, undefined variables, or pipe failures.
- **Cleanup**: Uses `trap` to ensure temporary files are cleaned up on exit or interruption.
- **Portability**: Favors `command -v` over `which` and avoids non-standard extensions where possible.

## Installation

### Quick Install (curl)
```bash
curl -fsSL https://raw.githubusercontent.com/santiagovOK/contextoForBash/main/install.sh | bash
```

### Manual Install
```bash
git clone https://github.com/santiagovOK/contextoForBash.git
cd contextoForBash
./bin/contexto-bash
```

## Usage

```bash
./bin/contexto-bash [options]
```

**Options:**
- `-p, --path <dir>`: Base directory for rules (e.g., `scripts`, `bin`).
- `-v, --version`: Show version.
- `-h, --help`: Show help message.

## Contributing
Please see `AGENTS-STYLE.md` for our bash style guide. We use `shellcheck` to ensure code quality.

## License
Apache 2.0
