--require('rose-pine').setup({
--    disable_background = false
--})

require('tokyonight').setup({
    style = "night",
    transparent = true,
    styles = {
        floats = "transparent",
    },
})

function ColorMyPencils(color)
	--color = color or "rose-pine"
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
