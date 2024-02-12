return {
  -- messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  -- custom dashboard logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
███████╗ ██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗ 
██╔════╝██╔═══██╗██║  ██║██╔══██╗██╔══██╗██╔══██╗
███████╗██║   ██║███████║███████║██████╔╝███████║
╚════██║██║   ██║██╔══██║██╔══██║██╔══██╗██╔══██║
███████║╚██████╔╝██║  ██║██║  ██║██║  ██║██║  ██║
╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  -- bufferline
  -- show only tab pages
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
}
