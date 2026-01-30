# Library & Function Rules
- Define functions with 'function_name() {' style (no 'function' keyword for POSIX compat if needed).
- Use local variables ('local var_name') to avoid polluting the global scope.
- Return codes (0 for success, non-zero for error) instead of string outputs for control flow.
- Library files should not be executable and should only define functions.
