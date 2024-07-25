local M = {}

function M.setup()
    local mkdp = require('markdown-preview')

    -- Установи конфигурацию, если нужно
    mkdp.setup({
        -- Включи/отключи функции или укажи параметры, если это нужно
        -- Например, изменим порт или путь для веб-сервера
        port = 8080,
        -- путь к корневому каталогу
        root = '',
        -- Включить или отключить авто-обновление
        auto_update = true,
        -- Возможность указать путь к браузеру (если нужно)
        browser = 'firefox',
    })

    -- Устанавливаем ключи для удобного открытия и закрытия превью
    vim.api.nvim_set_keymap('n', '<leader>mp', ':MarkdownPreview<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>mpd', ':MarkdownPreviewStop<CR>', { noremap = true, silent = true })
end

return M
