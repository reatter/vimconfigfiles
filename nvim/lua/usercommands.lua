vim.api.nvim_create_user_command(
    'Config', -- call with :Config
    function ()
        -- local config_path = require
        require('telescope.builtin').find_files({cwd="$VIMCONFIG/nvim"})
    end,
    {}
)
