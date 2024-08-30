-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function is_empty(s)
  return s == nil or s == ""
end

local function format_filepath()
  vim.cmd("highlight " .. "Italic" .. " guifg=#d1d5da" .. " gui=italic")

  local prefix = "%=%m %#Italic#"
  local filepath = "%f"

  if not is_empty(filepath) then
    return prefix .. filepath
  end
end

vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost" }, {
  group = vim.api.nvim_create_augroup("format_winbar", { clear = true }),
  callback = function()
    local winbar_filetype_exclude = {
      "neo-tree",
    }

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      vim.opt_local.winbar = nil
      return
    end

    local filepath = format_filepath()

    local status_ok, _ = pcall(vim.api.nvim_set_option_value, "winbar", filepath, {})
    if not status_ok then
      return
    end
  end,
})

-- Open Telescope in directories by default
local find_files_hijack_netrw = vim.api.nvim_create_augroup("find_files_hijack_netrw", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  once = true,
  callback = function()
    pcall(vim.api.nvim_clear_autocmds, { group = "FileExplorer" })
  end,
})
vim.api.nvim_create_autocmd("BufEnter", {
  group = find_files_hijack_netrw,
  pattern = "*",
  callback = function()
    vim.schedule(function()
      -- Early return if netrw or not a directory
      if vim.bo[0].filetype == "netrw" or vim.fn.isdirectory(vim.fn.expand("%:p")) == 0 then
        return
      end

      vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")

      require("telescope.builtin").find_files({
        cwd = vim.fn.expand("%:p:h"),
      })
    end)
  end,
})

-- Fix incorrect Elixir identation for the { character
vim.api.nvim_create_autocmd("FileType", { pattern = "elixir", command = [[setlocal indentkeys-=0{]] })

-- Fix root path visual
vim.api.nvim_set_hl(0, "NeoTreeRootName", {
  bold = false,
  italic = true,
})
