# Vim for Android NDK
### osm0sis @ xda-developers
*Static ARM vim binary for Android built with the NDK*

vim version of osm0sis's nano-ndk modules, he have done the work.
# [osm0sis nano-ndk](https://github.com/Magisk-Modules-Repo/nano-ndk)
the vim binary i used is from Zackptg5 : # [Cross-Compiled-Binaries-Android](https://github.com/Zackptg5/Cross-Compiled-Binaries-Android)

to transform nano-ndk to vim-ndk i just used 3 magic steps :<br>
`fd -t f -x sed -i 's/nano/vim/gi' {}`<br>
`fd 'nano$' -x mv {} {//}/vim`<br>
place the vim binary to bin/vim.bin<br>
easy peasy with linux a shell :)

### Links
* [GitHub](https://github.com/mirsella/vim-ndk)
* [Support](https://forum.xda-developers.com/showthread.php?t=2239421)
* [Sponsor](https://github.com/sponsors/osm0sis)
* [Donate](https://forum.xda-developers.com/donatetome.php?u=4544860)

### Description
A simple installer to push static Android ARM build of the vim editor binary to /system/xbin/ along with the required files in /system/etc/terminfo/, and a wrapper with optional --term parameter to choose your terminfo profile. Detects and supports "systemless" install via SuperSU/Magisk as well. It can then be used from Terminal while booted from that point on.

Each time you flash in recovery it also temporarily enables use in recovery by pushing a script to /sbin/vim with the required environment variables, so you can then trigger it from recovery shell or the console in amarullz' brilliant AROMA Filemanager. Makes it extremely easy and worry-free to tweak and mod on the go, knowing you can edit the faulty build.prop or init.d script if something goes wrong.
