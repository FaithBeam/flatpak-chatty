# flatpak-chatty

Chatty twitch client, streamlink, and mpv in a flatpak

## Dependencies

~~~~
flatpak
flatpak-builder (When building yourself)
~~~~

## Building & installing it yourself

~7 minutes to download and build on a 4 core 3.7Ghz CPU

~~~~
git clone https://github.com/FaithBeam/flatpak-chatty.git
cd flatpak-chatty/
make pre-build
make build
make install
~~~~

## Installing pre-built .flatpak

Download your preferred version on the releases page

~~~~
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//1.6 org.freedesktop.Sdk//1.6
flatpak install --user --bundle the-file-you-just-downloaded.flatpak
~~~~

## Running the program

~~~~
flatpak run org.chatty.chatty
~~~~

## Required Configuration

1. Click Extra
2. Click Livestreamer
3. Click Enable context menu entry
4. Click Edit under Base command
5. Replace livestreamer with streamlink -p mpv
6. Click save

It should look like this

![Configuration Example](https://i.imgur.com/Kmfu9GK.png)

## Uninstalling

~~~~
make uninstall
OR
flatpak uninstall --user org.chatty.chatty
~~~~