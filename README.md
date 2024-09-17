# My Personal dotfiles

These are my personal dotfiles. These have been modified so they can be used in [GitHub Codespaces](https://github.com/features/codespaces), but they can be used on any clean Linux, WSL, Docker and/or Devcontainers / Codespaces.
For some reason I still do not like Zsh and I am not ready to jump into that, but once I do it I will update these scripts.

Might not be as good looking as other Zsh configurations I have seen around, but it gets the job done :)

![bash1](https://user-images.githubusercontent.com/664891/87693527-149ce780-c75b-11ea-8816-9b6d1214c885.png)

![bash2](https://user-images.githubusercontent.com/664891/87693525-149ce780-c75b-11ea-8882-17a01d4ee77c.png)

![bash3](https://user-images.githubusercontent.com/664891/87693523-14045100-c75b-11ea-8abb-ccb831c5d1d1.png)

![CloudShell](https://user-images.githubusercontent.com/664891/87708130-3ce31100-c770-11ea-8c23-dabc28da4a37.PNG)

![Ubuntu](https://user-images.githubusercontent.com/664891/87708131-3d7ba780-c770-11ea-96cd-42c9ec53db21.PNG)

![docker](https://user-images.githubusercontent.com/664891/87708135-3d7ba780-c770-11ea-9c46-65e0cb3c8183.PNG)

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

## Resources

These are based on the amazing repo from [Ben Coleman](https://github.com/benc-uk). His public [dotfiles](https://github.com/benc-uk/dotfiles) repo is a lot better with Zsh support and a lot more, check it out!
