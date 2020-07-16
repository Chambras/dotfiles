# My Personal dotfiles

These are my personal dotfiles. These have been modified so they can be used in [GitHub Codespaces](https://github.com/features/codespaces), but they can be used on any clean Linux, WSL, Docker and/or Devcontainers / Codespaces.
For some reason I still do not like Zsh and I am not ready to jump into that, but once I do it I will update these scripts.

Might not be as good looking as other Zsh configurations I have seen around, but it gets the job done :)



## Project Structure

```ssh
.
├── .banner.rc
├── .bash_aliases
├── .bashprompt.rc
├── .bashrc
├── .env.rc
├── .gitconfig
├── .profile
├── .vimrc
├── LICENSE
├── README.md
├── install.sh
└── lib
    └── badwolf.vim
```

- `lib/badwolf.vim` – My vim color scheme. I use [badwolf](https://github.com/sjl/badwolf).
- `.bash_aliases` – All my aliases for lots of tools.
- `.banner.rc` – Logon banner message displayed when login.
- `.bashprompt.rc` – My bash prompt customizations.
- `.bashrc` – Bash setup/startup script.
- `.env.rc` – Environmental vars and PATH settings, symlinked to `~/.bashenv`
- `.gitconfig` – My personal git config with some git aliases.
- `.profile` – Untouched but synced just in case.
- `.vimrc` - My personal vim configuration with some pre-configured settings and color scheme.
- `install.sh` – Main install script.

## Usage

Clone into `~/.dotfiles`

```bash
git clone https://github.com/chambras/dotfiles.git ~/.dotfiles
```

Run install

```bash
cd ~
./.dotfiles/install.sh
```

## Authors

- Marcelo Zambrana
