FROM	base/archlinux
RUN	pacman -Sy --noconfirm && pacman -Sy archlinux-keyring --noconfirm && pacman -Su --noconfirm && pacman-db-upgrade && trust extract-compat && pacman -Scc --noconfirm
