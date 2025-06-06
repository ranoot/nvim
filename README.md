### To Install

- zsh
- tmux
- nvim (refer to the config)

### Configurations

Configuations to write in .bashrc
```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# starts tmux on startup (Checks that tmux is not started yet)
test -z "$TMUX" && (tmux attach || tmux new-session)
```

Be sure to install xclip or xsel for clipboard functionality
```bash
sudo apt install xclip
```
