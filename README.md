# NeoVim configuration
#### 1. Для безошибочного запуска конфигурации нужен NeoVim-0.9.0 и выше. Можно скачать по ссылке [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
#### 2. Сначала требуется создать директорию nvim в ~/.config/, если таковой еще нет, далее склонировать туда код репозитория.
#### 3. Для загрузки всех плагинов потребуется [packer.nvim](https://github.com/wbthomason/packer.nvim). Его можно установить с помощью следующей команды:
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
#### 4. Запустить NeoVim и выполнить команду `:PackerSync`, которая загрузит все плагины и скомпилирует их, после чего нужно перезапустить NeoVim и радоваться жизни:)
#### 5. В конфиге содержатся LSP-сервера для Julia, Python, Java, CSharp. Для корректной работы JuliaLS требуется сначала выполнить следующую команду `julia --project=~/.julia/environments/nvim-lspconfig -e 'using Pkg; Pkg.add("LanguageServer")'`. Далее в `~/.julia/environments/nvim-lspconfig` поместить следующий makefile по ссылке [Makefile](https://github.com/fredrikekre/.dotfiles/blob/master/.julia/environments/nvim-lspconfig/Makefile). В этой же директории запустить `make` и дождаться создания системного образа и можно пользоваться.
#### 6. Для корректной работы PythonLS нужно только прописать в nvim `:LspInstall pyright`
#### 7. Для корректной работы JavaLS нужно только прописать в nvim `:LspInstall jdtls`
#### 8. Для корректной работы CSharpLs нужно скачать omnisharp-roslyn по ссылке [OmniSharp](https://github.com/OmniSharp/omnisharp-roslyn/releases) и разархивировать его в /usr/local/bin в папку omnisharp-roslyn. Далее сделать его исполняемым `chmod 744 /usr/local/bin/omnisharp-roslyn/*` и выдать права `chmod -R 777 /usr/local/bin/omnisharp-roslyn/*` sdfsdf.
