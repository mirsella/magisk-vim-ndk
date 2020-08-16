# vim for Android NDK
### osm0sis @ xda-developers
*Static ARM vim binary for Android built with the NDK*

### Links
* [GitHub](https://github.com/Magisk-Modules-Repo/vim-Installer)
* [Support](https://forum.xda-developers.com/showthread.php?t=2239421)
* [Sponsor](https://github.com/sponsors/osm0sis)
* [Donate](https://forum.xda-developers.com/donatetome.php?u=4544860)

### Description
A simple installer to push my own static Android ARM build of the vim editor binary to /system/xbin/ along with the required files in /system/etc/terminfo/, and a wrapper with optional --term parameter to choose your terminfo profile. Detects and supports "systemless" install via SuperSU/Magisk as well. It can then be used from Terminal while booted from that point on.

Each time you flash in recovery it also temporarily enables use in recovery by pushing a script to /sbin/vim with the required environment variables, so you can then trigger it from recovery shell or the console in amarullz' brilliant AROMA Filemanager. Makes it extremely easy and worry-free to tweak and mod on the go, knowing you can edit the faulty build.prop or init.d script if something goes wrong.
