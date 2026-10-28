This PrismLauncher is a local build patched to allow offline accounts
without a Microsoft account. Lock it to the repository it was installed
from, so that xbps-install -Su won't replace it with the official
package (needed once, the lock is kept across updates):

  doas xbps-pkgdb -m repolock PrismLauncher

To check: xbps-query --list-repolock-pkgs
