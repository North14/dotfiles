function fish_prompt --description 'Write out the prompt'
  printf "%s%s%s@%s%s:%s/%s \$ " (set_color eceff4 --bold) (whoami) (set_color normal && set_color e5e9f0) (hostname) (set_color 88c0d0 --italics) (prompt_pwd) (set_color normal && set_color d8dee9)
end
