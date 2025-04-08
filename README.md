# dotfiles

dotfiles are managed by [chezmoi](https://www.chezmoi.io)

## Run Command for New Machines

For Ubuntu machines, run:

```shell
cd ~/.local/
```

Then run the following: 

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" && chezmoi init --apply https://github.com/a10v/dotfiles.git
```

## Updating Pre-existing Machines

With Chezmoi, running `chezmoi update` will pull all the changes from the repository (no need to re-initialize dotfiles). 

## Main Items/Tools:

* tmux
* nvim
* oh-my-zsh w/ p10k
* wezterm

### Critical Cross Platform CLI Tools:
* git 
* brew
* ...

## To Be Added Soon:
* ansible

## Notes for Ubuntu:

Chezmoi binaries are downloaded to `~/.local/`, a directory which may not be included in the $PATH on a fresh machine. Thus, run the following commands **AFTER** installing the chezmoi binaries.

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

Additionally, if `which chezmoi` returns nothing or `chezmoi not found`, cd into the `~/.local/` directory and re-run the following command:

```shell
sh -c "$(curl -fsLS get.chezmoi.io)"
```
