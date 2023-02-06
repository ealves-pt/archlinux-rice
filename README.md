# Arch Linux RICE

The setup uses [dotbot](https://github.com/anishathalye/dotbot), just run `./install`.

## Spotify

There is a known [issue](https://wiki.hyprland.org/Useful-Utilities/App-Clients/#spotify) with Spotify. You can do the following:

```bash
cd /tmp
git clone git@github.com:dasJ/spotifywm.git
cd spotifywm
make

mkdir $HOME/.config/spotifywm
mv spotifywm.so $HOME/.config/spotifywm/spotifywm.so

cp /usr/share/applications/spotify.desktop ~/.local/share/applications/
```

Then edit `~/.local/share/applications/spotify.desktop` and change the `Exec` entry to `sh -c "env LD_PRELOAD\=\$HOME/.config/spotifywm/spotifywm.so spotify --uri\=%U"`
