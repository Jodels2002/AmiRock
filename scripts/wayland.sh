sudo apt install wayland-sca* -y 

git clone https://gitlab.freedesktop.org/mesa/drm
mkdir drm/build
$cd drm/build
$meson
$sudo ninja install


git clone https://gitlab.freedesktop.org/wayland/wayland-protocols
mkdir wayland-protocols/build
cd wayland-protocols/build
git checkout 1.24
meson
sudo ninja install
