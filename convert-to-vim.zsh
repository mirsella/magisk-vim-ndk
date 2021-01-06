cp README.md README.md.bak
git fetch https://github.com/Magisk-Modules-Repo/nano-ndk master
git reset --hard FETCH_HEAD
cp README.md.bak README.md 
wget 'https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/raw/master/vim/vim-arm64' -O bin/vim.bin
vimversion=$(curl -s 'https://raw.githubusercontent.com/Zackptg5/Cross-Compiled-Binaries-Android/master/README.md' | rg '\* Vim \(' | sed 's#* Vim (##; s#)##')
vimversioncode=$(sed 's#v##; s#\.##g' <<< $vimversion)
rm bin/nano.bin
fd -E convert-to-vim.sh -t f -x sed -i 's/nano/vim/gi' {}
fd -E convert-to-vim.sh 'nano$' -x mv {} {//}/vim
sed -i 's#nano#vim#gi; s#author=#author=mirsella'\''s fork of #' module.prop
sed -i 's#version=.*#version='$vimversion'#; s#versionCode=.*#versionCode='$vimversioncode'#' module.prop
