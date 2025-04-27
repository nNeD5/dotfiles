return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  opts = {
    terms = {
      select_with_nil = true,

      select = function(list_item, list, _)
        if list_item == nil or vim.fn.bufloaded(list_item.value) == 0 then
          vim.cmd.term()
          local buf = vim.api.nvim_get_current_buf()
          local buf_name = vim.fn.bufname(buf)
          local new_list_item = {value = buf_name, context ={}}
          list:add(new_list_item)
        else
          local buf_nr = vim.fn.bufnr(list_item.value)
          vim.api.nvim_set_current_buf(buf_nr)
        end
      end
    },
  },

  config = function(_, opts)
    local harpoon = require("harpoon")
    harpoon.setup(opts)

    vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>j", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>k", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>l", function() harpoon:list():select(3) end)

    vim.keymap.set("n", "<leader>t", function() harpoon:list("terms"):select(1) end)
    vim.keymap.set("n", "<leader>T", function() harpoon:list("terms"):select(2) end)

    local remove_on_term_close = function(data)
      for _, term in pairs(harpoon:list("terms").items) do
        if term.value == data.file then
          harpoon:list("terms"):remove(term)
        end
      end
    end
    vim.api.nvim_create_autocmd({ "TermClose" }, {
      group = vim.api.nvim_create_augroup("auto-term-clear-grup", { clear = true }),
      desc = "clear harpoon list",
      callback = remove_on_term_close
    })
    -- vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    --   group = vim.api.nvim_create_augroup("auto-insert-grup", { clear = true }),
    --   desc = "auto insert mode when open term",
    --   pattern = "term://*",
    --   command = "startinsert"
    -- })
  end
}
