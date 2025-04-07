# dotfiles

dotfiles are managed by [chezmoi](https://www.chezmoi.io)

## Run Command for New Machines

```shell
export GITHUB_USERNAME=a10v
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

## Main Items/Tools:

* tmux
* nvim
* oh-my-zsh w/ p10k

## Potential New Additions:
* ansible
* alacritty