# abaykan zsh-theme
# Screenshot > https://abaykan.com/server/abaykan.zsh-theme~.png


# logo abaykan
abaykan="$fg_bold[cyan]
       (_    ,_,    _) 
       / `'--) (--'` \      What should i do dude ?
      /  _,-'\_/'-,_  \
     /.-'     "     '-.\
 "
# whoami
g_whoami="☉ $fg[white]Whomai  : `whoami`$fg[cyan]"

# id
g_id="☉ $fg[white]User    : `id $(whoami) | cut -d' ' -f1`$fg[cyan]"

# kernel version
g_kernel="☉ $fg[white]System  : `uname -v`$fg[cyan]"

# date time
g_date="☉ $fg[white]Today   : `date`$fg[cyan] \n\n"

# print
print -P $abaykan
print -P $g_whoami
print -P $g_id
print -P $g_kernel
print -P $g_date

# show staged changes in the repository
local g_changes="$FG[038][%c]%{$reset_color%}"
# Define prompts
#
PROMPT='${g_status}${g_changes} $(git_prompt_info)'

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
