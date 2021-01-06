# vim for Android NDK
vim version of osm0sis's vim-ndk modules, all credits to him.
### [osm0sis vim-ndk](https://github.com/Magisk-Modules-Repo/vim-ndk)
the vim binary i used is from Zackptg5 : [Cross-Compiled-Binaries-Android](https://github.com/Zackptg5/Cross-Compiled-Binaries-Android)

check convert-to-vim.sh to see the steps

### Description
A simple installer to push static Android ARM build of the vim editor binary to /system/xbin/ along with the required files in /system/etc/terminfo/, and a wrapper with optional --term parameter to choose your terminfo profile. Detects and supports "systemless" install via SuperSU/Magisk as well. It can then be used from Terminal while booted from that point on.

Each time you flash in recovery it also temporarily enables use in recovery by pushing a script to /sbin/vim with the required environment variables, so you can then trigger it from recovery shell or the console in amarullz' brilliant AROMA Filemanager. Makes it extremely easy and worry-free to tweak and mod on the go, knowing you can edit the faulty build.prop or init.d script if something goes wrong.
