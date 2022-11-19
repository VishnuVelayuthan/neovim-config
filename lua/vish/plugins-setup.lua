 local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])   

local status, packer = pcall(require, "packer")

if not status then 
    return 
end

return packer.startup(function(use)

    ------- ADD PLUGINS HERE ------- 
    
    -- Plugin manager
    use("wbthomason/packer.nvim")

    -- Lua functions that plugins use
    use("nvim-lua/plenary.nvim")
    
    -- Color scheme 
    use("bluz71/vim-nightfly-guicolors") 

    -- TMUX and split window nav
    use("christoomey/vim-tmux-navigator")

    -- Maximizes and restores current window
    use("szw/vim-maximizer")

    -- Surrounds motion with character (ys{m}{c})
    use("tpope/vim-surround")

    -- Replaces text with copy register (gr{m})
    use("vim-scripts/ReplaceWithRegister")

    -- Commenting with (gc{mo})
    use("numToStr/Comment.nvim")

    -- File explorer
    use("nvim-tree/nvim-tree.lua")

    -- Icons
    use("kyazdani42/nvim-web-devicons")

    -- Status line
    use("nvim-lualine/lualine.nvim")


    
    if packer_bootstrap then
        require("packer").sync()
    end
end)
