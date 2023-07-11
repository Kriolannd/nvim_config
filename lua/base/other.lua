--[[ Переменные ]]--
-- Переменная для настройки опций Neovim
-- Все время использовать vim.opt - не удобно, поэтому сделаем алиас
local opt = vim.opt

-- Глобальные переменные
-- То же самое делаем и с vim.global
local g = vim.g

--[[ Настройка панелей ]]--
-- Вертикальные сплиты становятся справа
-- По умолчанию панели в Neovim ставятся в зависимости от расположения текущей панели. Данная настройка поможет нам держать панели в порядке
opt.splitright = true

-- Горизонтальные сплиты становятся снизу
opt.splitbelow = true

--[[ Дополнительные настройки ]]--
-- Используем системный буфер обмена
opt.clipboard = 'unnamedplus'

-- Отключаем дополнение файлов в конце
opt.fixeol = false

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menuone,noselect'

-- Какое количество линий показывать над и под курсором
opt.scrolloff = 5

-- Какое количество столбцов показывать слева и справа от курсора
opt.sidescrolloff = 5

-- Кодировка
opt.encoding = 'utf-8'

-- Показывает линию курсора
opt.ruler = true

-- Установим цветовую схему
opt.termguicolors = true
vim.cmd.colorscheme 'melange'

--Показывать номер строки на боковой панели
opt.number = true

-- Отображать заголовок текущего файла
opt.title = true

-- Отображать диалоговое окно при выходе из несохраненного файла
opt.confirm = true

-- Оболочка по умолчанию
opt.shell = 'zsh' 

-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=-]]