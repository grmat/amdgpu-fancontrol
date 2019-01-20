# Maintainer: grmat <grmat@sub.red>

pkgname=amdgpu-fancontrol
pkgdesc="amdgpu-fancontrol"
pkgver=1.0
pkgrel=1
arch=('any')
license=('GPL')
depends=('systemd' 'bc')

source=('amdgpu-fancontrol' 'amdgpu-fancontrol.service' 'etc-amdgpu-fancontrol.cfg')
sha256sums=('7e1c4af47bdbab1bc4a239b22e1b6f10dc2338de500705eb5edae5bfe8ceedfe'
            '509d5c2676ea0aa23918bebd1b4f5f0268b0a6a68a27650ce487dfb58f27e70c'
            '9531b0dc6e8497ba8b40d9b3a7a5d6af80c6b804200e7a291b251153ff92e262')

package() {
    mkdir -p ${pkgdir}/usr/bin
    cp ${srcdir}/amdgpu-fancontrol ${pkgdir}/usr/bin/
    mkdir -p ${pkgdir}/usr/lib/systemd/system
    cp ${srcdir}/amdgpu-fancontrol.service ${pkgdir}/usr/lib/systemd/system/
    mkdir -p ${pkgdir}/etc
    cp ${srcdir}/etc-amdgpu-fancontrol.cfg ${pkgdir}/etc/amdgpu-fancontrol.cfg
}
