#!/bin/bash
CONFIG="$HOME/.config/nts/config"
[[ -f "$CONFIG" ]] && source "$CONFIG"
[[ "$COMPLETION_ENABLED" == "0" ]] && return 0

_nts_completion() {
  local cur prev commands
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  commands="add list done edit help"

  case "$prev" in
    nts)
      COMPREPLY=( $(compgen -W "$commands" -- "$cur") )
      return 0
      ;;
    done)
      # listaa työn alla olevien rivinumerot
      if [[ -f "$HOME/.nts.md" ]]; then
        local nums
        nums=$(awk '
          /## 🔄 Työn alla/{flag=1;next}
          /##/{flag=0}
          flag && /^\- \[ \]/ {i++ ; print i}
        ' "$HOME/.nts.md")
        COMPREPLY=( $(compgen -W "$nums" -- "$cur") )
      fi
      return 0
      ;;
  esac
}

_nts_tags() {
  if [[ -f "$HOME/.nts.md" ]]; then
    grep -o '#[a-zA-Z0-9_-]\+' "$HOME/.nts.md" | sort -u
  fi
}

complete -F _nts_completion nts
