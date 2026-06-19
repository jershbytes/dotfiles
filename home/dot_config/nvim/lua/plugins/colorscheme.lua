return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- Use a built-in base and then fully override highlights in plain Lua.
      colorscheme = "habamax",
    },
    init = function()
      local p = {
        bg = "#1a1d2b",
        fg = "#e6e6ff",
        cursor = "#ffb86c",
        sel_bg = "#2b3147",
        sel_fg = "#f8f8f2",
        c0 = "#1a1d2b",
        c1 = "#ff6e6e",
        c2 = "#9fe870",
        c3 = "#ffd479",
        c4 = "#7aa2ff",
        c5 = "#bd93f9",
        c6 = "#63d4e6",
        c7 = "#d9dcff",
        c8 = "#4b5270",
        c9 = "#ff8a8a",
        c10 = "#b6f58f",
        c11 = "#ffe29a",
        c12 = "#9bbcff",
        c13 = "#d3b3ff",
        c14 = "#86e6f5",
        c15 = "#f8f8f2",
      }

      local function apply_custom_palette()
        local set = vim.api.nvim_set_hl

        -- Core UI
        set(0, "Normal", { fg = p.fg, bg = p.bg })
        set(0, "NormalFloat", { fg = p.fg, bg = p.bg })
        set(0, "SignColumn", { bg = p.bg })
        set(0, "LineNr", { fg = p.c8, bg = p.bg })
        set(0, "CursorLineNr", { fg = p.c3, bold = true })
        set(0, "CursorLine", { bg = p.sel_bg })
        set(0, "CursorColumn", { bg = p.sel_bg })
        set(0, "ColorColumn", { bg = p.sel_bg })
        set(0, "Visual", { fg = p.sel_fg, bg = p.sel_bg })
        set(0, "Cursor", { fg = p.bg, bg = p.cursor })
        set(0, "Pmenu", { fg = p.c7, bg = p.bg })
        set(0, "PmenuSel", { fg = p.c15, bg = p.sel_bg, bold = true })
        set(0, "Search", { fg = p.bg, bg = p.c3 })
        set(0, "IncSearch", { fg = p.bg, bg = p.c9, bold = true })
        set(0, "MatchParen", { fg = p.c15, bg = p.c8, bold = true })
        set(0, "StatusLine", { fg = p.c15, bg = p.sel_bg, bold = true })
        set(0, "StatusLineNC", { fg = p.c8, bg = p.bg })
        set(0, "WinBar", { fg = p.c7, bg = p.bg, bold = true })
        set(0, "WinBarNC", { fg = p.c8, bg = p.bg })
        set(0, "TabLine", { fg = p.c7, bg = p.bg })
        set(0, "TabLineFill", { fg = p.c8, bg = p.bg })
        set(0, "TabLineSel", { fg = p.c15, bg = p.sel_bg, bold = true })
        set(0, "VertSplit", { fg = p.sel_bg, bg = p.bg })

        -- Lualine defaults used by many setups
        set(0, "lualine_a_normal", { fg = p.bg, bg = p.c4, bold = true })
        set(0, "lualine_b_normal", { fg = p.c15, bg = p.sel_bg })
        set(0, "lualine_c_normal", { fg = p.c7, bg = p.bg })
        set(0, "lualine_a_insert", { fg = p.bg, bg = p.c2, bold = true })
        set(0, "lualine_a_visual", { fg = p.bg, bg = p.c5, bold = true })
        set(0, "lualine_a_replace", { fg = p.bg, bg = p.c1, bold = true })
        set(0, "lualine_a_command", { fg = p.bg, bg = p.c3, bold = true })

        -- Classic syntax groups
        set(0, "Comment", { fg = p.c8, italic = true })
        set(0, "String", { fg = p.c10 })
        set(0, "Character", { fg = p.c2 })
        set(0, "Number", { fg = p.c11 })
        set(0, "Boolean", { fg = p.c9, bold = true })
        set(0, "Float", { fg = p.c11 })
        set(0, "Identifier", { fg = p.c12 })
        set(0, "Function", { fg = p.c4, bold = true })
        set(0, "Keyword", { fg = p.c13, italic = true })
        set(0, "Conditional", { fg = p.c5, italic = true })
        set(0, "Repeat", { fg = p.c5, italic = true })
        set(0, "Operator", { fg = p.c14 })
        set(0, "Type", { fg = p.c6 })
        set(0, "PreProc", { fg = p.c3 })
        set(0, "Constant", { fg = p.c9 })
        set(0, "Special", { fg = p.c14 })
        set(0, "Todo", { fg = p.bg, bg = p.c3, bold = true })
        set(0, "Error", { fg = p.c1, bold = true })
        set(0, "WarningMsg", { fg = p.c3 })

        -- Treesitter and semantic highlights
        set(0, "@comment", { fg = p.c8, italic = true })
        set(0, "@string", { fg = p.c10 })
        set(0, "@string.escape", { fg = p.c14 })
        set(0, "@number", { fg = p.c11 })
        set(0, "@boolean", { fg = p.c9, bold = true })
        set(0, "@keyword", { fg = p.c13, italic = true })
        set(0, "@keyword.return", { fg = p.c5, italic = true })
        set(0, "@keyword.function", { fg = p.c5, italic = true })
        set(0, "@operator", { fg = p.c14 })
        set(0, "@type", { fg = p.c6 })
        set(0, "@type.builtin", { fg = p.c6, bold = true })
        set(0, "@function", { fg = p.c4, bold = true })
        set(0, "@function.method", { fg = p.c12, bold = true })
        set(0, "@constructor", { fg = p.c12, bold = true })
        set(0, "@variable.parameter", { fg = p.c7 })
        set(0, "@variable.member", { fg = p.c12 })
        set(0, "@property", { fg = p.c12 })
        set(0, "@constant", { fg = p.c9 })
        set(0, "@module", { fg = p.c6 })

        -- Lua-specific
        set(0, "@constructor.lua", { fg = p.c6, bold = true })
        set(0, "@keyword.lua", { fg = p.c13, italic = true })
        set(0, "@function.builtin.lua", { fg = p.c4, bold = true })

        -- TS/JS/TSX-specific
        set(0, "@property.typescript", { fg = p.c12 })
        set(0, "@property.tsx", { fg = p.c12 })
        set(0, "@variable.member.typescript", { fg = p.c12 })
        set(0, "@variable.member.tsx", { fg = p.c12 })
        set(0, "@tag", { fg = p.c4 })
        set(0, "@tag.attribute", { fg = p.c6 })

        -- Rust-specific
        set(0, "@type.rust", { fg = p.c6, bold = true })
        set(0, "@type.qualifier.rust", { fg = p.c5, italic = true })
        set(0, "@function.macro.rust", { fg = p.c14, bold = true })
        set(0, "@lsp.type.lifetime.rust", { fg = p.c3, italic = true })
        set(0, "@lsp.type.selfKeyword.rust", { fg = p.c13, italic = true })

        -- Diagnostics and git diff
        set(0, "DiagnosticError", { fg = p.c1 })
        set(0, "DiagnosticWarn", { fg = p.c3 })
        set(0, "DiagnosticInfo", { fg = p.c4 })
        set(0, "DiagnosticHint", { fg = p.c6 })
        set(0, "DiffAdd", { fg = p.c2 })
        set(0, "DiffChange", { fg = p.c4 })
        set(0, "DiffDelete", { fg = p.c1 })
        set(0, "DiffText", { fg = p.c15, bg = p.c8 })

        -- Keep your custom dashboard + plugin groups
        set(0, "DashboardRecent", { fg = p.c5 })
        set(0, "DashboardProject", { fg = p.c4 })
        set(0, "DashboardConfiguration", { fg = p.fg })
        set(0, "DashboardSession", { fg = p.c2 })
        set(0, "DashboardLazy", { fg = p.c6 })
        set(0, "DashboardServer", { fg = p.c3 })
        set(0, "DashboardQuit", { fg = p.c1 })
        set(0, "IndentBlanklineChar", { fg = p.sel_bg })
        set(0, "NeoTreeStatusLine", { link = "StatusLine" })

        set(0, "MiniHipatternsFixme", { fg = p.c0, bg = p.c1, bold = true })
        set(0, "MiniHipatternsTodo", { fg = p.c0, bg = p.c4, bold = true })
        set(0, "MiniHipatternsHack", { fg = p.c0, bg = p.c3, bold = true })
        set(0, "MiniHipatternsNote", { fg = p.c0, bg = p.c2, bold = true })
        set(0, "MiniHipatternsWip", { fg = p.c0, bg = p.c6, bold = true })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = apply_custom_palette,
      })

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = apply_custom_palette,
      })
    end,
  },
}
