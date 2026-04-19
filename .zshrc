autoload -U compinit && compinit
autoload -U colors && colors

PROMPT='%~ $ '
RPROMPT=''

setopt AUTO_CD
setopt HIST_IGNORE_DUPS
