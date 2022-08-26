if status is-interactive
  # Commands to run in interactive sessions can go here
  zoxide init fish | source

  # Adiciona as chaves ao ssh agent
  ssh-add ~/.ssh/id_rsa 2> /dev/null

  # tmux.fish settings
  set fish_tmux_default_session_name "Main"
  
  # Export some env
  export ANDROID_HOME=$HOME/Android/Sdk/

  # Set term colors to true
  export COLORTERM=truecolor

  # Add more directories to $PATH
  fish_add_path $HOME/bin
  fish_add_path $HOME/.local/bin
  fish_add_path $HOME/.cargo/bin
  fish_add_path $HOME/.deno/bin
  fish_add_path $HOME/.npm-global/bin
  fish_add_path $HOME/development/flutter/bin
  fish_add_path /home/linuxbrew/.linuxbrew/bin
  fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
  fish_add_path $ANDROID_HOME/platform-tools

  # ---------------------------------------------------------
  # Abbreviations
  #----------------------------------------------------------

  # Use zoxide instead of cd
  abbr -a cd z

  # tmux and teamocil
  abbr -a tm teamocil

  # Some dnf goodies
  abbr -a dnfu sudo dnf upgrade
  abbr -a dnfi sudo dnf install 
  abbr -a dnfr sudo dnf remove 

  # Lazy aliases
  abbr -a lzg lazygit
  abbr -a lzd lazydocker

  # Old zsh aliases
  abbr -a cp rsync --progress --size-only --inplace --verbose
  abbr -a fixping sudo setcap cap_net_raw+p /bin/ping
  abbr -a fixcurl sudo ip link set dev eth0 mtu 1000 
  abbr -a clear " clear"
  abbr -a ls exa
  abbr -a l exa -abghHlS
  
  abbr -a top btm
  
  # Docker services
  abbr -a npmd docker run --rm -ti -p 3000:3000 -v {$PWD}:/temp -w /temp node:16 npm
  abbr -a web docker run --rm -v {$PWD}:/usr/share/nginx/html -p 8081:80 nginx

  # Git aliases
  abbr -a g git
  abbr -a gt git switch
  abbr -a gf git fetch --all -p
  abbr -a ga git add
  abbr -a gs git status
  abbr -a gc git commit
  abbr -a gd git dft

  # Now lunarvim is my bestfriend
  abbr -a vim lvim
end
