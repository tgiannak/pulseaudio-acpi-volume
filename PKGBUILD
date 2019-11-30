# Maintainer: Theophilos Giannakopoulos <theo@abstractnonsense.org>

pkgname='pulseaudio-acpi-volume'
pkgver=1.0.1
pkgrel=1
pkgdesc="Control PulseAudio volume with ACPI events"
arch=('any')
url='https://github.com/tgiannak/pulseaudio-acpi-volume'
license=('BSD')
depends=('sh' 'coreutils' 'findutils' 'socat' 'pamixer' 'acpid' 'pulseaudio')
source=("volume-service.sh"
        "volume.sh"
        "pulseaudio-acpi-volume.service"
        "LICENSE")
md5sums=('cb6b33bae36f24d29c1920dccaa4f1e0'
         'b4999d36b055930da098edc7ddce8d67'
         '57b71f5646940d332411fc5d48b42495'
         '5d3b8820b4c3352d380cd46246c3f5e7')

package() {
  install -Dm755 "$srcdir/volume-service.sh" \
          "$pkgdir/usr/lib/pulseaudio-acpi-volume/volume-service.sh"
  install -Dm755 "$srcdir/volume.sh" \
          "$pkgdir/usr/lib/pulseaudio-acpi-volume/volume.sh"
  install -Dm644 "$srcdir/pulseaudio-acpi-volume.service" \
          "$pkgdir/usr/lib/systemd/user/pulseaudio-acpi-volume.service"
  install -Dm644 "$srcdir/LICENSE" \
          "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
