local theme = {}

local function set_groups()
	local groups = {
		Cursor = { fg = "#000000", bg = "#FFFFFF" },
		IncSearch = { fg = "#000000", bg = "#FFFFFF", italic = true },
		Search = { fg = "#000000", bg = "#FFFFFF", italic = true },
		Visual = { fg = "#000000", bg = "#FFFFFF", italic = true },
		VisualNOS = { fg = "#000000", bg = "#FFFFFF", italic = true },
		CursorColumn = { fg = "#A0A0A0", bg = "#FFFFFF" },
		CursorLine = { fg = "#A0A0A0", bg = "#FFFFFF" },
		Comment = { fg = "#A0A0A0", bg = "#000000", italic = true },
		DiffChange = { fg = "#A0A0A0", bg = "#000000" },
		DiffDelete = { fg = "#A0A0A0", bg = "#000000" },
		DiffText = { fg = "#A0A0A0", bg = "#000000" },
		Directory = { fg = "#A0A0A0", bg = "#000000" },
		Error = { fg = "#A0A0A0", bg = "#000000" },
		Folded = { fg = "#A0A0A0", bg = "#000000" },
		Function = { fg = "#A0A0A0", bg = "#000000", bold = true },
		Identifier = { fg = "#A0A0A0", bg = "#000000" },
		Ignore = { fg = "#A0A0A0", bg = "#000000" },
		Label = { fg = "#A0A0A0", bg = "#000000", bold = true },
		LineNr = { fg = "#A0A0A0", bg = "#000000" },
		MatchParen = { fg = "#A0A0A0", bg = "#000000" },
		ModeMsg = { fg = "#A0A0A0", bg = "#000000" },
		MoreMsg = { fg = "#A0A0A0", bg = "#000000" },
		NonText = { fg = "#A0A0A0", bg = "#000000" },
		Normal = { fg = "#A0A0A0", bg = "#000000" },
		PmenuSbar = { fg = "#A0A0A0", bg = "#000000" },
		PmenuSel = { fg = "#A0A0A0", bg = "#000000", italic = true },
		PmenuThumb = { fg = "#A0A0A0", bg = "#000000" },
		PreProc = { fg = "#A0A0A0", bg = "#000000", bold = true },
		Special = { fg = "#A0A0A0", bg = "#000000", bold = true },
		SpecialKey = { fg = "#A0A0A0", bg = "#000000", italic = true },
		Statement = { fg = "#A0A0A0", bg = "#000000", bold = true },
		StatusLine = { fg = "#A0A0A0", bg = "#000000", bold = true },
		StatusLineNC = { fg = "#A0A0A0", bg = "#000000", italic = true },
		StorageClass = { fg = "#A0A0A0", bg = "#000000", bold = true },
		Structure = { fg = "#A0A0A0", bg = "#000000", bold = true },
		TabLine = { fg = "#A0A0A0", bg = "#000000" },
		TabLineFill = { fg = "#A0A0A0", bg = "#000000" },
		TabLineSel = { fg = "#A0A0A0", bg = "#000000", bold = true },
		Title = { fg = "#A0A0A0", bg = "#000000" },
		Todo = { fg = "#A0A0A0", bg = "#000000", bold = true, underline = true },
		Type = { fg = "#A0A0A0", bg = "#000000", bold = true },
		TypeDef = { fg = "#A0A0A0", bg = "#000000", bold = true },
		Underlined = { fg = "#A0A0A0", bg = "#000000", underline = true },
		VertSplit = { fg = "#A0A0A0", bg = "#000000" },
		WarningMsg = { fg = "#A0A0A0", bg = "#000000" },
		WildMenu = { fg = "#A0A0A0", bg = "#000000" },
		cucumberTags = { fg = "#A0A0A0", bg = "#000000", bold = true },
		htmlTagN = { fg = "#A0A0A0", bg = "#000000", bold = true },
		rubySymbol = { fg = "#A0A0A0", bg = "#000000" },
		Constant = { fg = "#FFFFFF", bg = "#000000" },
		DiffAdd = { fg = "#FFFFFF", bg = "#000000" },
		Number = { fg = "#FFFFFF", bg = "#000000" },
		Pmenu = { fg = "#FFFFFF", bg = "#000000", bold = true },
		String = { fg = "#FFFFFF", bg = "#000000" },
	}

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function theme.colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "true-monochrome"

	set_groups()
end

return theme
