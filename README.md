# friend-dotfiles #


The dotfiles I've decided to save for my desktop, a dual-screen machine running CrunchBang Waldorf.

## What's Included Here (so far) ##

Right now, just the following:

- `bash`: just the `bashrc` file and the `bash-logout` file. Still vanilla.
- `desktop-stuff/`: a whole bunch of files related to the openbox window manager:
    - `.conkyrc`: Still mostly the vanilla version that comes with Waldorf. This way I can keep track of the changes I make.
    - `.XCompose`: Currently, a standard template for XCompose. Either I'll split this into modular files and `include` them properly or leave it as one big mess.
    - ``.config`: Stuff for openbox & tint2. Still (mostly) vanilla at this point.

## What *won't ever* included in here ##

Stuff that likely will never be put in here includes:

- My `.emacs.d` directory. That's already being synchronised [here](https://github.com/tariqk/emacs24-starter-kit) if you want to take a look, and besides, it needs to be synchronised in multiple places.
- Any history files.
- Right now, stuff in `~/.config/nitrogen/`. The `bg-saved.cfg` file actually gets modified every five minutes or so, and right now the `nitrogen` settings are fine the way they are.
- The per-user `~/.anacron/`. It's neat, but the `~/.anacron/spool/` directory gets updated every day or so. Maybe if I `.gitignore` it, so that people can see what the `.anacron` files work. So maybe this shouldn't be here.
- Nothing with my passwords and access credentials. Just in case I forget.

## How Does This Work, Anyway? ##

Basically:

1. If you haven't already, install [GNU Stow](http://www.gnu.org/software/stow/).
2. Clone this repo to a directory in your home directory. I can never remember the git command for this, but you figure it out lah.
3. I don't recall if there's anything you need to do to setup Stow. Probably not.
4. Start your terminal.
5. `stow bash && stow desktop-stuff`. I think. I don't know if you need to delete the original files first. Honestly, I haven't tried it.
6. Stow will then create symlinks which will appear in your home directory.
7. That's it.

## TODO: ##

- Probably add the shell scripts I have in `~/bin/`.
- Add more stuff as I customise the system more.
- ????
- Probably no profit, really.
