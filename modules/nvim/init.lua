local isNixCats = vim.g[[nixCats-special-rtp-entry-nixCats]] ~= nil

if isNixCats then
  -- Boot using Nix-loaded plugins
  local lazyCat = require('nixCatsUtils.lazyCat')
  lazyCat.setup(
    require('nixCats').pawsible.allPlugins.lazy, 
    {
      spec = {
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        -- This imports your custom specs in /etc/nixos/modules/nvim/lua/plugins/*.lua
        { import = "plugins" }, 
      },
      defaults = { lazy = true },
    }
  )
else
  -- Fallback so your Neovim config still works on non-NixOS machines
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
  end
  vim.opt.rtp:prepend(lazypath)
  require("lazy").setup({
    spec = {
      { "LazyVim/LazyVim", import = "lazyvim.plugins" },
      { import = "plugins" },
    },
  })
end
