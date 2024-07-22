-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	{ 'phaazon/hop.nvim' },
{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		"s1n7ax/nvim-window-picker"
		}
	},
{ 'nvim-treesitter/nvim-treesitter' },
{ 'neovim/nvim-lspconfig' },
{ 'joshdick/onedark.vim' },
{ 'hrsh7th/cmp-nvim-lsp' },
{ 'hrsh7th/cmp-buffer' },
{ 'hrsh7th/cmp-path' },
{ 'hrsh7th/cmp-cmdline' },
{ 'hrsh7th/nvim-cmp' },
{ 'williamboman/mason.nvim' },
{ 'windwp/nvim-autopairs' },
{ 'terrortylor/nvim-comment' },
{ 'lewis6991/gitsigns.nvim' },
{ 'folke/which-key.nvim' },
{ 'jose-elias-alvarez/null-ls.nvim' },
{ 'akinsho/bufferline.nvim', dependencies = {'nvim-tree/nvim-web-devicons'} },
{
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
},
{
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
}, 
{
        "github/copilot.vim",
        config = function()
            vim.g.copilot_no_tab_map = true
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
        end
},
{
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
},
})
