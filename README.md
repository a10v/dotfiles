# dotfiles

dotfiles are managed by [chezmoi](https://www.chezmoi.io)

## New Machine Initialization
For all machines run the below command:

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" && which chezmoi 
# For Linux machines it is generally a good idea to cd in .local
cd 
cd .local
sh -c "$(curl -fsLS get.chezmoi.io)"

chezmoi init --apply https://github.com/a10v/dotfiles.git

# Sometimes chezmoi does not get integrated into the $PATH variable right off the bat, so use:

~/.local/bin/chezmoi init --apply https://github.com/a10v/dotfiles.git
```

To update chezmoi after a new update to the repo use: `chezmoi apply`.

### OS-specific Instructions - for (some problematic) Machines 

<details>
  <summary>Ubuntu Machines</summary>

If the initial command does not work right off the bat, you should CD into the `.local` directory, run the install process, and everything should be fine. 

```shell
cd ~/.local/

# This command works on most ubuntu machines, but sometimes the path variable is not updated. In that case use options 2 or 3.
# Option 1
sh -c "$(curl -fsLS get.chezmoi.io)" && chezmoi init --apply https://github.com/a10v/dotfiles.git

# Option 2
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply a10v

# Option 3
sh -c "$(curl -fsLS get.chezmoi.io)" && ~/.local/bin/chezmoi init --apply https://github.com/a10v/dotfiles.git
```
</details>

<details>
  <summary>Redhat Machines</summary>

On Fedora machines (like HPC clusters), the repo may not clone correctly into using `chezmoi init --apply https://github.com/a10v/dotfiles.git`. As such, do the following after Chezmoi is successfully installed. 

```shell
# Go into where the repo is actually stored, ~/.local/share/chezmoi/
cd 
cd .local/share

# Remove failed chezmoi initialization
rm -rf chezmoi

git clone https://github.com/a10v/dotfiles.git chezmoi

# Now re-initialzed chezmoi

chezmoi apply
```
</details>

### Main Tools Installed with chezmoi
* tmux
* nvim
* oh-my-zsh w/ p10k

#### Auto-installs for following tools to be added soon:
* ansible
* git 
* brew
* wezterm