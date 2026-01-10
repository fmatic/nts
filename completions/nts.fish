if test -f ~/.config/nts/config
    source ~/.config/nts/config
end

if test "$COMPLETION_ENABLED" = "0"
    exit
end

complete -c nts -f

complete -c nts -n '__fish_use_subcommand' \
  -a 'add list done edit config help'

# done: tehtävät
complete -c nts -n '__fish_seen_subcommand_from done' \
  -a '(awk "
    /## 🔄 Työn alla/{f=1;next}
    /##/{f=0}
    f && /^\- \[ \]/ {i++; sub(/^- \[ \] /,\"\"); print i \":\" \$0}
  " ~/.nts.md 2>/dev/null)'
