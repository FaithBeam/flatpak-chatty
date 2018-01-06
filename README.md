# flatpak-chatty


### Dependencies
~~~~
flatpak
flatpak-builder (When building yourself)
~~~~

### Building & installing it yourself
~~~~
git clone https://github.com/FaithBeam/flatpak-chatty.git
cd flatpak-chatty/
make pre-build
make build
make install
~~~~

### Installing pre-built .flatpak
Download your preferred version on the releases page
~~~~
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//1.6 org.freedesktop.Sdk//1.6
flatpak install --user --bundle the-file-you-just-downloaded.flatpak
~~~~

### Running the program
~~~~
flatpak run org.chatty.chatty
~~~~

### Uninstalling
~~~~
make uninstall
OR
flatpak uninstall --user org.chatty.chatty
~~~~

### Programs Included (Not including small dependencies)
![Chatty](http://chatty.github.io/)

![Streamlink](https://streamlink.github.io/)

![MPV](https://mpv.io/)

![ffmpeg](https://ffmpeg.org/)
