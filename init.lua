-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("dap-python").setup("python")

require("lazydev").setup({
  library = { "nvim-dap-ui" },
})

require("dapui").setup({
  element_mappings = {
    stacks = {
      open = "<CR>",
      expand = "o",
    },
  },
})

require("no-neck-pain").setup({ width = 120 })

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
-- dap.listeners.before.event_terminated.dapui_config = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited.dapui_config = function()
--   dapui.close()
-- end
--
-- Use this into the repo root to use the launch json from vs code
-- lua require("dap.ext.vscode").load_launchjs(".vscode/launch.json")
