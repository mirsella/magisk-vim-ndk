# vim for Android NDK
just vim version of osm0sis's nano-ndk modules, so all merits go to him, go check his profile
### [osm0sis nano-ndk](https://github.com/Magisk-Modules-Repo/nano-ndk)
the vim binary i used is from Zackptg5 : [Cross-Compiled-Binaries-Android](https://github.com/Zackptg5/Cross-Compiled-Binaries-Android)

to transform nano-ndk to vim-ndk i just used 3 magic steps :<br>
`fd -t f -x sed -i 's/nano/vim' {}`<br>
renamed file nano --> vim<br>
and replaced the nano binary with vim<br>
easy peasy with linux :)

### Description
A simple installer to push static Android ARM build of the vim editor binary to /system/xbin/ along with the required files in /system/etc/terminfo/, and a wrapper with optional --term parameter to choose your terminfo profile. Detects and supports "systemless" install via SuperSU/Magisk as well. It can then be used from Terminal while booted from that point on.

Each time you flash in recovery it also temporarily enables use in recovery by pushing a script to /sbin/vim with the required environment variables, so you can then trigger it from recovery shell or the console in amarullz' brilliant AROMA Filemanager. Makes it extremely easy and worry-free to tweak and mod on the go, knowing you can edit the faulty build.prop or init.d script if something goes wrong.
