pre-build:
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install flathub org.freedesktop.Platform//1.6 org.freedesktop.Sdk//1.6
build:
	sed -i -- s/-j4/-j$(shell nproc --all)/ chatty.json
	flatpak-builder --repo=repo chatty chatty.json
	flatpak build-bundle repo Chatty_0.9.flatpak org.chatty.chatty
install:
	flatpak install --user --bundle Chatty_0.9.flatpak
uninstall:
	flatpak uninstall --user org.chatty.chatty
clean:
	rm -rf chatty/
	rm -rf repo/
	rm -rf .flatpak-builder/
	rm *.flatpak
make:
	build
