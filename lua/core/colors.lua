vim.opt.termguicolors = true

function SetColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "#120E27"})
	vim.api.nvim_set_hl(0, "Normal", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
	vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
end

kanagawa = 'kanagawa'
onedark = 'onedark'
dracula = 'dracula'
tokyonight = 'tokyonight'
nord = 'nord'
solarized = 'solarized'
gruvbox = 'gruvbox'
monokai = 'monokai'
catppuccin = 'catppuccin'
material = 'material'
nightfox = 'nightfox'
everforest = 'everforest'
ayu = 'ayu'

SetColor(kanagawa)



