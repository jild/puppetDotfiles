.PHONY: vim

neovimAsStandard: 
	sudo mv /usr/bin/vim /usr/bin/vim-old
	sudo mv /usr/bin/vi /usr/bin/vi-old
	sudo ln -s /usr/bin/nvim /usr/bin/vi
	sudo ln -s /usr/bin/nvim /usr/bin/vim

neovimVundle:
	cd $vimDotfilesDir; \
	mkdir -p bundle; \
	ln -s ../Vundle.vim bundle/Vundle.vim;

zshPluginInstall:
	cd /tmp; \
	curl https://cdn.rawgit.com/zsh-users/antigen/v1.4.1/bin/antigen.zsh > antigen.zsh; \
	source ./antigen.zsh
	antigen init

installOnArch: 
	sudo pacman -Sy xclip # for neovim clipboard workaround

# ohne global wenn für einzelnes Projekt
gitConfig:
	git config --global user.email jakobwild@gmail.com
	git config --global user.name "jild"

