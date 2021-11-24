" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
  GuiScrollBar 1
  GuiPopupmenu 1
  GuiLinespace 2
  GuiFont InconsolataGo Nerd Font Mono:h12
endif
