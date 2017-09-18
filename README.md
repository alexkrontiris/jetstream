
# JEtsTream<=@~~
A peerflix wrapper for improved usability.


## DEPENDENCIES
Install dependenties:
```
sudo apt install nohup
sudo apt install npm nodejs
sudo npm install -g peerflix
```

## INSTALL
The scripts and `.desktop` files will create jetstream's directory under `/home/$USER`. Feel free to customize it as you wish.

Install it by using the included installer:
`./jetsream-install.sh`
**OR** install manually:
```
mkdir ~/jetstream
cp jetstream/jetstream.desktop ~/.local/share/applications
xdg-mime default jetstream.desktop applications/x-bittorrent
```
#### OPTIONAL to enable OPTION[2] below
```
$ xdg-mime default jetstream.desktop x-scheme-handler/magnet
```

## USAGE
OPTION[1] Double click on a torrent file or OPTION[2] click on a magnet link from any browser. By default, jetstream stores its data in the user dir. To change the path edit the `jetstream.desktop` file in line 7 after the -f flag. In order to empty jetstreams' directory add the -r flag in `jetstream.desktop` line 7 to remove files on exit, or add an alias to your **.bashrc**: 
```sh
alias r-jetstream='rm -r -i ~/jetstream && echo "JEtsTream cleaned." && mkdir -v ~/jetstream'
```
to erase it on demand. Modify the path if necessary. 

#### NOTE
If you are using a different terminal emulator than xterm, **replace** xterm on line **7** with your terminal emulator.
