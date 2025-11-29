# ~/.config/fish/config.fish
set -g -x EDITOR nvim
set -gx PATH $HOME/.local/bin $PATH

function fish_prompt
  set_color normal
  echo -n (whoami)"@"(hostname)": "(prompt_pwd)"> "
end
