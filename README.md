# NeoVim configuration
#### 1. Для безошибочного запуска конфигурации нужен NeoVim-0.9.0 и выше. Можно скачать по ссылке [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
#### 2. Сначала требуется создать директорию nvim в ~/.config/, если таковой еще нет, далее склонировать туда код репозитория.
#### 3. Для загрузки всех плагинов потребуется [packer.nvim](https://github.com/wbthomason/packer.nvim). Его можно установить с помощью следующей команды:
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
#### 4. Запустить NeoVim и выполнить команду `:PackerSync`, которая загрузит все плагины и скомпилирует их, после чего нужно перезапустить NeoVim и радоваться жизни:)
