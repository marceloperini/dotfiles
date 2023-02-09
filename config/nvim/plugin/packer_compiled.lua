-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/marcelo.veloso/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/marcelo.veloso/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/marcelo.veloso/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/marcelo.veloso/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/marcelo.veloso/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
    url = "https://github.com/vim-scripts/ReplaceWithRegister"
  },
  ["agit.vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/agit.vim",
    url = "https://github.com/cohama/agit.vim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lint"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["open-browser-github.vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/open-browser-github.vim",
    url = "https://github.com/tyru/open-browser-github.vim"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["scss-syntax.vim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/scss-syntax.vim",
    url = "https://github.com/cakebaker/scss-syntax.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-js",
    url = "https://github.com/yuezk/vim-js"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-mkdir"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-mkdir",
    url = "https://github.com/pbrisbin/vim-mkdir"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rake"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-rake",
    url = "https://github.com/tpope/vim-rake"
  },
  ["vim-ruby"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-ruby",
    url = "https://github.com/vim-ruby/vim-ruby"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/marcelo.veloso/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-prettier'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-prettier'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-prettier'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-prettier'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType less ++once lua require("packer.load")({'vim-prettier'}, { ft = "less" }, _G.packer_plugins)]]
vim.cmd [[au FileType scss ++once lua require("packer.load")({'vim-prettier'}, { ft = "scss" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], false)
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], true)
vim.cmd [[source /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]]
time([[Sourcing ftdetect script at: /Users/marcelo.veloso/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
