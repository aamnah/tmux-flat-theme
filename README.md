# tmux Flat Theme

My custom thme for `tmux` using Flat UI colors. Install:

```bash
sudo apt install -y curl tmux
```

```bash
curl https://raw.githubusercontent.com/aamnah/tmux-flat-theme/master/install_remote.sh | bash
```

Detailed notes on how to customize a tmux theme [here](https://tldr-link)

![Screenshot - Tmux Flat Theme](https://github.com/aamnah/tmux-flat-theme/blob/master/screenshots/flattheme.png)

```bash
# Colors used 

TURQUOISE='#1abc9c' # teal
PETERRIVER='#3498db' # blue
WETASPHALT='#34495e'
MIDNIGHTBLUE='#2c3e50'
ALIZARIN='#e74c3c' #red
CLOUDS='#ecf0f1' # light gray
CONCRETE='#95a5a6' # gray
```

Installation
---

A bash script is included, run it for a quick and easy install

```bash
bash ./install.sh
```

The script takes care of the following:

- Creates a `~/.tmux/` directory if one doesn't exist
- Creates a `~/.tmux.conf` file if one doesn't exist
- Copies the required theme files `flattheme.conf` and `flattheme.tmux` to the `~/.tmux` folder
- Add the code to load the theme inside `~/.tmux.conf`

TODO
---

- [ ] Add CPU load and RAM info to `status-right` [example](https://github.com/srathbone/tmux-arc-theme-config)
- [x] Show current working directory with window title in status bar [example](https://github.com/eendroroy/tmux-simple-theme)
- [ ] Edit the current directory path to only show the current folder instead of the entire path
- [x] Make the theme self-conatined. Save it as a separate file and load from `~/.tmux.conf`
- [x] include an install script
- [x] style the clock (`clock-mode-colour` and `clock-mode-style`)

Links
---

- [tmux Manual](https://man.openbsd.org/OpenBSD-current/man1/tmux.1)
- [strftime Manual](https://man.openbsd.org/strftime.3)
- [Flat UI Colors](https://www.materialui.co/flatuicolors)
