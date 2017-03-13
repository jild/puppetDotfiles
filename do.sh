sudo ln -s /usr/bin/nvim /usr/bin/vi                                                   │~                              |~                                                               
sudo ln -s /usr/bin/nvim /usr/bin/vim                                                  │~                              |~                                                               
sudo /usr/bin/vim /usr/bin/vim-old                                                     │~                              |~                                                               
sudo mv /usr/bin/vim /usr/bin/vim-old
sudo ln -s /usr/bin/nvim /usr/bin/vim 

# install:
xclip # for neovim clipboard workaround

# ohne global wenn für einzelnes Projekt
git config --global user.email jakobwild@gmail.com
git config --global user.name "Jakob Wild"
