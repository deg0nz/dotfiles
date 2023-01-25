# Load macOS specific configs
if test (uname) = "Darwin"

    # Aliases
    alias removegatekeeper='sudo xattr -rd com.apple.quarantine'

    # Use Apple Silicon Homebrew
    eval (/opt/homebrew/bin/brew shellenv)
end