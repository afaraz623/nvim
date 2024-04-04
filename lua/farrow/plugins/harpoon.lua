return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },

  config = function()
    local harpoon = require("harpoon").setup()

    local conf = require("telescope.config").values
    local M = {}

    M.toggle = function(harpoon_files)
      local make_finder = function()
        local paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(paths, item.value)
        end

        return require("telescope.finders").new_table({
          results = paths,
        })
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = make_finder(),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
          attach_mappings = function(prompt_buffer_number, map)
            map("i", "<C-c>", function()
              local state = require("telescope.actions.state")
              local selected_entry = state.get_selected_entry()
              local current_picker = state.get_current_picker(prompt_buffer_number)

              harpoon:list():remove_at(selected_entry.index)
              current_picker:refresh(make_finder())
            end)

            return true
          end,
        })
        :find()
    end

    vim.keymap.set("n", "<leader>he", function()
      M.toggle(harpoon:list())
    end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "Add buffer to harpoon" })

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end)

    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end)

    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end)

    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-p>", function()
      harpoon:list():prev()
    end)

    vim.keymap.set("n", "<C-n>", function()
      harpoon:list():next()
    end)
  end,
}
