# Maintainer: grmat <grmat@sub.red>

pkgname=amdgpu-fancontrol
pkgdesc="amdgpu-fancontrol"
pkgver=1.0
pkgrel=1
arch=('any')
license=('GPL')
depends=('systemd' 'bc')

source=('amdgpu-fancontrol' 'amdgpu-fancontrol.service' 'etc-amdgpu-fancontrol.cfg')
sha256sums=('0bb15e514bcbbfb119ba2e2735736ae9e701c5a33422001021e4e7848e0da4e0'
            '509d5c2676ea0aa23918bebd1b4f5f0268b0a6a68a27650ce487dfb58f27e70c'
            '0a032a9fe2c1c6f985e898eb84b5ae658e08146038f44f7ed4a09400e7f06d39')

package() {
    mkdir -p ${pkgdir}/usr/bin
    cp ${srcdir}/amdgpu-fancontrol ${pkgdir}/usr/bin/
    mkdir -p ${pkgdir}/usr/lib/systemd/system
    cp ${srcdir}/amdgpu-fancontrol.service ${pkgdir}/usr/lib/systemd/system/
    mkdir -p ${pkgdir}/etc
    cp ${srcdir}/etc-amdgpu-fancontrol.cfg ${pkgdir}/etc/amdgpu-fancontrol.cfg
}
