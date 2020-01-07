set PATH $HOME/codes/commands/ $HOME/.local/bin $PATH
set -x EDITOR vim
set -x PSQL_EDITOR vim

alias vi='vim'

set fish_color_normal pink
#set fish_color_command
#set fish_color_quote
#set fish_color_redirection
#set fish_color_end
#set fish_color_error
#set fish_color_param
#set fish_color_comment
#set fish_color_match
#set fish_color_selection
#set fish_color_search_match
#set fish_color_operator
#set fish_color_escape
#set fish_color_cwd
#set fish_color_autosuggestion
#set fish_color_user
#set fish_color_host
#set fish_color_cancel
#set fish_pager_color_prefix
#set fish_pager_color_completion
#set fish_pager_color_descriptionor
#set fish_pager_color_progress
#set fish_pager_color_secondary

function myip
  curl ipecho.net/plain; echo
end
