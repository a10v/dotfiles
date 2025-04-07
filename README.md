# dotfiles

dotfiles are managed by [chezmoi](https://www.chezmoi.io)

## Run Command for New Machines

```shell
export GITHUB_USERNAME=a10v
sh -c "$(curl -fsLS get.chezmoi.io)" --init --apply $GITHUB_USERNAME
```

## Main Items/Tools:

* tmux
* nvim
* oh-my-zsh w/ p10k

## Potential New Additions:
* ansible
* alacritty

## Notes for Ubuntu:

Chezmoi binaries are downloaded to `~/.local/bin`, a directory which is not included in the $PATH variable. Thus, run the following commands **AFTER** installing the chezmoi binaries.

```shell
# For Bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# For zsh
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verify with the following

which chezmoi && chezmoi --version
```