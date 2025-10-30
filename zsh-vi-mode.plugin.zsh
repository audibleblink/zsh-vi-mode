# According to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Auto-compile for faster loading
# Only recompile if source is newer or .zwc doesn't exist
if [[ ! -f "${0:h}/zsh-vi-mode.zsh.zwc" ]] || 
   [[ "${0:h}/zsh-vi-mode.zsh" -nt "${0:h}/zsh-vi-mode.zsh.zwc" ]]; then
  zcompile "${0:h}/zsh-vi-mode.zsh" 2>/dev/null || true
fi

source ${0:h}/zsh-vi-mode.zsh
