mv README.md README.md.bak
mv convert-to-vim.zsh convert-to-vim.zsh.bak
git fetch https://github.com/Magisk-Modules-Repo/nano-ndk master
git reset --hard FETCH_HEAD
mv README.md.bak README.md 
mv convert-to-vim.zsh.bak convert-to-vim.zsh
wget 'https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/raw/master/vim/vim-arm64' -O bin/vim.bin
vimversion=$(curl -s 'https://raw.githubusercontent.com/Zackptg5/Cross-Compiled-Binaries-Android/master/README.md' | rg '\* Vim \(' | sed 's#* Vim (##; s#)##')
vimversioncode=$(sed 's#v##; s#\.##g' <<< $vimversion)
rm bin/nano.bin
fd -E convert-to-vim.zsh -E README.md -t f -x sed -i 's/nano/vim/gi' {}
fd 'nano$' -x mv {} {//}/vim
sed -i 's#nano#vim#gi; s#author=#author=mirsella'\''s fork of #' module.prop
sed -i 's#version=.*#version='$vimversion'#; s#versionCode=.*#versionCode='$vimversioncode'#' module.prop
git add -A
git commit -m "migrated to vim $vimversion"
git push -f origin master
zip magisk-vim-ndk.zip $(fd -t f)
gh release create "$vimversion" magisk-vim-ndk.zip -t "vim $vimversion automatic release ⚠️"
rm magisk-vim-ndk.zip
