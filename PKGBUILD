# Maintainer: cirrus
pkgname=cirrus-st
pkgver=0.8.4
pkgrel=1
pkgdesc="."
arch=(x86_64 i686)
url="https://github.com/cirrusUK/cirrus-st.git"
license=('MIT')
groups=()
depends=(ttf-hack ttf-joypixels)
makedepends=(git)
checkdepends=()
optdepends=()
provides=(st)
conflicts=(st)
replaces=()
backup=()
options=()
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
  cd "${_pkgname}"
  printf "0.8.4.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd cirrus-st
  make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
}

package() {
  cd cirrus-st
  mkdir -p ${pkgdir}/opt/${pkgname}
  cp -rf * ${pkgdir}/opt/${pkgname}
  make PREFIX=/usr DESTDIR="${pkgdir}" install
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  install -Dm644 README.org "${pkgdir}/usr/share/doc/${pkgname}/README.org"
}

