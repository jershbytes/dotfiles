set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

github_username := env("GITHUB_USERNAME", "JershBytes")

arch_install:
    sudo pacman -S --noconfirm yay zsh chezmoi

darwin_install:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew install chezmoi git

apply_dotfiles:
    chezmoi init --apply {{ github_username }}

install:
    @case "$(uname -s)" in \
      Linux*) \
        if command -v pacman >/dev/null 2>&1; then \
          just arch_install; \
          just apply_dotfiles; \
        else \
          echo "Unsupported Linux distribution. This recipe only supports Arch Linux."; \
          exit 1; \
        fi ;; \
      Darwin*) \
        just darwin_install; \
        just apply_dotfiles ;; \
      *) \
        echo "Unsupported operating system: $(uname -s)"; \
        exit 1 ;; \
    esac

default: install