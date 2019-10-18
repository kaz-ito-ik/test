###vimディレクトリの作成
mkdir -p ~/.vim
mkdir ~/.vim/tmp
mkdir ~/.vim/rc
mkdir ~/.vim/dict

php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict

chmod 777 ~/.vim/tmp

#ファイル
cp -a toml/dein.toml ~/.vim/rc/dein.toml
cp -a toml/dein_lazy.toml ~/.vim/rc/dein_lazy.toml

#deinをクローンする
mkdir -p ~/.vim/dein/repos/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/git/vim/folders/dein
cp -a ~/git/vim/folders/dein ~/.vim/dein/repos/dein.vim

#インストールされるディレクトリを作成
mkdir -p ~/.vim/dein/cache/dein

#設定ファイルのコピー
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc

###colorの設定
cp -a vim-colors-solarized/colors/ ~/.vim/colors

###上記ファイルが存在する場合 読みに行く設定
echo if \[ -f ~/.bashrc \]\; then > ~/.bash_profile
echo "    "\. ~/.bashrc >> ~/.bash_profile
echo fi >> ~/.bash_profile

### 設定を反映する
source ~/.bash_profile


syntax enable
set background=dark
colorscheme solarized


echo set backupdir=~/.vim/tmp > ~/.vimrc





