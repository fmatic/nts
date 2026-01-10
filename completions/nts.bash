#!/bin/bash

CONFIG="$HOME/.config/nts/config"
[[ -f "$CONFIG" ]] && source "$CONFIG"
[[ "$COMPLETION_ENABLED" == "0" ]] && return 0

_nts_tags() {
  [[ -f "$HOME/.nts.md" ]] || return
  grep -o '#[a-zA-Z0-9_-]\+' "$HOME/.nts.md" | sort -u
}

_nts_tasks() {
  [[ -f "$HOME/.nts.md" ]] || return
  awk '
    /## 🔄 Työn alla/{flag=1;next}
    /##/{flag=0}
    flag && /^\- \[ \]/ {
      i++
      gsub(/^- \[ \] /,"")
      print i ":" $0
    }
  ' "$HOME/.nts.md"
}

_nts_completion() {
  local cur prev
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  local commands="add list done edit config help"

  # Ensimmäinen argumentti: komento
  if [[ $COMP_CWORD -eq 1 ]]; then
    COMPREPLY=( $(compgen -W "$commands" -- "$cur") )
    return 0
  fi

  case "${COMP_WORDS[1]}" in

    add)
  # Tag-only autocomplete: tarkista viimeinen # ennen kursoria
  local before prefix
  before="${COMP_LINE:0:COMP_POINT}"

  # Etsi viimeisin # ja ota siitä eteenpäin
  prefix="${before##*#}"

  # Jos ennen kursoria ei ole #, älä tee mitään
  [[ "$before" != *#* ]] && return 0

  prefix="#$prefix"

  COMPREPLY=( $(compgen -W "$(_nts_tags)" -- "$prefix") )
  return 0
  ;;


    config)
      if [[ $COMP_CWORD -eq 2 ]]; then
        COMPREPLY=( $(compgen -W "completion" -- "$cur") )
      elif [[ $COMP_CWORD -eq 3 && "${COMP_WORDS[2]}" == "completion" ]]; then
        COMPREPLY=( $(compgen -W "on off" -- "$cur") )
      fi
      return 0
      ;;
  esac
}

complete -F _nts_completion nts
