return {
  'Mofiqul/vscode.nvim',
  config = function()
    vim.o.background = 'dark'

    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      underline_links = true,
      disable_nvimtree_bg = true,
      group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
      }
    })

    vim.cmd.colorscheme "vscode"
  end
}
