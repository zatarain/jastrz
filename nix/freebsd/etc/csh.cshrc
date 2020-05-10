# $FreeBSD: releng/12.1/bin/csh/csh.cshrc 337849 2018-08-15 14:41:24Z brd $
#
# System-wide .cshrc file for csh(1).

bindkey "\e[2~" overwrite-mode     # Ins
bindkey "\e[3~" delete-char        # Delete

bindkey "^[[5C" forward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[5D" backward-word
bindkey "^[[1;5D" backward-word

